package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2ContactListener;
   import §"J§.b2Fixture;
   import §%4§.b2ContactID;
   import §%4§.b2Manifold;
   import §%4§.b2ManifoldPoint;
   import §%4§.b2TOIInput;
   import §%4§.b2TimeOfImpact;
   import §%4§.b2WorldManifold;
   import §2k§.b2Shape;
   import §<!a§.b2Sweep;
   import §<!a§.b2Transform;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §&,§:uint = 1;
      
      b2internal static var §8!y§:uint = 2;
      
      b2internal static var §3Q§:uint = 4;
      
      b2internal static var §>!u§:uint = 8;
      
      b2internal static var §=!M§:uint = 16;
      
      b2internal static var §#T§:uint = 32;
      
      b2internal static var §0t§:uint = 64;
      
      private static var §5"'§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&,§ = 1;
         }
         loop0:
         while(true)
         {
            §8!y§ = 2;
            while(true)
            {
               §3Q§ = 4;
               while(true)
               {
                  §>!u§ = 8;
                  loop3:
                  while(true)
                  {
                     §=!M§ = 16;
                     addr86:
                     while(_loc2_)
                     {
                        §#T§ = 32;
                        continue loop3;
                     }
                     continue loop0;
                  }
                  while(!(_loc1_ && _loc2_))
                  {
                     §5"'§ = new b2TOIInput();
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr36);
                  }
               }
            }
         }
      }
      
      b2internal var §]!+§:uint;
      
      b2internal var §+!w§:b2Contact;
      
      b2internal var §7!'§:b2Contact;
      
      b2internal var §#=§:b2ContactEdge;
      
      b2internal var §="9§:b2ContactEdge;
      
      b2internal var §9!<§:b2Fixture;
      
      b2internal var §%,§:b2Fixture;
      
      b2internal var § !"§:b2Manifold;
      
      b2internal var §%$§:b2Manifold;
      
      b2internal var §1"8§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#=§ = new b2ContactEdge();
            while(true)
            {
               this.§="9§ = new b2ContactEdge();
            }
            addr83:
         }
         loop1:
         while(true)
         {
            this.§ !"§ = new b2Manifold();
            loop2:
            while(true)
            {
               this.§%$§ = new b2Manifold();
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
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      public function §4!V§() : b2Manifold
      {
         return this.§ !"§;
      }
      
      public function §[!d§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§9!<§.GetBody();
         var _loc3_:b2Body = this.§%,§.GetBody();
         var _loc4_:b2Shape = this.§9!<§.GetShape();
         var _loc5_:b2Shape = this.§%,§.GetShape();
         if(!(_loc6_ && param1))
         {
            param1.§&!§(this.§ !"§,_loc2_.§60§(),_loc4_.§&!$§,_loc3_.§60§(),_loc5_.§&!$§);
         }
      }
      
      public function §!j§() : Boolean
      {
         return (this.§]!+§ & b2internal::=!M) == b2internal::=!M;
      }
      
      public function §'!q§() : Boolean
      {
         return (this.§]!+§ & b2internal::8!y) == b2internal::8!y;
      }
      
      public function §#p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!param1)
            {
               this.§]!+§ &= ~b2internal::&,;
               if(!_loc2_)
               {
                  addr76:
               }
               return;
            }
            if(_loc2_ || _loc3_)
            {
               this.§]!+§ |= b2internal::&,;
            }
         }
         §§goto(addr76);
      }
      
      public function §;!g§() : Boolean
      {
         return (this.§]!+§ & b2internal::&,) == b2internal::&,;
      }
      
      public function §]!X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(!param1)
            {
               this.§]!+§ &= ~b2internal::#T;
               if(_loc3_)
               {
                  addr76:
               }
               return;
            }
            if(!(_loc3_ && param1))
            {
               this.§]!+§ |= b2internal::#T;
            }
         }
         §§goto(addr76);
      }
      
      public function §4!s§() : Boolean
      {
         return (this.§]!+§ & b2internal::#T) == b2internal::#T;
      }
      
      public function §7"3§() : b2Contact
      {
         return this.§7!'§;
      }
      
      public function §&!K§() : b2Fixture
      {
         return this.§9!<§;
      }
      
      public function § 1§() : b2Fixture
      {
         return this.§%,§;
      }
      
      public function §"N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]!+§ |= b2internal::0t;
         }
      }
      
      b2internal function §+N§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§]!+§ = b2internal::#T;
            loop0:
            while(true)
            {
               §§push(!param1);
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr131:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr130:
                     }
                     while(true)
                     {
                        loop6:
                        while(!§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§push(param1.§;!g§());
                              addr67:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr68:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop6;
                                    }
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       addr74:
                                    }
                                    else
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             this.§]!+§ |= b2internal::&,;
                                          }
                                          if(_loc5_)
                                          {
                                             if(true)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          addr75:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr124:
                                                   this.§%,§ = null;
                                                }
                                                addr108:
                                                if(_loc6_ && _loc3_)
                                                {
                                                   break loop6;
                                                }
                                                return;
                                                addr115:
                                             }
                                             if(_loc6_ && this)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          §§goto(addr131);
                                       }
                                       var _loc3_:b2Body = param1.GetBody();
                                       var _loc4_:b2Body = param2.GetBody();
                                       if(_loc5_)
                                       {
                                          addr477:
                                          §§push(_loc3_.§;!F§() != b2Body.b2_dynamicBody);
                                          if(_loc5_ || param2)
                                          {
                                             addr497:
                                             if(!§§pop())
                                             {
                                                addr498:
                                                §§pop();
                                                addr499:
                                                §§push(Boolean(_loc3_.§>S§()));
                                                if(!(_loc6_ && param1))
                                                {
                                                   addr468:
                                                   if(!§§pop())
                                                   {
                                                      addr469:
                                                      if(!_loc6_)
                                                      {
                                                         §§pop();
                                                         addr472:
                                                         §§push(_loc4_.§;!F§());
                                                         if(!_loc6_)
                                                         {
                                                            §§push(b2Body.b2_dynamicBody);
                                                            if(_loc5_ || param1)
                                                            {
                                                               addr425:
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(!§§pop());
                                                               }
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  addr432:
                                                                  §§push(§§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           addr444:
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§pop();
                                                                                 addr454:
                                                                                 §§push(_loc4_.§>S§());
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       addr384:
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc5_ || param2)
                                                                                       {
                                                                                          addr391:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr393:
                                                                                             if(_loc5_ || param2)
                                                                                             {
                                                                                                addr400:
                                                                                                this.§]!+§ |= b2internal::8!y;
                                                                                                addr361:
                                                                                                this.§9!<§ = param1;
                                                                                                this.§%,§ = param2;
                                                                                                this.§ !"§.§`!>§ = 0;
                                                                                                addr353:
                                                                                                addr406:
                                                                                                addr365:
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   this.§+!w§ = null;
                                                                                                   addr338:
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         this.§7!'§ = null;
                                                                                                         addr325:
                                                                                                         this.§#=§.§6M§ = null;
                                                                                                         addr333:
                                                                                                         addr324:
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr298:
                                                                                                            §§push(this.§#=§);
                                                                                                            §§push(null);
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               §§pop().§8!?§ = §§pop();
                                                                                                               addr306:
                                                                                                               if(_loc5_ || param2)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     addr273:
                                                                                                                     §§push(this.§#=§);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           addr278:
                                                                                                                           §§push(null);
                                                                                                                           if(!(_loc6_ && param1))
                                                                                                                           {
                                                                                                                              §§pop().§>"2§ = §§pop();
                                                                                                                              addr286:
                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(this.§#=§);
                                                                                                                                 if(!(_loc6_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(null);
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop().§;5§ = §§pop();
                                                                                                                                       addr229:
                                                                                                                                       this.§="9§.§6M§ = null;
                                                                                                                                       addr228:
                                                                                                                                       addr269:
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc5_ || this)
                                                                                                                                          {
                                                                                                                                             addr221:
                                                                                                                                             this.§="9§.§8!?§ = null;
                                                                                                                                             addr222:
                                                                                                                                             addr220:
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                addr200:
                                                                                                                                                §§push(this.§="9§);
                                                                                                                                                §§push(null);
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().§>"2§ = §§pop();
                                                                                                                                                      addr205:
                                                                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc6_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§="9§);
                                                                                                                                                               if(!(_loc6_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc5_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(null);
                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().§;5§ = §§pop();
                                                                                                                                                                           if(_loc5_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr338);
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr222);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr205);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr200);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr228);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr220);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr200);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr286);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr269);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr228);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr229);
                                                                                                                                                }
                                                                                                                                                §§goto(addr221);
                                                                                                                                             }
                                                                                                                                             §§goto(addr353);
                                                                                                                                          }
                                                                                                                                          §§goto(addr333);
                                                                                                                                       }
                                                                                                                                       §§goto(addr306);
                                                                                                                                    }
                                                                                                                                    §§goto(addr278);
                                                                                                                                 }
                                                                                                                                 §§goto(addr273);
                                                                                                                              }
                                                                                                                              §§goto(addr393);
                                                                                                                           }
                                                                                                                           §§goto(addr298);
                                                                                                                        }
                                                                                                                        §§goto(addr324);
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                  }
                                                                                                                  §§goto(addr499);
                                                                                                               }
                                                                                                               §§goto(addr333);
                                                                                                            }
                                                                                                            §§goto(addr325);
                                                                                                         }
                                                                                                         §§goto(addr472);
                                                                                                      }
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                   §§goto(addr365);
                                                                                                }
                                                                                                addr360:
                                                                                                §§goto(addr360);
                                                                                             }
                                                                                             §§goto(addr454);
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                    §§goto(addr425);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr498);
                                                                           }
                                                                           §§goto(addr469);
                                                                        }
                                                                        §§goto(addr391);
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                                  §§goto(addr468);
                                                               }
                                                               §§goto(addr498);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr477);
                                                   }
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr469);
                                             }
                                             §§goto(addr468);
                                          }
                                          §§goto(addr498);
                                       }
                                       §§goto(addr400);
                                       addr45:
                                    }
                                    §§goto(addr75);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  addr30:
                  if(_loc6_ && _loc3_)
                  {
                     continue;
                  }
                  §§push(Boolean(§§pop()));
                  if(_loc5_ || _loc3_)
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr68);
               }
            }
         }
         while(true)
         {
            this.§9!<§ = null;
            §§goto(addr124);
            §§goto(addr108);
         }
         §§goto(addr115);
      }
      
      b2internal function §]!J§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§%$§;
         if(!(_loc18_ && _loc3_))
         {
            this.§%$§ = this.§ !"§;
            loop0:
            while(true)
            {
               addr76:
               while(true)
               {
                  this.§ !"§ = _loc2_;
                  continue loop0;
               }
            }
            addr85:
         }
         while(true)
         {
            this.§]!+§ |= b2internal::#T;
            if(!(_loc17_ || _loc2_))
            {
               continue;
            }
            if(_loc17_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr85);
            }
            §§goto(addr76);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§]!+§ & b2internal::=!M) == b2internal::=!M;
         var _loc5_:b2Body = this.§9!<§.m_body;
         var _loc6_:b2Body = this.§%,§.m_body;
         §§push(this.§9!<§.§%C§.§6m§(this.§%,§.§%C§));
         if(_loc17_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(!(_loc18_ && _loc3_))
         {
            §§push(this.§]!+§);
            if(_loc17_ || _loc2_)
            {
               §§push(b2internal::&,);
               if(!_loc18_)
               {
                  §§push(§§pop() & §§pop());
                  if(!_loc18_)
                  {
                     if(§§pop())
                     {
                        if(_loc17_)
                        {
                           §§push(_loc7_);
                           if(_loc17_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc17_)
                                 {
                                    addr152:
                                    _loc8_ = this.§9!<§.GetShape();
                                    _loc9_ = this.§%,§.GetShape();
                                    _loc10_ = _loc5_.§60§();
                                    _loc11_ = _loc6_.§60§();
                                    if(_loc17_)
                                    {
                                       §§push(b2Shape.§6m§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(!(_loc18_ && param1))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                       addr187:
                                       §§push(this.§ !"§);
                                       if(_loc17_)
                                       {
                                          §§pop().§`!>§ = 0;
                                          if(!(_loc18_ && _loc3_))
                                          {
                                             loop23:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                loop24:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      this.§]!+§ &= ~b2internal::=!M;
                                                      loop25:
                                                      while(true)
                                                      {
                                                         addr713:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(false);
                                                               loop28:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc18_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop());
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 loop32:
                                                                                 while(_loc17_)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    loop33:
                                                                                    while(_loc17_ || _loc2_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             continue loop28;
                                                                                          }
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             loop35:
                                                                                             for(; _loc17_ || param1; while(true)
                                                                                             {
                                                                                                if(!(_loc17_ || _loc2_))
                                                                                                {
                                                                                                   continue loop35;
                                                                                                }
                                                                                                §§goto(addr665);
                                                                                             })
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop37:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         param1.BeginContact(this);
                                                                                                         loop38:
                                                                                                         while(!(_loc18_ && _loc2_))
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc4_);
                                                                                                                  loop40:
                                                                                                                  for(; !(_loc18_ && _loc2_); if(_loc18_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },§§push(false),if(_loc18_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue loop34;
                                                                                                                  },§§goto(addr599))
                                                                                                                  {
                                                                                                                     §§push(true);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           continue loop34;
                                                                                                                        }
                                                                                                                        continue loop35;
                                                                                                                        addr599:
                                                                                                                        if(!(_loc18_ && this))
                                                                                                                        {
                                                                                                                           addr607:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 addr616:
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    loop43:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             param1.EndContact(this);
                                                                                                                                             addr628:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr625:
                                                                                                                                       }
                                                                                                                                       loop46:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§]!+§ & b2internal::&,);
                                                                                                                                          addr536:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr537:
                                                                                                                                             if(§§pop() != 0)
                                                                                                                                             {
                                                                                                                                                break loop46;
                                                                                                                                             }
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc17_ || param1))
                                                                                                                                                   {
                                                                                                                                                      break loop43;
                                                                                                                                                   }
                                                                                                                                                   param1.PreSolve(this,this.§%$§);
                                                                                                                                                   addr554:
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc17_ || param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop37;
                                                                                                                                                         }
                                                                                                                                                         if(_loc18_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue loop32;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc3_);
                                                                                                                                                         if(!(_loc18_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue loop40;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr607);
                                                                                                                                                         addr665:
                                                                                                                                                         §§pop();
                                                                                                                                                      }
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr625);
                                                                                                                                                }
                                                                                                                                                §§goto(addr628);
                                                                                                                                             }
                                                                                                                                             §§goto(addr554);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr527:
                                                                                                                                       return;
                                                                                                                                       §§goto(addr616);
                                                                                                                                    }
                                                                                                                                    continue loop38;
                                                                                                                                    addr623:
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           continue loop35;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               addr629:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr769:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_.SetAwake(true);
                                                                                                                  break loop38;
                                                                                                               }
                                                                                                               addr769:
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_.SetAwake(true);
                                                                                                            break loop32;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr629);
                                                                                                }
                                                                                             }
                                                                                             continue loop31;
                                                                                          }
                                                                                          addr768:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr769);
                                                                                          §§goto(addr769);
                                                                                       }
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr698);
                                                                           if(_loc18_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr658);
                                                                           }
                                                                           §§goto(addr623);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr767:
                                                                        §§push(_loc4_);
                                                                     }
                                                                     §§goto(addr768);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr744);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             loop19:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc18_ && param1))
                                                {
                                                   while(true)
                                                   {
                                                      _loc12_ = §§pop();
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         if(!_loc18_)
                                                         {
                                                            if(!_loc18_)
                                                            {
                                                               if(true)
                                                               {
                                                                  addr498:
                                                                  §§push(_loc12_);
                                                                  if(_loc17_ || _loc3_)
                                                                  {
                                                                     §§push(this.§ !"§.§`!>§);
                                                                     if(!(_loc18_ && param1))
                                                                     {
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           §§push(this.§ !"§);
                                                                           if(!_loc18_)
                                                                           {
                                                                              (_loc13_ = §§pop().§5S§[_loc12_]).§8!$§ = 0;
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 _loc13_.§!""§ = 0;
                                                                              }
                                                                              _loc14_ = _loc13_.m_id;
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc17_ || _loc2_)
                                                                                 {
                                                                                    _loc15_ = §§pop();
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr492:
                                                                                       addr493:
                                                                                       if(_loc15_ >= this.§%$§.§`!>§)
                                                                                       {
                                                                                          addr497:
                                                                                          _loc12_++;
                                                                                          §§goto(addr498);
                                                                                       }
                                                                                       if((_loc16_ = this.§%$§.§5S§[_loc15_]).m_id.key == _loc14_.key)
                                                                                       {
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             _loc13_.§8!$§ = _loc16_.§8!$§;
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                _loc13_.§!""§ = _loc16_.§!""§;
                                                                                                if(!(_loc18_ && this))
                                                                                                {
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr498);
                                                                                       }
                                                                                       _loc15_++;
                                                                                       if(_loc17_ || this)
                                                                                       {
                                                                                          §§goto(addr492);
                                                                                       }
                                                                                       §§goto(addr498);
                                                                                       addr449:
                                                                                    }
                                                                                    §§goto(addr497);
                                                                                 }
                                                                                 §§goto(addr493);
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                           §§goto(addr522);
                                                                        }
                                                                        if(_loc17_)
                                                                        {
                                                                           §§goto(addr766);
                                                                        }
                                                                        §§goto(addr744);
                                                                     }
                                                                     §§goto(addr537);
                                                                  }
                                                                  break;
                                                               }
                                                               loop58:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ !"§);
                                                                  addr227:
                                                                  loop55:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§`!>§);
                                                                     addr228:
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() > 0);
                                                                        if(!(_loc18_ && param1))
                                                                        {
                                                                           if(!_loc18_)
                                                                           {
                                                                              if(_loc17_ || param1)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       break loop20;
                                                                                    }
                                                                                    addr268:
                                                                                    addr268:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop58;
                                                                                    }
                                                                                 }
                                                                                 addr247:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       addr337:
                                                                                       §§push(!§§pop());
                                                                                       loop9:
                                                                                       while(true)
                                                                                       {
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc18_ && param1))
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc17_ || this)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc6_.§>S§());
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr293:
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           break loop9;
                                                                                                                        }
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           if(_loc17_)
                                                                                                                           {
                                                                                                                              if(!_loc18_)
                                                                                                                              {
                                                                                                                                 this.§]!+§ |= b2internal::8!y;
                                                                                                                                 addr314:
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    addr252:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(_loc17_)
                                                                                                                                             {
                                                                                                                                                this.Evaluate();
                                                                                                                                                §§goto(addr268);
                                                                                                                                             }
                                                                                                                                             addr279:
                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                break loop4;
                                                                                                                                             }
                                                                                                                                             §§goto(addr314);
                                                                                                                                             addr264:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr522:
                                                                                                                                             this.§ !"§.§`!>§ = 0;
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                addr766:
                                                                                                                                                §§goto(addr767);
                                                                                                                                                §§push(_loc3_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr769);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop7:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr387:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   loop56:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr391:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.§;!F§());
                                                                                                                                                         if(_loc17_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(b2Body.b2_dynamicBody);
                                                                                                                                                            if(_loc17_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               continue loop21;
                                                                                                                                                            }
                                                                                                                                                            addr397:
                                                                                                                                                            addr397:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() == §§pop());
                                                                                                                                                               addr398:
                                                                                                                                                               loop10:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(!§§pop());
                                                                                                                                                                  addr399:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     continue loop10;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr397:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr395:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr397);
                                                                                                                                                            }
                                                                                                                                                            addr395:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr397);
                                                                                                                                                         continue loop56;
                                                                                                                                                      }
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 addr314:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr250);
                                                                                                                                    §§goto(addr279);
                                                                                                                                 }
                                                                                                                                 addr250:
                                                                                                                                 addr286:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.§>S§());
                                                                                                                                 if(!(_loc18_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(_loc17_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr390);
                                                                                                                              }
                                                                                                                              §§goto(addr375);
                                                                                                                           }
                                                                                                                           §§goto(addr391);
                                                                                                                        }
                                                                                                                        §§goto(addr314);
                                                                                                                     }
                                                                                                                     addr300:
                                                                                                                  }
                                                                                                                  §§goto(addr398);
                                                                                                               }
                                                                                                               addr293:
                                                                                                            }
                                                                                                            §§goto(addr293);
                                                                                                         }
                                                                                                         addr356:
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr300);
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                       }
                                                                                       this.§]!+§ &= ~b2internal::8!y;
                                                                                       §§goto(addr279);
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                              }
                                                                              §§goto(addr268);
                                                                           }
                                                                           §§goto(addr293);
                                                                        }
                                                                        §§goto(addr252);
                                                                        continue loop55;
                                                                     }
                                                                     continue loop19;
                                                                  }
                                                               }
                                                               §§goto(addr527);
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr536);
                                                   addr210:
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                          §§goto(addr769);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr187);
                                 }
                                 §§goto(addr286);
                              }
                              §§goto(addr187);
                           }
                           §§goto(addr390);
                        }
                        §§goto(addr152);
                     }
                     else
                     {
                        §§goto(addr395);
                        §§push(_loc5_.§;!F§());
                     }
                     §§goto(addr395);
                  }
                  §§goto(addr210);
               }
               §§goto(addr397);
            }
            §§goto(addr395);
         }
         §§goto(addr268);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §+I§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(§5"'§);
            while(true)
            {
               §§pop().§]!0§.Set(this.§9!<§.GetShape());
            }
            addr112:
         }
         while(true)
         {
            §§push(§5"'§);
            while(true)
            {
               §§pop().§&!`§.Set(this.§%,§.GetShape());
               loop3:
               while(true)
               {
                  §§push(§5"'§);
                  addr76:
                  while(true)
                  {
                     §§pop().§1!w§ = param1;
                     continue loop3;
                  }
               }
            }
         }
      }
   }
}
