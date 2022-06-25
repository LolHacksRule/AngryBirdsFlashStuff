package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2ContactListener;
   import §#I§.b2Fixture;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §3b§.b2Shape;
   import §>!Z§.b2ContactID;
   import §>!Z§.b2Manifold;
   import §>!Z§.b2ManifoldPoint;
   import §>!Z§.b2TOIInput;
   import §>!Z§.b2TimeOfImpact;
   import §>!Z§.b2WorldManifold;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §"U§:uint = 1;
      
      b2internal static var §?8§:uint = 2;
      
      b2internal static var §0V§:uint = 4;
      
      b2internal static var §[§:uint = 8;
      
      b2internal static var §'!C§:uint = 16;
      
      b2internal static var §`!T§:uint = 32;
      
      b2internal static var §]!Y§:uint = 64;
      
      private static var §case §:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || b2Contact)
         {
            §"U§ = 1;
            loop0:
            while(true)
            {
               §?8§ = 2;
               while(true)
               {
                  §0V§ = 4;
                  loop2:
                  for(; _loc1_ || b2Contact; if(_loc2_ && b2Contact)
                  {
                     continue;
                  },if(_loc2_)
                  {
                     continue loop0;
                  },§§goto(addr70))
                  {
                     §[§ = 8;
                     loop3:
                     while(true)
                     {
                        §'!C§ = 16;
                        loop4:
                        while(true)
                        {
                           §`!T§ = 32;
                           while(true)
                           {
                              §]!Y§ = 64;
                              loop6:
                              while(_loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop4;
                                    while(true)
                                    {
                                       §case § = new b2TOIInput();
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop3;
                                    return;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      b2internal var §[B§:uint;
      
      b2internal var §+!3§:b2Contact;
      
      b2internal var §=!8§:b2Contact;
      
      b2internal var §=f§:b2ContactEdge;
      
      b2internal var §!!a§:b2ContactEdge;
      
      b2internal var §]V§:b2Fixture;
      
      b2internal var §!j§:b2Fixture;
      
      b2internal var §7!l§:b2Manifold;
      
      b2internal var §%!§:b2Manifold;
      
      b2internal var §]H§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=f§ = new b2ContactEdge();
         }
         loop0:
         while(true)
         {
            this.§!!a§ = new b2ContactEdge();
            while(true)
            {
               this.§7!l§ = new b2Manifold();
               while(!_loc1_)
               {
                  continue loop0;
                  while(_loc2_ || _loc2_)
                  {
                     super();
                     if(!_loc1_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function §%!b§() : b2Manifold
      {
         return this.§7!l§;
      }
      
      public function §`@§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§]V§.GetBody();
         var _loc3_:b2Body = this.§!j§.GetBody();
         var _loc4_:b2Shape = this.§]V§.GetShape();
         var _loc5_:b2Shape = this.§!j§.GetShape();
         if(_loc7_ || _loc2_)
         {
            param1.§`!D§(this.§7!l§,_loc2_.§%J§(),_loc4_.§ !c§,_loc3_.§%J§(),_loc5_.§ !c§);
         }
      }
      
      public function §>5§() : Boolean
      {
         return (this.§[B§ & b2internal::'!C) == b2internal::'!C;
      }
      
      public function §-g§() : Boolean
      {
         return (this.§[B§ & b2internal::?8) == b2internal::?8;
      }
      
      public function §,!d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::"U;
               if(_loc2_)
               {
                  addr45:
               }
               else
               {
                  addr56:
               }
               return;
            }
            if(_loc2_)
            {
               this.§[B§ |= b2internal::"U;
            }
            §§goto(addr56);
         }
         §§goto(addr45);
      }
      
      public function §%u§() : Boolean
      {
         return (this.§[B§ & b2internal::"U) == b2internal::"U;
      }
      
      public function §@@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               this.§[B§ &= ~b2internal::`!T;
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     addr51:
                     this.§[B§ |= b2internal::`!T;
                     addr57:
                  }
                  return;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr51);
      }
      
      public function §<s§() : Boolean
      {
         return (this.§[B§ & b2internal::`!T) == b2internal::`!T;
      }
      
      public function §?!^§() : b2Contact
      {
         return this.§=!8§;
      }
      
      public function §`!a§() : b2Fixture
      {
         return this.§]V§;
      }
      
      public function §2!s§() : b2Fixture
      {
         return this.§!j§;
      }
      
      public function §+q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§[B§ |= b2internal::]!Y;
         }
      }
      
      b2internal function §2I§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || _loc3_)
         {
            this.§[B§ = b2internal::`!T;
            loop0:
            while(true)
            {
               §§push(!param1);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  addr154:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr156:
                           while(true)
                           {
                              §§push(!param2);
                              addr123:
                              while(_loc5_ || this)
                              {
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ || _loc3_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        addr79:
                        while(true)
                        {
                           §§push(param1.§%u§());
                           addr82:
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr123);
                           }
                           continue loop1;
                        }
                     }
                     addr149:
                     this.§!j§ = null;
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      b2internal function §3!r§(param1:b2ContactListener) : void
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§%!§;
         if(!_loc17_)
         {
            this.§%!§ = this.§7!l§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§7!l§ = _loc2_;
                  do
                  {
                     this.§[B§ |= b2internal::`!T;
                  }
                  while(_loc17_);
                  
                  if(!_loc18_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc3_:* = false;
                  var _loc4_:* = (this.§[B§ & b2internal::'!C) == b2internal::'!C;
                  var _loc5_:b2Body = this.§]V§.m_body;
                  var _loc6_:b2Body = this.§!j§.m_body;
                  §§push(this.§]V§.§9v§.§]I§(this.§!j§.§9v§));
                  if(_loc18_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!(_loc17_ && param1))
                  {
                     §§push(this.§[B§);
                     if(_loc18_ || param1)
                     {
                        §§push(b2internal::"U);
                        if(!_loc17_)
                        {
                           §§push(§§pop() & §§pop());
                           if(_loc18_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(_loc18_ || _loc3_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc18_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc18_ || _loc2_)
                                          {
                                             _loc8_ = this.§]V§.GetShape();
                                             _loc9_ = this.§!j§.GetShape();
                                             _loc10_ = _loc5_.§%J§();
                                             _loc11_ = _loc6_.§%J§();
                                             if(_loc18_)
                                             {
                                                §§push(b2Shape.§]I§(_loc8_,_loc10_,_loc9_,_loc11_));
                                                if(_loc18_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                _loc3_ = §§pop();
                                                addr183:
                                                §§push(this.§7!l§);
                                                if(!(_loc17_ && this))
                                                {
                                                   §§pop().§&!h§ = 0;
                                                   if(_loc18_ || _loc2_)
                                                   {
                                                      loop48:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                         loop43:
                                                         while(§§pop())
                                                         {
                                                            addr693:
                                                            this.§[B§ |= b2internal::'!C;
                                                            addr699:
                                                            if(!_loc17_)
                                                            {
                                                               loop41:
                                                               while(true)
                                                               {
                                                                  addr648:
                                                                  §§push(_loc4_);
                                                                  if(!_loc18_)
                                                                  {
                                                                     continue loop43;
                                                                  }
                                                                  addr651:
                                                                  §§push(false);
                                                                  if(!(_loc17_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc18_)
                                                                     {
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr664:
                                                                           if(§§pop())
                                                                           {
                                                                              addr665:
                                                                              §§pop();
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(true);
                                                                                    addr628:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                    }
                                                                                    loop33:
                                                                                    for(; !(_loc17_ && this); if(!(_loc18_ || _loc2_))
                                                                                    {
                                                                                       continue;
                                                                                    },if(!_loc17_)
                                                                                    {
                                                                                       §§goto(addr589);
                                                                                    },§§goto(addr648))
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      param1.EndContact(this);
                                                                                                   }
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         while((this.§[B§ & b2internal::"U) == 0)
                                                                                                         {
                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  continue loop38;
                                                                                                               }
                                                                                                               addr518:
                                                                                                               if(_loc18_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(!_loc17_)
                                                                                                                     {
                                                                                                                        param1.PreSolve(this,this.§%!§);
                                                                                                                        addr539:
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     _loc6_.SetAwake(true);
                                                                                                                     addr713:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr699);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr690:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop48;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr706:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr599:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           continue loop33;
                                                                                                                        }
                                                                                                                        §§push(true);
                                                                                                                        while(!_loc17_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           continue loop33;
                                                                                                                           if(!(_loc18_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc18_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              §§goto(addr651);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr628);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr664);
                                                                                                                     }
                                                                                                                     §§goto(addr518);
                                                                                                                  }
                                                                                                                  addr645:
                                                                                                               }
                                                                                                               §§goto(addr713);
                                                                                                            }
                                                                                                            §§goto(addr539);
                                                                                                         }
                                                                                                         return;
                                                                                                         addr502:
                                                                                                      }
                                                                                                      loop36:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            if(!(_loc17_ && _loc3_))
                                                                                                            {
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr630:
                                                                                                            while(!(_loc17_ && this))
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               continue loop36;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!(_loc17_ && this))
                                                                                                                     {
                                                                                                                        param1.BeginContact(this);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr693);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr645);
                                                                                                               }
                                                                                                               §§goto(addr599);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  §§goto(addr710);
                                                                                                                  break loop43;
                                                                                                               }
                                                                                                               continue loop41;
                                                                                                            }
                                                                                                            addr630:
                                                                                                            addr616:
                                                                                                            addr687:
                                                                                                         }
                                                                                                         §§goto(addr665);
                                                                                                      }
                                                                                                      §§goto(addr648);
                                                                                                      §§goto(addr630);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr502);
                                                                                             }
                                                                                             addr589:
                                                                                          }
                                                                                          §§goto(addr616);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr666:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr630);
                                                                           }
                                                                        }
                                                                        addr709:
                                                                        if(§§pop() != _loc4_)
                                                                        {
                                                                           §§goto(addr710);
                                                                        }
                                                                        §§goto(addr690);
                                                                     }
                                                                     §§goto(addr665);
                                                                  }
                                                                  §§goto(addr709);
                                                               }
                                                               addr701:
                                                            }
                                                            §§goto(addr706);
                                                         }
                                                         this.§[B§ &= ~b2internal::'!C;
                                                         §§goto(addr687);
                                                      }
                                                      addr201:
                                                   }
                                                   else
                                                   {
                                                      loop6:
                                                      while(true)
                                                      {
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                            loop8:
                                                            for(; !_loc17_; continue loop7)
                                                            {
                                                               if(_loc18_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(_loc18_ || _loc3_)
                                                                     {
                                                                        if(!(_loc17_ && _loc2_))
                                                                        {
                                                                           this.Evaluate();
                                                                           loop10:
                                                                           while(!(_loc17_ && _loc2_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§7!l§);
                                                                                    addr225:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§&!h§);
                                                                                       addr226:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > 0);
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             if(!(_loc17_ && param1))
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   continue;
                                                                                                }
                                                                                                loop52:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            addr373:
                                                                                                            loop22:
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               while(!_loc18_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr388:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop52;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr376:
                                                                                                               §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_.§ 5§());
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     §§push(b2Body.b2_dynamicBody);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(!§§pop());
                                                                                                                           break loop22;
                                                                                                                        }
                                                                                                                        addr334:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr383:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           addr384:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              addr385:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr386:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    §§goto(addr387);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr383:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr381:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr383);
                                                                                                                     }
                                                                                                                     addr381:
                                                                                                                  }
                                                                                                                  §§goto(addr383);
                                                                                                                  §§goto(addr376);
                                                                                                               }
                                                                                                            }
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr336:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     if(!(_loc17_ && param1))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 if(!_loc17_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    loop13:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.§5"#§());
                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             break loop8;
                                                                                                                                          }
                                                                                                                                          addr301:
                                                                                                                                       }
                                                                                                                                       break loop8;
                                                                                                                                       addr309:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc17_ && param1)
                                                                                                                                          {
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             break loop12;
                                                                                                                                          }
                                                                                                                                          §§goto(addr388);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr281:
                                                                                                                                    this.§[B§ &= ~b2internal::?8;
                                                                                                                                    break loop10;
                                                                                                                                 }
                                                                                                                                 §§goto(addr385);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr374);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr357:
                                                                                                                        }
                                                                                                                        §§goto(addr301);
                                                                                                                     }
                                                                                                                     §§goto(addr386);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr373);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr323:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr376);
                                                                                                   }
                                                                                                   §§goto(addr384);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr334);
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§[B§ |= b2internal::?8;
                                                                        §§goto(addr309);
                                                                     }
                                                                     addr303:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§7!l§);
                                                                  }
                                                                  §§goto(addr493);
                                                               }
                                                               §§goto(addr336);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr665);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr384);
                                 }
                                 §§goto(addr201);
                              }
                              else
                              {
                                 §§goto(addr381);
                                 §§push(_loc5_.§ 5§());
                              }
                              §§goto(addr381);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr383);
                     }
                     §§goto(addr381);
                  }
                  §§goto(addr323);
               }
            }
         }
         §§goto(addr60);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §&!=§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§case §);
            while(true)
            {
               §§pop().§,N§.Set(this.§]V§.GetShape());
            }
            addr113:
         }
         loop1:
         while(true)
         {
            §§push(§case §);
            loop2:
            while(true)
            {
               §§pop().§#y§.Set(this.§!j§.GetShape());
               loop3:
               while(true)
               {
                  §§push(§case §);
                  loop4:
                  for(; _loc4_; while(!(_loc3_ && param2))
                  {
                     continue loop2;
                     §§goto(addr77);
                  })
                  {
                     §§pop().§,!+§ = param1;
                     while(_loc4_)
                     {
                        if(!(_loc3_ && param1))
                        {
                           §§push(§case §);
                           continue loop4;
                        }
                        continue loop1;
                        while(!(_loc3_ && param2))
                        {
                           §§push(§case §);
                           if(_loc4_)
                           {
                              §§pop().§^b§ = b2Settings.b2_linearSlop;
                              if(!_loc3_)
                              {
                                 return b2TimeOfImpact.§6!C§(§case §);
                              }
                              continue;
                           }
                           continue loop4;
                        }
                     }
                     continue loop3;
                  }
                  §§goto(addr113);
               }
               if(_loc3_ && param2)
               {
                  continue;
               }
               §§pop().§5!v§ = param2;
               §§goto(addr70);
            }
         }
      }
   }
}
