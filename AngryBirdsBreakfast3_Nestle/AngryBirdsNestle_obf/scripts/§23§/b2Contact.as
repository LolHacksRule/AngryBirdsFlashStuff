package §23§
{
   import §!§.b2ContactID;
   import §!§.b2Manifold;
   import §!§.b2ManifoldPoint;
   import §!§.b2TOIInput;
   import §!§.b2TimeOfImpact;
   import §!§.b2WorldManifold;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2ContactListener;
   import §0"!§.b2Fixture;
   import §=!!§.b2Shape;
   import §@!E§.b2Sweep;
   import §@!E§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §@!8§:uint = 1;
      
      b2internal static var §[^§:uint = 2;
      
      b2internal static var §@F§:uint = 4;
      
      b2internal static var §+!L§:uint = 8;
      
      b2internal static var §9g§:uint = 16;
      
      b2internal static var §8o§:uint = 32;
      
      b2internal static var §!c§:uint = 64;
      
      private static var §>=§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@!8§ = 1;
            while(true)
            {
               §[^§ = 2;
               addr98:
               while(true)
               {
                  §@F§ = 4;
                  addr81:
                  while(_loc2_)
                  {
                  }
               }
            }
            addr102:
         }
         while(true)
         {
            §+!L§ = 8;
            loop4:
            while(true)
            {
               if(!_loc1_)
               {
                  §9g§ = 16;
                  while(_loc2_)
                  {
                     §8o§ = 32;
                     loop6:
                     while(true)
                     {
                        §!c§ = 64;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop6;
                        }
                        continue loop4;
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        return;
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§goto(addr102);
               }
            }
         }
      }
      
      b2internal var §1!h§:uint;
      
      b2internal var §,!>§:b2Contact;
      
      b2internal var §6!c§:b2Contact;
      
      b2internal var §81§:b2ContactEdge;
      
      b2internal var §!!'§:b2ContactEdge;
      
      b2internal var §2!k§:b2Fixture;
      
      b2internal var §4!l§:b2Fixture;
      
      b2internal var §=!u§:b2Manifold;
      
      b2internal var §,"%§:b2Manifold;
      
      b2internal var §%!U§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§81§ = new b2ContactEdge();
         }
         loop0:
         while(true)
         {
            this.§!!'§ = new b2ContactEdge();
            loop1:
            while(true)
            {
               this.§=!u§ = new b2Manifold();
               while(!_loc1_)
               {
                  this.§,"%§ = new b2Manifold();
                  continue loop1;
                  if(_loc2_)
                  {
                     return;
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function §9"#§() : b2Manifold
      {
         return this.§=!u§;
      }
      
      public function §-Y§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§2!k§.GetBody();
         var _loc3_:b2Body = this.§4!l§.GetBody();
         var _loc4_:b2Shape = this.§2!k§.GetShape();
         var _loc5_:b2Shape = this.§4!l§.GetShape();
         if(!_loc6_)
         {
            param1.§6R§(this.§=!u§,_loc2_.§%X§(),_loc4_.§>!M§,_loc3_.§%X§(),_loc5_.§>!M§);
         }
      }
      
      public function §>k§() : Boolean
      {
         return (this.§1!h§ & b2internal::9g) == b2internal::9g;
      }
      
      public function §@M§() : Boolean
      {
         return (this.§1!h§ & b2internal::[^) == b2internal::[^;
      }
      
      public function §]4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§1!h§ &= ~b2internal::@!8;
               if(!_loc3_)
               {
                  if(_loc3_ && this)
                  {
                     addr65:
                     this.§1!h§ |= b2internal::@!8;
                     addr71:
                  }
                  return;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr65);
      }
      
      public function §5!V§() : Boolean
      {
         return (this.§1!h§ & b2internal::@!8) == b2internal::@!8;
      }
      
      public function §4?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§1!h§ &= ~b2internal::8o;
               if(_loc3_)
               {
                  if(_loc2_)
                  {
                     addr61:
                     this.§1!h§ |= b2internal::8o;
                     addr67:
                  }
                  return;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr61);
      }
      
      public function §7^§() : Boolean
      {
         return (this.§1!h§ & b2internal::8o) == b2internal::8o;
      }
      
      public function §2!9§() : b2Contact
      {
         return this.§6!c§;
      }
      
      public function §6!'§() : b2Fixture
      {
         return this.§2!k§;
      }
      
      public function §]O§() : b2Fixture
      {
         return this.§4!l§;
      }
      
      public function §]!V§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!h§ |= b2internal::!c;
         }
      }
      
      b2internal function §[!2§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
            this.§1!h§ = b2internal::8o;
            while(true)
            {
               §§push(!param1);
               if(!_loc5_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop3:
                           while(!§§pop())
                           {
                              while(true)
                              {
                                 §§push(param1.§5!V§());
                                 addr83:
                                 while(!(_loc5_ && param2))
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                           }
                           addr128:
                           this.§2!k§ = null;
                           addr131:
                           addr122:
                           this.§4!l§ = null;
                           return;
                        }
                        addr126:
                     }
                  }
               }
               §§goto(addr139);
               while(!(_loc5_ && this))
               {
                  §§goto(addr126);
                  §§push(!param2);
               }
            }
         }
         §§goto(addr103);
      }
      
      b2internal function §%3§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:* = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§,"%§;
         if(!(_loc18_ && _loc3_))
         {
            this.§,"%§ = this.§=!u§;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§=!u§ = _loc2_;
               while(!_loc18_)
               {
                  this.§1!h§ |= b2internal::8o;
                  if(!(_loc18_ && this))
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc3_:* = false;
            var _loc4_:* = (this.§1!h§ & b2internal::9g) == b2internal::9g;
            var _loc5_:b2Body = this.§2!k§.m_body;
            var _loc6_:b2Body = this.§4!l§.m_body;
            §§push(this.§2!k§.§`!F§.§4I§(this.§4!l§.§`!F§));
            if(_loc17_ || param1)
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(_loc17_ || _loc3_)
            {
               §§push(this.§1!h§);
               if(!(_loc18_ && param1))
               {
                  §§push(b2internal::@!8);
                  if(_loc17_)
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc17_)
                     {
                        if(§§pop())
                        {
                           if(_loc17_)
                           {
                              §§push(_loc7_);
                              if(!_loc18_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc18_ && this))
                                    {
                                       _loc8_ = this.§2!k§.GetShape();
                                       _loc9_ = this.§4!l§.GetShape();
                                       _loc10_ = _loc5_.§%X§();
                                       _loc11_ = _loc6_.§%X§();
                                       if(!(_loc18_ && this))
                                       {
                                          §§push(b2Shape.§4I§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(!_loc18_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          addr187:
                                          §§push(this.§=!u§);
                                          if(_loc17_)
                                          {
                                             §§pop().§4!5§ = 0;
                                             if(!(_loc18_ && _loc2_))
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop23:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§1!h§ &= ~b2internal::9g;
                                                         loop24:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(false);
                                                                  if(_loc17_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr617:
                                                                        if(!(_loc17_ || this))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop45:
                                                                        while(§§pop())
                                                                        {
                                                                           if(!(_loc18_ && _loc3_))
                                                                           {
                                                                              addr633:
                                                                              if(!(_loc18_ && param1))
                                                                              {
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 loop36:
                                                                                 while(!(_loc18_ && param1))
                                                                                 {
                                                                                    loop37:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(true);
                                                                                          loop38:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!(_loc18_ && _loc3_))
                                                                                             {
                                                                                                loop43:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc17_ || param1)
                                                                                                   {
                                                                                                      addr692:
                                                                                                      if(!(_loc18_ && param1))
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            loop44:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              if(!(_loc17_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              §§push(false);
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 continue loop44;
                                                                                                                              }
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 if(_loc17_ || this)
                                                                                                                                 {
                                                                                                                                    addr608:
                                                                                                                                    §§push(§§pop() == §§pop());
                                                                                                                                    if(!(_loc17_ || param1))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr617);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          break loop36;
                                                                                                                                       }
                                                                                                                                       addr739:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr788:
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    _loc5_.SetAwake(true);
                                                                                                                                    _loc6_.SetAwake(true);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 addr718:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr719:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          param1.BeginContact(this);
                                                                                                                                          continue loop36;
                                                                                                                                       }
                                                                                                                                       continue loop43;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr608);
                                                                                                                           §§goto(addr633);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop26;
                                                                                                                     addr705:
                                                                                                                  }
                                                                                                                  continue loop45;
                                                                                                               }
                                                                                                               addr738:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr739);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr718);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr787:
                                                                                                            §§push(_loc4_);
                                                                                                         }
                                                                                                         §§goto(addr788);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr719);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr717);
                                                                                                   §§goto(addr692);
                                                                                                }
                                                                                                addr685:
                                                                                                addr716:
                                                                                             }
                                                                                             §§goto(addr705);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr685);
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    §§goto(addr716);
                                                                                    §§push(_loc3_);
                                                                                 }
                                                                                 §§goto(addr792);
                                                                              }
                                                                              §§goto(addr713);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc18_ && param1))
                                                                                 {
                                                                                    break loop45;
                                                                                 }
                                                                                 addr569:
                                                                                 if(!(_loc18_ && this))
                                                                                 {
                                                                                    §§goto(addr542);
                                                                                 }
                                                                              }
                                                                              §§goto(addr785);
                                                                              addr664:
                                                                           }
                                                                           §§goto(addr720);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§1!h§ & b2internal::@!8);
                                                                           addr551:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr552);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr738);
                                                               }
                                                            }
                                                         }
                                                         addr753:
                                                      }
                                                      while(_loc17_ || _loc3_)
                                                      {
                                                         this.§1!h§ |= b2internal::9g;
                                                         §§goto(addr770);
                                                      }
                                                      §§goto(addr789);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc6_.§4!v§());
                                                   if(!_loc18_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(b2Body.b2_dynamicBody);
                                                         if(!(_loc17_ || _loc3_))
                                                         {
                                                            break loop9;
                                                         }
                                                         §§push(§§pop() == §§pop());
                                                         loop64:
                                                         while(true)
                                                         {
                                                            if(_loc17_ || _loc2_)
                                                            {
                                                               §§push(!§§pop());
                                                               loop65:
                                                               while(true)
                                                               {
                                                                  if(_loc17_)
                                                                  {
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc17_)
                                                                        {
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 loop11:
                                                                                 for(; !_loc18_; while(_loc17_ || param1)
                                                                                 {
                                                                                 })
                                                                                 {
                                                                                    §§pop();
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_.§^F§());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc17_ || this))
                                                                                          {
                                                                                             continue loop64;
                                                                                          }
                                                                                          if(_loc17_ || _loc3_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             continue loop11;
                                                                                          }
                                                                                          addr409:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             addr410:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr412:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc5_.§^F§());
                                                                                                         addr384:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr411:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop11;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr242:
                                                                                          if(!(_loc17_ || _loc3_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr250:
                                                                                             loop50:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc18_ && param1)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr210:
                                                                                                loop52:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   if(!(_loc17_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop50;
                                                                                                   }
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      addr220:
                                                                                                      if(!(_loc17_ || _loc2_))
                                                                                                      {
                                                                                                         while(!_loc18_)
                                                                                                         {
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               addr253:
                                                                                                               while(!_loc18_)
                                                                                                               {
                                                                                                                  if(_loc18_ && param1)
                                                                                                                  {
                                                                                                                     continue loop65;
                                                                                                                  }
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(!(_loc17_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                              this.Evaluate();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 if(_loc18_ && this)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr229);
                                                                                                                              }
                                                                                                                              §§goto(addr412);
                                                                                                                              addr283:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr333:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§1!h§ |= b2internal::[^;
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              addr333:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr283);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr532);
                                                                                                                        §§push(this.§=!u§);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr384);
                                                                                                               }
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            §§goto(addr220);
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                         addr303:
                                                                                                      }
                                                                                                      if(false)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§=!u§);
                                                                                                            addr232:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().§4!5§);
                                                                                                               break loop50;
                                                                                                            }
                                                                                                         }
                                                                                                         addr229:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop53:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc12_);
                                                                                                            if(!(_loc18_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(this.§=!u§.§4!5§);
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        addr786:
                                                                                                                        §§goto(addr787);
                                                                                                                        §§push(_loc3_);
                                                                                                                     }
                                                                                                                     §§goto(addr753);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.§=!u§);
                                                                                                                     if(_loc17_ || _loc2_)
                                                                                                                     {
                                                                                                                        (_loc13_ = §§pop().§`9§[_loc12_]).§`!8§ = 0;
                                                                                                                        if(_loc17_ || _loc2_)
                                                                                                                        {
                                                                                                                           _loc13_.§;8§ = 0;
                                                                                                                        }
                                                                                                                        _loc14_ = _loc13_.m_id;
                                                                                                                        if(!(_loc18_ && param1))
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              _loc15_ = §§pop();
                                                                                                                              if(_loc17_ || this)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc15_);
                                                                                                                                 }
                                                                                                                                 addr507:
                                                                                                                              }
                                                                                                                              addr512:
                                                                                                                              _loc12_++;
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           for(; §§pop() < this.§,"%§.§4!5§; §§goto(addr507))
                                                                                                                           {
                                                                                                                              if((_loc16_ = this.§,"%§.§`9§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    _loc13_.§`!8§ = _loc16_.§`!8§;
                                                                                                                                    if(!(_loc18_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       _loc13_.§;8§ = _loc16_.§;8§;
                                                                                                                                       if(_loc18_ && param1)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              _loc15_++;
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              continue loop53;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr512);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr532:
                                                                                                                        §§pop().§4!5§ = 0;
                                                                                                                        if(_loc17_ || this)
                                                                                                                        {
                                                                                                                           §§goto(addr786);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr770);
                                                                                                               }
                                                                                                               addr552:
                                                                                                               if(§§pop() == 0)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        if(!(_loc18_ && _loc2_))
                                                                                                                        {
                                                                                                                           param1.PreSolve(this,this.§,"%§);
                                                                                                                           §§goto(addr569);
                                                                                                                        }
                                                                                                                        §§goto(addr785);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr770:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        addr770:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr569);
                                                                                                               }
                                                                                                               addr542:
                                                                                                               return;
                                                                                                            }
                                                                                                            break loop52;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr532);
                                                                                                   }
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                                §§goto(addr551);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > 0);
                                                                                                if(_loc18_ && _loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr242);
                                                                                                §§goto(addr250);
                                                                                             }
                                                                                             §§goto(addr253);
                                                                                          }
                                                                                       }
                                                                                       continue loop64;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop10;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    this.§1!h§ &= ~b2internal::[^;
                                                                                    §§goto(addr303);
                                                                                 }
                                                                                 §§goto(addr333);
                                                                              }
                                                                           }
                                                                           §§goto(addr410);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              continue loop9;
                                                                           }
                                                                           addr398:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr365);
                                                                        }
                                                                     }
                                                                     addr365:
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                      }
                                                      addr345:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(b2Body.b2_dynamicBody);
                                                         break loop9;
                                                      }
                                                      addr403:
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   §§goto(addr409);
                                                }
                                                addr405:
                                             }
                                             §§goto(addr770);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr412);
                                 }
                                 §§goto(addr187);
                              }
                              §§goto(addr249);
                           }
                           §§goto(addr333);
                        }
                        else
                        {
                           §§push(_loc5_.§4!v§());
                        }
                        §§goto(addr403);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr405);
               }
               §§goto(addr345);
            }
            §§goto(addr333);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §'>§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§>=§);
            loop0:
            while(true)
            {
               §§pop().§+!l§.Set(this.§2!k§.GetShape());
               while(true)
               {
                  §§push(§>=§);
                  loop2:
                  while(true)
                  {
                     §§pop().§!!5§.Set(this.§4!l§.GetShape());
                     loop3:
                     while(true)
                     {
                        §§push(§>=§);
                        loop4:
                        while(_loc3_)
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           §§pop().§''§ = param1;
                           loop5:
                           while(true)
                           {
                              §§push(§>=§);
                              addr72:
                              loop6:
                              while(_loc3_)
                              {
                                 §§pop().§<7§ = param2;
                                 while(_loc3_)
                                 {
                                    continue loop6;
                                    §§pop().§&V§ = b2Settings.b2_linearSlop;
                                    if(!(_loc4_ && param1))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(§>=§);
            if(!(_loc4_ && param2))
            {
               §§goto(addr35);
            }
            §§goto(addr72);
         }
         §§goto(addr69);
      }
   }
}
