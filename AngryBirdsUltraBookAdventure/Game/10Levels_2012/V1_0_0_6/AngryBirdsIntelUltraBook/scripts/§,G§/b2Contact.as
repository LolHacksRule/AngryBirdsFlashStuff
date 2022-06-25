package §,G§
{
   import §#V§.b2Body;
   import §#V§.b2ContactListener;
   import §#V§.b2Fixture;
   import §,C§.b2Shape;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2ContactID;
   import §8w§.b2Manifold;
   import §8w§.b2ManifoldPoint;
   import §8w§.b2TOIInput;
   import §8w§.b2TimeOfImpact;
   import §8w§.b2WorldManifold;
   import §;%§.b2Sweep;
   import §;%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §4!7§:uint = 1;
      
      b2internal static var §<`§:uint = 2;
      
      b2internal static var §6!I§:uint = 4;
      
      b2internal static var §use §:uint = 8;
      
      b2internal static var §@'§:uint = 16;
      
      b2internal static var §;!2§:uint = 32;
      
      b2internal static var §%P§:uint = 64;
      
      private static var §;U§:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §4!7§ = 1;
            loop0:
            while(true)
            {
               §<`§ = 2;
               while(true)
               {
                  §6!I§ = 4;
                  while(_loc1_ || _loc1_)
                  {
                     §%P§ = 64;
                     loop6:
                     while(_loc1_)
                     {
                        §;U§ = new b2TOIInput();
                        if(!_loc2_)
                        {
                           addr30:
                           if(_loc2_ && _loc2_)
                           {
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    §;!2§ = 32;
                                    break loop6;
                                 }
                                 break;
                                 §§goto(addr30);
                              }
                              while(_loc1_)
                              {
                                 §@'§ = 16;
                                 §§goto(addr88);
                              }
                              addr88:
                              while(true)
                              {
                                 §use § = 8;
                                 §§goto(addr95);
                              }
                           }
                           else
                           {
                              addr54:
                              addr102:
                           }
                           continue loop0;
                           addr95:
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      b2internal var §]!p§:uint;
      
      b2internal var §[2§:b2Contact;
      
      b2internal var §@o§:b2Contact;
      
      b2internal var §'"§:b2ContactEdge;
      
      b2internal var §=`§:b2ContactEdge;
      
      b2internal var §3t§:b2Fixture;
      
      b2internal var §[i§:b2Fixture;
      
      b2internal var §2?§:b2Manifold;
      
      b2internal var §8J§:b2Manifold;
      
      b2internal var §`!U§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§'"§ = new b2ContactEdge();
            while(true)
            {
               this.§=`§ = new b2ContactEdge();
            }
            addr87:
         }
         loop1:
         while(true)
         {
            this.§2?§ = new b2Manifold();
            while(!(_loc2_ && _loc2_))
            {
               this.§8J§ = new b2Manifold();
               while(!_loc2_)
               {
                  super();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break loop1;
                  }
                  §§goto(addr87);
               }
            }
         }
      }
      
      public function §0+§() : b2Manifold
      {
         return this.§2?§;
      }
      
      public function §43§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:b2Body = this.§3t§.GetBody();
         var _loc3_:b2Body = this.§[i§.GetBody();
         var _loc4_:b2Shape = this.§3t§.GetShape();
         var _loc5_:b2Shape = this.§[i§.GetShape();
         if(_loc6_)
         {
            param1.§'K§(this.§2?§,_loc2_.§7§(),_loc4_.§?!X§,_loc3_.§7§(),_loc5_.§?!X§);
         }
      }
      
      public function §]i§() : Boolean
      {
         return (this.§]!p§ & b2internal::@') == b2internal::@';
      }
      
      public function §;!u§() : Boolean
      {
         return (this.§]!p§ & b2internal::<`) == b2internal::<`;
      }
      
      public function §#=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(!param1)
            {
               this.§]!p§ &= ~b2internal::4!7;
               if(_loc2_ || this)
               {
                  if(_loc3_)
                  {
                     addr70:
                     this.§]!p§ |= b2internal::4!7;
                     addr76:
                  }
                  return;
               }
               §§goto(addr76);
            }
         }
         §§goto(addr70);
      }
      
      public function §0S§() : Boolean
      {
         return (this.§]!p§ & b2internal::4!7) == b2internal::4!7;
      }
      
      public function §'>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               this.§]!p§ &= ~b2internal::;!2;
               if(!(_loc2_ && param1))
               {
                  if(!(_loc3_ || this))
                  {
                     addr71:
                     this.§]!p§ |= b2internal::;!2;
                     addr77:
                  }
                  else
                  {
                     addr68:
                  }
                  return;
               }
               §§goto(addr77);
            }
            §§goto(addr71);
         }
         §§goto(addr68);
      }
      
      public function §;!R§() : Boolean
      {
         return (this.§]!p§ & b2internal::;!2) == b2internal::;!2;
      }
      
      public function §>H§() : b2Contact
      {
         return this.§@o§;
      }
      
      public function §68§() : b2Fixture
      {
         return this.§3t§;
      }
      
      public function §[t§() : b2Fixture
      {
         return this.§[i§;
      }
      
      public function §9!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§]!p§ |= b2internal::%P;
         }
      }
      
      b2internal function §@!b§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§]!p§ = b2internal::;!2;
         }
         loop0:
         while(true)
         {
            §§push(!param1);
            loop1:
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
                        addr146:
                        while(true)
                        {
                           §§push(!param2);
                        }
                     }
                     addr145:
                  }
                  while(true)
                  {
                     loop6:
                     while(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(param1.§0S§());
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc6_)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    if(!§§pop())
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(_loc5_)
                                             {
                                                this.§]!p§ |= b2internal::4!7;
                                             }
                                             else
                                             {
                                                §§goto(addr146);
                                             }
                                          }
                                          if(!(_loc5_ || param1))
                                          {
                                             while(!(_loc6_ && this))
                                             {
                                                if(_loc6_ && param1)
                                                {
                                                   this.§[i§ = null;
                                                   break;
                                                }
                                                addr139:
                                                continue loop0;
                                                §§pop();
                                             }
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                break loop6;
                                             }
                                             return;
                                          }
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop7;
                                          }
                                          if(false)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       var _loc3_:b2Body = param1.GetBody();
                                       var _loc4_:b2Body = param2.GetBody();
                                       if(!_loc6_)
                                       {
                                          addr487:
                                          §§push(_loc3_.§'!_§() != b2Body.b2_dynamicBody);
                                          if(!_loc6_)
                                          {
                                             addr492:
                                             if(!§§pop())
                                             {
                                                addr493:
                                                §§pop();
                                                addr494:
                                                §§push(_loc3_.§'a§());
                                                if(!_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      addr471:
                                                      §§push(Boolean(§§pop()));
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            addr474:
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§pop();
                                                               addr482:
                                                               §§push(_loc4_.§'!_§());
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(b2Body.b2_dynamicBody);
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr432:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr435:
                                                                        §§push(!§§pop());
                                                                        if(_loc5_)
                                                                        {
                                                                           addr437:
                                                                           §§push(§§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 addr442:
                                                                                 §§pop();
                                                                                 addr443:
                                                                                 if(_loc5_ || param2)
                                                                                 {
                                                                                    §§push(_loc4_.§'a§());
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr392:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                addr396:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr398:
                                                                                                   this.§]!p§ |= b2internal::<`;
                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                   {
                                                                                                      addr374:
                                                                                                      this.§3t§ = param1;
                                                                                                      this.§[i§ = param2;
                                                                                                      this.§2?§.§2V§ = 0;
                                                                                                      addr373:
                                                                                                      addr378:
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         this.§[2§ = null;
                                                                                                         this.§@o§ = null;
                                                                                                         addr342:
                                                                                                         this.§'"§.§80§ = null;
                                                                                                         addr355:
                                                                                                         addr341:
                                                                                                         addr350:
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            addr322:
                                                                                                            this.§'"§.§%E§ = null;
                                                                                                            addr323:
                                                                                                            addr321:
                                                                                                            if(_loc5_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param2))
                                                                                                               {
                                                                                                                  addr304:
                                                                                                                  §§push(this.§'"§);
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     addr307:
                                                                                                                     §§push(null);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§pop().§#!R§ = §§pop();
                                                                                                                        addr310:
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           §§push(this.§'"§);
                                                                                                                           if(_loc5_ || param2)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(null);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && param2))
                                                                                                                                    {
                                                                                                                                       §§pop().§9"§ = §§pop();
                                                                                                                                       addr266:
                                                                                                                                       this.§=`§.§80§ = null;
                                                                                                                                       addr265:
                                                                                                                                       addr300:
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ && param1))
                                                                                                                                          {
                                                                                                                                             addr244:
                                                                                                                                             this.§=`§.§%E§ = null;
                                                                                                                                             addr243:
                                                                                                                                             if(_loc5_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr214:
                                                                                                                                                      this.§=`§.§#!R§ = null;
                                                                                                                                                      addr215:
                                                                                                                                                      addr213:
                                                                                                                                                      if(_loc5_ || param1)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§=`§);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(null);
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc6_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().§9"§ = §§pop();
                                                                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc5_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr398);
                                                                                                                                                                                    }
                                                                                                                                                                                    return;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr355);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr215);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr266);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr244);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr214);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr265);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr243);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr213);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr373);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr244);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr378);
                                                                                                                                                }
                                                                                                                                                §§goto(addr300);
                                                                                                                                             }
                                                                                                                                             §§goto(addr266);
                                                                                                                                          }
                                                                                                                                          §§goto(addr355);
                                                                                                                                       }
                                                                                                                                       §§goto(addr310);
                                                                                                                                    }
                                                                                                                                    §§goto(addr342);
                                                                                                                                 }
                                                                                                                                 §§goto(addr307);
                                                                                                                              }
                                                                                                                              §§goto(addr341);
                                                                                                                           }
                                                                                                                           §§goto(addr304);
                                                                                                                        }
                                                                                                                        §§goto(addr323);
                                                                                                                     }
                                                                                                                     §§goto(addr322);
                                                                                                                  }
                                                                                                                  §§goto(addr321);
                                                                                                               }
                                                                                                               §§goto(addr373);
                                                                                                            }
                                                                                                            §§goto(addr350);
                                                                                                         }
                                                                                                         §§goto(addr443);
                                                                                                      }
                                                                                                      §§goto(addr398);
                                                                                                      addr411:
                                                                                                   }
                                                                                                   §§goto(addr482);
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                             §§goto(addr435);
                                                                                          }
                                                                                          §§goto(addr442);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 }
                                                                                 §§goto(addr494);
                                                                              }
                                                                              §§goto(addr396);
                                                                           }
                                                                           §§goto(addr471);
                                                                        }
                                                                        §§goto(addr474);
                                                                     }
                                                                     §§goto(addr471);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr487);
                                                         }
                                                         §§goto(addr437);
                                                      }
                                                      §§goto(addr492);
                                                   }
                                                   §§goto(addr493);
                                                }
                                                §§goto(addr474);
                                             }
                                             §§goto(addr471);
                                          }
                                          §§goto(addr493);
                                       }
                                       §§goto(addr411);
                                       addr32:
                                       if(!(_loc5_ || _loc3_))
                                       {
                                          break;
                                       }
                                       if(_loc5_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr145);
                                    }
                                    continue;
                                 }
                                 continue loop6;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     this.§3t§ = null;
                     §§goto(addr139);
                  }
               }
            }
         }
      }
      
      b2internal function §8!s§(param1:b2ContactListener) : void
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
         var _loc15_:* = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§8J§;
         if(_loc18_)
         {
            this.§8J§ = this.§2?§;
            loop0:
            while(true)
            {
               addr60:
               while(true)
               {
                  this.§2?§ = _loc2_;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§]!p§ |= b2internal::;!2;
            if(!_loc17_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr60);
            }
            §§goto(addr64);
         }
         var _loc3_:* = false;
         var _loc4_:* = (this.§]!p§ & b2internal::@') == b2internal::@';
         var _loc5_:b2Body = this.§3t§.m_body;
         var _loc6_:b2Body = this.§[i§.m_body;
         §§push(this.§3t§.each.§3!V§(this.§[i§.each));
         if(_loc18_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc7_:* = §§pop();
         if(_loc18_ || _loc2_)
         {
            §§push(this.§]!p§);
            if(_loc18_ || _loc3_)
            {
               §§push(b2internal::4!7);
               if(_loc18_ || param1)
               {
                  §§push(§§pop() & §§pop());
                  if(!(_loc17_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc17_ && this))
                        {
                           §§push(_loc7_);
                           if(_loc18_)
                           {
                              if(§§pop())
                              {
                                 addr376:
                                 if(!_loc17_)
                                 {
                                    _loc8_ = this.§3t§.GetShape();
                                    _loc9_ = this.§[i§.GetShape();
                                    _loc10_ = _loc5_.§7§();
                                    _loc11_ = _loc6_.§7§();
                                    if(_loc18_ || this)
                                    {
                                       §§push(b2Shape.§3!V§(_loc8_,_loc10_,_loc9_,_loc11_));
                                       if(!_loc17_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                    }
                                 }
                                 loop63:
                                 while(true)
                                 {
                                    §§push(_loc6_.§'a§());
                                    if(_loc18_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       if(!(_loc17_ && param1))
                                       {
                                          loop10:
                                          while(§§pop())
                                          {
                                             addr312:
                                             if(_loc18_)
                                             {
                                                this.§]!p§ |= b2internal::<`;
                                                loop4:
                                                while(true)
                                                {
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc17_ && param1)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!_loc17_)
                                                         {
                                                            if(!_loc17_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!(_loc17_ && _loc3_))
                                                                  {
                                                                     if(!_loc17_)
                                                                     {
                                                                        this.Evaluate();
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr312);
                                                                     }
                                                                     loop11:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_.§'a§());
                                                                        addr380:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr391:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr392:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_.§'!_§());
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                      if(!(_loc17_ && _loc2_))
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() == §§pop());
                                                                                                            addr336:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  continue loop12;
                                                                                                               }
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  if(!(_loc17_ && _loc2_))
                                                                                                                  {
                                                                                                                     break loop14;
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr335:
                                                                                                      }
                                                                                                   }
                                                                                                   addr326:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(b2Body.b2_dynamicBody);
                                                                                                   }
                                                                                                   addr396:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   addr399:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr400:
                                                                                                      §§push(!§§pop());
                                                                                                      §§push(!§§pop());
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr391:
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr399);
                                                                           }
                                                                           §§pop();
                                                                           continue loop63;
                                                                        }
                                                                     }
                                                                     addr403:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr234:
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§2?§);
                                                                        addr237:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§2V§);
                                                                           addr238:
                                                                           loop57:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > 0);
                                                                              if(!_loc18_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(_loc18_)
                                                                              {
                                                                                 if(_loc18_ || param1)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    while(!(_loc17_ && param1))
                                                                                    {
                                                                                       continue loop57;
                                                                                    }
                                                                                    continue loop4;
                                                                                    addr252:
                                                                                 }
                                                                                 §§goto(addr380);
                                                                              }
                                                                              §§goto(addr368);
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     if(!(_loc18_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc17_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     if(_loc17_ && _loc3_)
                                                                     {
                                                                        continue loop63;
                                                                     }
                                                                     if(!(_loc17_ && _loc3_))
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr234);
                                                                        }
                                                                        addr489:
                                                                        §§push(_loc12_);
                                                                        if(!_loc17_)
                                                                        {
                                                                           §§push(this.§2?§.§2V§);
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 §§push(this.§2?§);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    (_loc13_ = §§pop().§4!a§[_loc12_]).§-!s§ = 0;
                                                                                    if(!(_loc17_ && param1))
                                                                                    {
                                                                                       _loc13_.§%%§ = 0;
                                                                                    }
                                                                                    _loc14_ = _loc13_.m_id;
                                                                                    if(!(_loc17_ && _loc2_))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          _loc15_ = §§pop();
                                                                                          if(!(_loc17_ && _loc2_))
                                                                                          {
                                                                                             addr483:
                                                                                             addr484:
                                                                                             if(_loc15_ >= this.§8J§.§2V§)
                                                                                             {
                                                                                                addr488:
                                                                                                _loc12_++;
                                                                                                §§goto(addr489);
                                                                                             }
                                                                                             if((_loc16_ = this.§8J§.§4!a§[_loc15_]).m_id.key == _loc14_.key)
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   _loc13_.§-!s§ = _loc16_.§-!s§;
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      _loc13_.§%%§ = _loc16_.§%%§;
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         §§goto(addr488);
                                                                                                      }
                                                                                                      §§goto(addr483);
                                                                                                   }
                                                                                                   §§goto(addr489);
                                                                                                }
                                                                                                §§goto(addr483);
                                                                                             }
                                                                                             _loc15_++;
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                §§goto(addr483);
                                                                                             }
                                                                                             §§goto(addr489);
                                                                                             addr450:
                                                                                          }
                                                                                          §§goto(addr488);
                                                                                       }
                                                                                       §§goto(addr484);
                                                                                    }
                                                                                    §§goto(addr450);
                                                                                 }
                                                                                 addr508:
                                                                                 §§pop().§2V§ = 0;
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr718:
                                                                                    if(_loc3_ != _loc4_)
                                                                                    {
                                                                                       addr720:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_.SetAwake(true);
                                                                                          addr723:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc6_.SetAwake(true);
                                                                                             addr716:
                                                                                             while(true)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr720:
                                                                                    }
                                                                                    loop51:
                                                                                    while(true)
                                                                                    {
                                                                                       addr701:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.§]!p§ &= ~b2internal::@';
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      loop24:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc4_);
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(false);
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  loop28:
                                                                                                                  while(!_loc17_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        loop29:
                                                                                                                        while(_loc18_ || param1)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           loop30:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(_loc18_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       continue loop25;
                                                                                                                                    }
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       while(!(_loc17_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                       addr642:
                                                                                                                                    }
                                                                                                                                    §§goto(addr718);
                                                                                                                                 }
                                                                                                                                 while(!_loc17_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 continue loop29;
                                                                                                                                 addr650:
                                                                                                                              }
                                                                                                                              continue loop23;
                                                                                                                              addr592:
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 loop45:
                                                                                                                                 while((this.§]!p§ & b2internal::4!7) == 0)
                                                                                                                                 {
                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc17_)
                                                                                                                                       {
                                                                                                                                          param1.PreSolve(this,this.§8J§);
                                                                                                                                          addr538:
                                                                                                                                          if(_loc17_ && this)
                                                                                                                                          {
                                                                                                                                             loop44:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr592);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   loop34:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      param1.BeginContact(this);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr600:
                                                                                                                                                         loop36:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            loop37:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(true);
                                                                                                                                                               loop38:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                  loop39:
                                                                                                                                                                  while(!_loc17_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     loop40:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop28;
                                                                                                                                                                        }
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           loop41:
                                                                                                                                                                           while(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop36;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc18_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(false);
                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc18_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() == §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr642);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop41;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop45;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       param1.EndContact(this);
                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr709:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop24;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr716);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr723);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr650);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr576);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop34;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop27;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr654:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                          if(_loc18_ || this)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr720);
                                                                                                                                          §§goto(addr716);
                                                                                                                                       }
                                                                                                                                       §§goto(addr613);
                                                                                                                                    }
                                                                                                                                    §§goto(addr538);
                                                                                                                                 }
                                                                                                                                 return;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop51;
                                                                                                                        }
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr654);
                                                                                                                        }
                                                                                                                        §§goto(addr600);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr718);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§]!p§ |= b2internal::@';
                                                                                                      }
                                                                                                      addr703:
                                                                                                   }
                                                                                                   §§goto(addr709);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr703);
                                                                                          }
                                                                                          continue loop51;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr720);
                                                                              }
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§goto(addr718);
                                                                              }
                                                                              §§goto(addr723);
                                                                           }
                                                                        }
                                                                        §§goto(addr523);
                                                                     }
                                                                     §§goto(addr392);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§2?§);
                                                               }
                                                               §§goto(addr508);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr391);
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                addr320:
                                             }
                                             §§goto(addr403);
                                          }
                                          this.§]!p§ &= ~b2internal::<`;
                                          §§goto(addr296);
                                       }
                                       §§goto(addr336);
                                    }
                                 }
                                 addr376:
                              }
                              §§push(this.§2?§);
                              if(!(_loc17_ && _loc2_))
                              {
                                 §§pop().§2V§ = 0;
                                 if(!_loc17_)
                                 {
                                    §§goto(addr701);
                                 }
                                 else
                                 {
                                    §§goto(addr320);
                                 }
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr391);
                        }
                        §§goto(addr376);
                     }
                     else
                     {
                        §§push(_loc5_.§'!_§());
                     }
                     §§goto(addr396);
                  }
                  §§goto(addr238);
               }
               §§goto(addr335);
            }
            §§goto(addr326);
         }
         §§goto(addr376);
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §9C§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§;U§);
            loop0:
            while(true)
            {
               §§pop().§9!;§.Set(this.§3t§.GetShape());
               addr108:
               while(true)
               {
                  §§push(§;U§);
                  loop2:
                  while(true)
                  {
                     §§pop().§ !%§.Set(this.§[i§.GetShape());
                     loop3:
                     while(true)
                     {
                        §§push(§;U§);
                        while(true)
                        {
                           §§pop().§"!L§ = param1;
                           addr91:
                           while(_loc4_)
                           {
                           }
                           addr60:
                           continue loop3;
                           loop7:
                           for(; !(_loc3_ && _loc3_); §§push(§;U§),if(_loc4_ || this)
                           {
                              if(_loc4_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           })
                           {
                              §§pop().§'!5§ = param2;
                              while(_loc4_ || param2)
                              {
                                 continue loop7;
                              }
                              §§goto(addr91);
                           }
                        }
                     }
                  }
               }
               if(!_loc4_)
               {
                  continue;
               }
               §§pop().§@M§ = b2Settings.b2_linearSlop;
               if(_loc4_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr108);
                  }
                  return b2TimeOfImpact.§^$§(§;U§);
                  addr57:
               }
               §§goto(addr79);
            }
         }
         while(true)
         {
            §§goto(addr60);
         }
         §§goto(addr57);
      }
   }
}
