package §!D§
{
   import §#]§.b2Sweep;
   import §#]§.b2Transform;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2ContactListener;
   import §48§.b2Fixture;
   import §55§.b2ContactID;
   import §55§.b2Manifold;
   import §55§.b2ManifoldPoint;
   import §55§.b2TOIInput;
   import §55§.b2TimeOfImpact;
   import §55§.b2WorldManifold;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §["2§:uint = 1;
      
      b2internal static var §1!<§:uint = 2;
      
      b2internal static var §1!t§:uint = 4;
      
      b2internal static var §?8§:uint = 8;
      
      b2internal static var §7!V§:uint = 16;
      
      b2internal static var §@5§:uint = 32;
      
      b2internal static var §;! §:uint = 64;
      
      private static var §1"3§:b2TOIInput;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §["2§ = 1;
            while(true)
            {
               §1!<§ = 2;
               addr113:
               while(true)
               {
                  §1!t§ = 4;
               }
            }
            addr117:
         }
         loop2:
         while(true)
         {
            §?8§ = 8;
            while(_loc2_)
            {
               §7!V§ = 16;
               loop4:
               while(true)
               {
                  §@5§ = 32;
                  do
                  {
                     §;! § = 64;
                     continue loop4;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  continue loop2;
               }
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr86);
            }
            §§goto(addr113);
         }
      }
      
      b2internal var §`">§:uint;
      
      b2internal var §-!Q§:b2Contact;
      
      b2internal var §%"@§:b2Contact;
      
      b2internal var §-v§:b2ContactEdge;
      
      b2internal var §1a§:b2ContactEdge;
      
      b2internal var §3t§:b2Fixture;
      
      b2internal var §?!p§:b2Fixture;
      
      b2internal var §@! §:b2Manifold;
      
      b2internal var §]""§:b2Manifold;
      
      b2internal var §`!>§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-v§ = new b2ContactEdge();
         }
         while(true)
         {
            this.§1a§ = new b2ContactEdge();
            loop1:
            while(true)
            {
               this.§@! § = new b2Manifold();
               do
               {
                  this.§]""§ = new b2Manifold();
                  continue loop1;
               }
               while(_loc2_ && this);
               
               return;
            }
         }
      }
      
      public function §1t§() : b2Manifold
      {
         return this.§@! §;
      }
      
      public function §!!c§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§3t§.GetBody();
         var _loc3_:b2Body = this.§?!p§.GetBody();
         var _loc4_:b2Shape = this.§3t§.GetShape();
         var _loc5_:b2Shape = this.§?!p§.GetShape();
         if(_loc7_)
         {
            param1.§`!r§(this.§@! §,_loc2_.GetTransform(),_loc4_.§%I§,_loc3_.GetTransform(),_loc5_.§%I§);
         }
      }
      
      public function §[l§() : Boolean
      {
         return (this.§`">§ & b2internal::7!V) == b2internal::7!V;
      }
      
      public function §^O§() : Boolean
      {
         return (this.§`">§ & b2internal::1!<) == b2internal::1!<;
      }
      
      public function §>B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!param1)
            {
               this.§`">§ &= ~b2internal::["2;
               if(!(_loc2_ && this))
               {
                  addr66:
               }
               else
               {
                  addr82:
               }
               return;
            }
            if(_loc3_ || _loc3_)
            {
               this.§`">§ |= b2internal::["2;
            }
            §§goto(addr82);
         }
         §§goto(addr66);
      }
      
      public function § !,§() : Boolean
      {
         return (this.§`">§ & b2internal::["2) == b2internal::["2;
      }
      
      public function §2s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§`">§ &= ~b2internal::@5;
               if(!(_loc3_ || this))
               {
                  addr77:
               }
               return;
            }
            if(!(_loc2_ && param1))
            {
               this.§`">§ |= b2internal::@5;
            }
         }
         §§goto(addr77);
      }
      
      public function §#e§() : Boolean
      {
         return (this.§`">§ & b2internal::@5) == b2internal::@5;
      }
      
      public function §8!+§() : b2Contact
      {
         return this.§%"@§;
      }
      
      public function §5§() : b2Fixture
      {
         return this.§3t§;
      }
      
      public function §]h§() : b2Fixture
      {
         return this.§?!p§;
      }
      
      public function §6"F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§`">§ |= b2internal::;! ;
         }
      }
      
      b2internal function §<t§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§`">§ = b2internal::@5;
            loop0:
            while(true)
            {
               §§push(!param1);
               while(true)
               {
                  §§push(§§pop());
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
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc6_ && this))
                              {
                                 this.§3t§ = null;
                                 break;
                              }
                              break;
                           }
                           addr63:
                           while(true)
                           {
                              §§push(param1.§ !,§());
                              continue loop6;
                           }
                           continue loop0;
                        }
                        this.§?!p§ = null;
                        §§goto(addr108);
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      b2internal function §?"!§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§]""§;
         if(!(_loc17_ && _loc3_))
         {
            this.§]""§ = this.§@! §;
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§@! § = _loc2_;
               while(_loc18_)
               {
                  this.§`">§ |= b2internal::@5;
                  if(!(_loc17_ && _loc2_))
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
            var _loc4_:* = (this.§`">§ & b2internal::7!V) == b2internal::7!V;
            var _loc5_:b2Body = this.§3t§.m_body;
            var _loc6_:b2Body = this.§?!p§.m_body;
            §§push(this.§3t§.§#M§.§3§(this.§?!p§.§#M§));
            if(!(_loc17_ && this))
            {
               §§push(Boolean(§§pop()));
            }
            var _loc7_:* = §§pop();
            if(!(_loc17_ && _loc2_))
            {
               §§push(this.§`">§);
               if(_loc18_)
               {
                  §§push(b2internal::["2);
                  if(!(_loc17_ && _loc2_))
                  {
                     §§push(§§pop() & §§pop());
                     if(_loc18_ || _loc2_)
                     {
                        if(§§pop())
                        {
                           if(!_loc17_)
                           {
                              §§push(_loc7_);
                              if(!(_loc17_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc17_)
                                    {
                                       _loc8_ = this.§3t§.GetShape();
                                       _loc9_ = this.§?!p§.GetShape();
                                       _loc10_ = _loc5_.GetTransform();
                                       _loc11_ = _loc6_.GetTransform();
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          §§push(b2Shape.§3§(_loc8_,_loc10_,_loc9_,_loc11_));
                                          if(!(_loc17_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          _loc3_ = §§pop();
                                          addr198:
                                          §§push(this.§@! §);
                                          if(!_loc17_)
                                          {
                                             §§pop().§^M§ = 0;
                                             if(!(_loc17_ && param1))
                                             {
                                                loop26:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   loop27:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§`">§ &= ~b2internal::7!V;
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(_loc18_ || this)
                                                            {
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_);
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     §§push(false);
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop33:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop35:
                                                                                    while(_loc18_)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       loop36:
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          if(!_loc18_)
                                                                                          {
                                                                                             continue loop30;
                                                                                          }
                                                                                          §§push(true);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                          }
                                                                                          addr612:
                                                                                          if(!(_loc17_ && _loc3_))
                                                                                          {
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop45:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(!(_loc17_ && param1))
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc18_ || this)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               §§push(false);
                                                                                                               if(!(_loc17_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr564:
                                                                                                                        §§push(§§pop() == §§pop());
                                                                                                                        if(!(_loc18_ || param1))
                                                                                                                        {
                                                                                                                           loop44:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 §§goto(addr612);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr643:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(!_loc17_)
                                                                                                                                       {
                                                                                                                                          param1.BeginContact(this);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             addr588:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                addr590:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(true);
                                                                                                                                                   if(!(_loc17_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!_loc18_)
                                                                                                                                                      {
                                                                                                                                                         continue loop44;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      while(_loc18_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop44;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr580);
                                                                                                                                                      }
                                                                                                                                                      continue loop33;
                                                                                                                                                      addr602:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr602);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr704);
                                                                                                                                       addr644:
                                                                                                                                    }
                                                                                                                                    §§goto(addr588);
                                                                                                                                 }
                                                                                                                                 addr643:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        if(!(_loc18_ || _loc3_))
                                                                                                                        {
                                                                                                                           continue loop34;
                                                                                                                        }
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr580:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    param1.EndContact(this);
                                                                                                                                    addr585:
                                                                                                                                    while(!_loc17_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    continue loop45;
                                                                                                                                 }
                                                                                                                                 addr582:
                                                                                                                              }
                                                                                                                              loop48:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§`">§ & b2internal::["2);
                                                                                                                                 addr517:
                                                                                                                                 while(§§pop() == 0)
                                                                                                                                 {
                                                                                                                                    if(!_loc17_)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          param1.PreSolve(this,this.§]""§);
                                                                                                                                          addr528:
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                break loop48;
                                                                                                                                             }
                                                                                                                                             addr691:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§`">§ |= b2internal::7!V;
                                                                                                                                                addr697:
                                                                                                                                                addr718:
                                                                                                                                                while(_loc18_)
                                                                                                                                                {
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                                addr718:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc6_.SetAwake(true);
                                                                                                                                                   addr704:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr582);
                                                                                                                                       }
                                                                                                                                       §§goto(addr585);
                                                                                                                                    }
                                                                                                                                    §§goto(addr528);
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              return;
                                                                                                                           }
                                                                                                                           addr580:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr707:
                                                                                                                           if(§§pop() == _loc4_)
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           if(!(_loc17_ && this))
                                                                                                                           {
                                                                                                                              _loc5_.SetAwake(true);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr718);
                                                                                                                        §§goto(addr580);
                                                                                                                     }
                                                                                                                     §§goto(addr707);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr641);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr602);
                                                                                                            }
                                                                                                            §§goto(addr590);
                                                                                                         }
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      §§goto(addr644);
                                                                                                   }
                                                                                                   §§goto(addr649);
                                                                                                }
                                                                                                continue loop35;
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                       }
                                                                                       continue loop32;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr643);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr697);
                                                         }
                                                      }
                                                      §§goto(addr691);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc5_.§^!O§());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!_loc17_)
                                                      {
                                                         if(!(_loc17_ && _loc2_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop15:
                                                                  while(_loc18_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr377:
                                                                           loop59:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc6_.§"r§());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(b2Body.b2_dynamicBody);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc18_ || param1))
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          addr324:
                                                                                          §§push(!§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             loop18:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr333:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc17_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop59;
                                                                                                            }
                                                                                                            if(_loc17_ && _loc2_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc6_.§^!O§());
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop59;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         this.§`">§ &= ~b2internal::1!<;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc17_ && param1))
                                                                                                            {
                                                                                                               addr284:
                                                                                                               loop4:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  loop5:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.Evaluate();
                                                                                                                           loop7:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§@! §);
                                                                                                                                 addr240:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().§^M§);
                                                                                                                                    loop9:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > 0);
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          if(!_loc17_)
                                                                                                                                          {
                                                                                                                                             if(_loc17_)
                                                                                                                                             {
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                addr300:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc18_)
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      continue loop9;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr333);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§`">§ |= b2internal::1!<;
                                                                                                                                                   addr306:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr300:
                                                                                                                                                addr252:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(!§§pop());
                                                                                                                                                   addr385:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      break loop15;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr384:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop5;
                                                                                                                                    }
                                                                                                                                    §§goto(addr288);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(this.§@! §);
                                                                                                                     }
                                                                                                                     §§goto(addr503);
                                                                                                                  }
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr306);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr300);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop15;
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr316:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr383:
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr381:
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr381:
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr325);
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  addr387:
                                                                  §§pop();
                                                                  continue loop11;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr385);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                }
                                             }
                                             §§goto(addr718);
                                          }
                                          §§goto(addr240);
                                       }
                                       §§goto(addr198);
                                    }
                                    §§goto(addr306);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr332);
                           }
                           §§goto(addr377);
                        }
                        else
                        {
                           §§goto(addr381);
                           §§push(_loc5_.§"r§());
                        }
                        §§goto(addr381);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr316);
               }
               §§goto(addr381);
            }
            §§goto(addr357);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §7!M§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§1"3§);
            loop0:
            while(true)
            {
               §§pop().§7!p§.Set(this.§3t§.GetShape());
               loop1:
               while(true)
               {
                  §§push(§1"3§);
                  while(true)
                  {
                     §§pop().§["@§.Set(this.§?!p§.GetShape());
                     addr111:
                     while(true)
                     {
                        §§push(§1"3§);
                        continue loop0;
                     }
                     loop6:
                     for(; _loc4_ || this; §§push(§1"3§),if(_loc3_)
                     {
                        continue;
                     },if(_loc3_)
                     {
                        continue loop0;
                     },§§goto(addr33))
                     {
                        §§pop().§8x§ = param2;
                        while(!_loc3_)
                        {
                           continue loop6;
                           §§pop().§42§ = b2Settings.b2_linearSlop;
                           if(_loc4_ || this)
                           {
                              addr43:
                              if(_loc4_ || _loc3_)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    continue loop6;
                                    §§goto(addr43);
                                 }
                                 addr103:
                              }
                              return b2TimeOfImpact.§2z§(§1"3§);
                           }
                        }
                        §§goto(addr111);
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
   }
}
