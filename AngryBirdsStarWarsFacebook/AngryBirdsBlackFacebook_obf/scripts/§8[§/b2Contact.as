package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2ContactListener;
   import §+#$§.b2Fixture;
   import §3"5§.b2ContactID;
   import §3"5§.b2Manifold;
   import §3"5§.b2ManifoldPoint;
   import §3"5§.b2TOIInput;
   import §3"5§.b2TimeOfImpact;
   import §3"5§.b2WorldManifold;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §?>§:uint = 1;
      
      b2internal static var §[[§:uint = 2;
      
      b2internal static var §96§:uint = 4;
      
      b2internal static var §##R§:uint = 8;
      
      b2internal static var §8!O§:uint = 16;
      
      b2internal static var §4!K§:uint = 32;
      
      b2internal static var §#!=§:uint = 64;
      
      private static var §="v§:b2TOIInput;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?>§ = 1;
         }
         while(true)
         {
            §[[§ = 2;
            loop1:
            while(true)
            {
               §96§ = 4;
               addr92:
               while(true)
               {
                  §##R§ = 8;
                  continue loop1;
               }
            }
         }
      }
      
      private var §1"F§:Boolean = false;
      
      b2internal var §6b§:uint;
      
      b2internal var § #&§:b2Contact;
      
      b2internal var §!"!§:b2Contact;
      
      b2internal var §`g§:b2ContactEdge;
      
      b2internal var §["[§:b2ContactEdge;
      
      b2internal var §8"Q§:b2Fixture;
      
      b2internal var §?# §:b2Fixture;
      
      b2internal var §!#Y§:b2Manifold;
      
      b2internal var §89§:b2Manifold;
      
      b2internal var §8"J§:Number;
      
      public function b2Contact()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§`g§ = new b2ContactEdge();
            while(true)
            {
               this.§["[§ = new b2ContactEdge();
               loop2:
               while(_loc2_ || _loc2_)
               {
                  this.§89§ = new b2Manifold();
                  do
                  {
                     super();
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  if(_loc2_ || this)
                  {
                     addr51:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           this.§!#Y§ = new b2Manifold();
                           continue loop2;
                           §§goto(addr51);
                        }
                        addr88:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §2;§() : b2Manifold
      {
         return this.§!#Y§;
      }
      
      public function §<"Q§(param1:b2WorldManifold) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:b2Body = this.§8"Q§.GetBody();
         var _loc3_:b2Body = this.§?# §.GetBody();
         var _loc4_:b2Shape = this.§8"Q§.GetShape();
         var _loc5_:b2Shape = this.§?# §.GetShape();
         if(!_loc6_)
         {
            param1.§8#5§(this.§!#Y§,_loc2_.GetTransform(),_loc4_.§ "^§,_loc3_.GetTransform(),_loc5_.§ "^§);
         }
      }
      
      public function §[#B§() : Boolean
      {
         return (this.§6b§ & b2internal::8!O) == b2internal::8!O;
      }
      
      public function §;!g§() : Boolean
      {
         return (this.§6b§ & b2internal::[[) == b2internal::[[;
      }
      
      public function §"!I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               this.§6b§ &= ~b2internal::?>;
               if(_loc2_ || _loc3_)
               {
                  addr50:
               }
               else
               {
                  addr76:
               }
               return;
            }
            if(_loc2_ || _loc3_)
            {
               this.§6b§ |= b2internal::?>;
            }
            §§goto(addr76);
         }
         §§goto(addr50);
      }
      
      public function §!W§() : Boolean
      {
         return (this.§6b§ & b2internal::?>) == b2internal::?>;
      }
      
      public function §5G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(!param1)
            {
               this.§6b§ &= ~b2internal::4!K;
               if(_loc2_ || _loc3_)
               {
                  if(!(_loc2_ || param1))
                  {
                     addr75:
                     this.§6b§ |= b2internal::4!K;
                     addr81:
                  }
                  return;
               }
               §§goto(addr81);
            }
         }
         §§goto(addr75);
      }
      
      public function §0"p§() : Boolean
      {
         return (this.§6b§ & b2internal::4!K) == b2internal::4!K;
      }
      
      public function §>!>§() : b2Contact
      {
         return this.§!"!§;
      }
      
      public function §?!@§() : b2Fixture
      {
         return this.§8"Q§;
      }
      
      public function §;"R§() : b2Fixture
      {
         return this.§?# §;
      }
      
      public function §=y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§6b§ |= b2internal::#!=;
         }
      }
      
      b2internal function §'B§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§6b§ = b2internal::4!K;
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
                           addr147:
                           while(true)
                           {
                              §§push(!param2);
                           }
                        }
                        addr146:
                     }
                     while(true)
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(param1.§!W§());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop9:
                                    while(!_loc5_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       if(!§§pop())
                                       {
                                          loop10:
                                          for(; _loc6_; if(!(_loc6_ || this))
                                          {
                                             continue;
                                          },if(!(_loc6_ || param1))
                                          {
                                             continue loop9;
                                          },§§goto(addr50),§§push(Boolean(§§pop())))
                                          {
                                             §§pop();
                                             loop11:
                                             for(; _loc6_; if(_loc5_ && _loc3_)
                                             {
                                                continue;
                                             },if(!_loc5_)
                                             {
                                                this.§6b§ |= b2internal::?>;
                                                §§goto(addr83);
                                             }
                                             else
                                             {
                                                addr137:
                                                this.§8"Q§ = null;
                                             },§§goto(addr140))
                                             {
                                                §§push(param2.§!W§());
                                                if(!(_loc5_ && param1))
                                                {
                                                   continue loop10;
                                                }
                                                addr50:
                                                if(!_loc6_)
                                                {
                                                   continue loop8;
                                                }
                                                if(!(_loc5_ && param2))
                                                {
                                                   loop12:
                                                   while(§§pop())
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         continue loop11;
                                                      }
                                                      addr83:
                                                      if(!(_loc6_ || this))
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               this.§?# § = null;
                                                            }
                                                            else
                                                            {
                                                               addr140:
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop0;
                                                            break loop7;
                                                         }
                                                         break loop7;
                                                      }
                                                      while(true)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop12;
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   var _loc3_:b2Body = param1.GetBody();
                                                   var _loc4_:b2Body = param2.GetBody();
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(_loc3_.§8! §());
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(b2Body.b2_dynamicBody);
                                                         addr475:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            addr476:
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.§^!J§());
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr422:
                                                                                 loop27:
                                                                                 while(_loc6_ || param1)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   loop30:
                                                                                                   while(_loc6_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      while(_loc6_)
                                                                                                      {
                                                                                                         §§push(_loc4_.§^!J§());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!(_loc6_ || param2))
                                                                                                            {
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr386:
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  §§goto(addr394);
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr456);
                                                                                                                  §§goto(addr386);
                                                                                                               }
                                                                                                               addr455:
                                                                                                            }
                                                                                                            §§goto(addr459);
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         addr394:
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§6b§ |= b2internal::[[;
                                                                                                         addr406:
                                                                                                         addr359:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                         if(_loc5_ && _loc3_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         this.§!#Y§.§6#;§ = 0;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§ #&§ = null;
                                                                                                            while(_loc6_ || this)
                                                                                                            {
                                                                                                               this.§!"!§ = null;
                                                                                                               while(_loc6_ || this)
                                                                                                               {
                                                                                                                  §§push(this.§`g§);
                                                                                                                  loop41:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(null);
                                                                                                                     addr310:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().§>"6§ = §§pop();
                                                                                                                        addr311:
                                                                                                                        while(_loc6_)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ || param1))
                                                                                                                              {
                                                                                                                                 break loop28;
                                                                                                                              }
                                                                                                                              §§push(this.§`g§);
                                                                                                                              continue loop41;
                                                                                                                           }
                                                                                                                           §§goto(addr447);
                                                                                                                        }
                                                                                                                        §§goto(addr406);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr359);
                                                                                                                  §§goto(addr327);
                                                                                                               }
                                                                                                               addr327:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§?# § = param2;
                                                                                                                  §§goto(addr357);
                                                                                                               }
                                                                                                               addr357:
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§8"Q§ = param1;
                                                                                                      §§goto(addr371);
                                                                                                      §§goto(addr406);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(!_loc5_)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   addr459:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr439);
                                                                                                }
                                                                                             }
                                                                                             addr439:
                                                                                             continue loop18;
                                                                                             addr456:
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr455);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr199);
                                                   addr59:
                                                }
                                                else
                                                {
                                                   §§goto(addr146);
                                                }
                                             }
                                             §§goto(addr147);
                                          }
                                          continue loop6;
                                       }
                                       §§goto(addr59);
                                    }
                                    continue loop1;
                                 }
                              }
                              return;
                           }
                           §§goto(addr137);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      b2internal function §%!q§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§89§;
         if(!_loc18_)
         {
            this.§89§ = this.§!#Y§;
         }
         while(true)
         {
            while(true)
            {
               this.§!#Y§ = _loc2_;
               do
               {
                  this.§6b§ |= b2internal::4!K;
               }
               while(_loc18_ && this);
               
               if(!_loc17_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc3_:* = false;
               var _loc4_:* = (this.§6b§ & b2internal::8!O) == b2internal::8!O;
               if(_loc17_)
               {
                  §§push(this.§1"F§);
                  loop3:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 param1.EndContact(this);
                                 addr170:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(false);
                                    if(!(_loc17_ || param1))
                                    {
                                       break;
                                    }
                                    _loc4_ = §§pop();
                                    while(!(_loc18_ && _loc3_))
                                    {
                                       continue loop9;
                                       loop14:
                                       while(!(_loc18_ && this))
                                       {
                                          if(!(_loc17_ || this))
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc18_)
                                                {
                                                   break loop10;
                                                }
                                                if(!(_loc18_ && param1))
                                                {
                                                   if(_loc17_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      break loop10;
                                                   }
                                                   break;
                                                }
                                                addr176:
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                             continue loop4;
                                          }
                                          this.§1"F§ = false;
                                          if(_loc18_)
                                          {
                                             continue;
                                          }
                                          if(true)
                                          {
                                             break loop8;
                                          }
                                          while(true)
                                          {
                                             this.§6b§ &= ~b2internal::8!O;
                                             continue loop14;
                                          }
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           var _loc5_:b2Body = this.§8"Q§.m_body;
                           var _loc6_:b2Body = this.§?# §.m_body;
                           §§push(this.§8"Q§.§?!>§.§?#S§(this.§?# §.§?!>§));
                           if(!_loc18_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           if(!(_loc18_ && _loc2_))
                           {
                              §§push(this.§6b§);
                              if(!_loc18_)
                              {
                                 §§push(b2internal::?>);
                                 if(_loc17_ || this)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(!(_loc18_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc17_)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc18_ && param1))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc17_ || _loc2_)
                                                   {
                                                      addr245:
                                                      _loc8_ = this.§8"Q§.GetShape();
                                                      _loc9_ = this.§?# §.GetShape();
                                                      _loc10_ = _loc5_.GetTransform();
                                                      _loc11_ = _loc6_.GetTransform();
                                                      if(!_loc18_)
                                                      {
                                                         §§push(b2Shape.§?#S§(_loc8_,_loc10_,_loc9_,_loc11_));
                                                         if(!(_loc18_ && _loc3_))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         _loc3_ = §§pop();
                                                         addr280:
                                                         §§push(this.§!#Y§);
                                                         if(!(_loc18_ && _loc2_))
                                                         {
                                                            §§pop().§6#;§ = 0;
                                                            if(_loc17_)
                                                            {
                                                               addr815:
                                                               if(_loc3_)
                                                               {
                                                                  addr817:
                                                                  this.§6b§ |= b2internal::8!O;
                                                                  addr823:
                                                                  §§push(_loc4_);
                                                                  §§push(false);
                                                                  if(!(_loc18_ && this))
                                                                  {
                                                                     addr783:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(§§pop() == §§pop())
                                                                     {
                                                                        addr785:
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§pop();
                                                                           addr788:
                                                                           if(!(_loc18_ && this))
                                                                           {
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc17_ || _loc2_)
                                                                                 {
                                                                                    if(_loc17_ || this)
                                                                                    {
                                                                                       addr754:
                                                                                       §§push(true);
                                                                                       if(_loc17_)
                                                                                       {
                                                                                          addr757:
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!(_loc18_ && _loc3_))
                                                                                          {
                                                                                             addr764:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr766:
                                                                                                param1.BeginContact(this);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr702:
                                                                                                   §§push(_loc4_);
                                                                                                   if(!(_loc18_ && param1))
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      if(_loc17_ || param1)
                                                                                                      {
                                                                                                         addr720:
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         §§goto(addr757);
                                                                                                      }
                                                                                                      addr728:
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr731:
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr736:
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(_loc17_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc18_)
                                                                                                                     {
                                                                                                                        §§push(false);
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           if(_loc17_ || this)
                                                                                                                           {
                                                                                                                              addr678:
                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                              if(!(_loc18_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§goto(addr685);
                                                                                                                              }
                                                                                                                              §§goto(addr731);
                                                                                                                           }
                                                                                                                           §§goto(addr817);
                                                                                                                        }
                                                                                                                        §§goto(addr728);
                                                                                                                     }
                                                                                                                     §§goto(addr720);
                                                                                                                  }
                                                                                                                  §§goto(addr678);
                                                                                                               }
                                                                                                               §§goto(addr817);
                                                                                                            }
                                                                                                            §§goto(addr783);
                                                                                                         }
                                                                                                         addr685:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr687:
                                                                                                            param1.EndContact(this);
                                                                                                            if(_loc17_ || this)
                                                                                                            {
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§goto(addr619);
                                                                                                                  }
                                                                                                                  _loc6_.SetAwake(true);
                                                                                                                  addr814:
                                                                                                                  §§goto(addr815);
                                                                                                                  addr845:
                                                                                                                  addr838:
                                                                                                               }
                                                                                                               §§goto(addr766);
                                                                                                            }
                                                                                                            §§goto(addr736);
                                                                                                         }
                                                                                                         §§goto(addr619);
                                                                                                      }
                                                                                                      §§goto(addr754);
                                                                                                   }
                                                                                                   §§goto(addr731);
                                                                                                }
                                                                                                addr842:
                                                                                                _loc5_.SetAwake(true);
                                                                                                §§goto(addr845);
                                                                                             }
                                                                                             §§goto(addr702);
                                                                                          }
                                                                                          §§goto(addr815);
                                                                                       }
                                                                                       §§goto(addr783);
                                                                                    }
                                                                                    §§goto(addr785);
                                                                                 }
                                                                                 §§goto(addr757);
                                                                              }
                                                                              §§goto(addr838);
                                                                           }
                                                                           §§goto(addr823);
                                                                        }
                                                                        addr841:
                                                                        if(§§pop() != _loc4_)
                                                                        {
                                                                           §§goto(addr842);
                                                                        }
                                                                        §§goto(addr814);
                                                                     }
                                                                     §§goto(addr764);
                                                                  }
                                                                  §§goto(addr841);
                                                               }
                                                               this.§6b§ &= ~b2internal::8!O;
                                                               §§goto(addr813);
                                                            }
                                                            else
                                                            {
                                                               addr461:
                                                               §§push(_loc6_.§^!J§());
                                                               if(_loc17_)
                                                               {
                                                                  addr388:
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc18_)
                                                                  {
                                                                     if(_loc17_ || _loc3_)
                                                                     {
                                                                        addr397:
                                                                        if(§§pop())
                                                                        {
                                                                           addr399:
                                                                           this.§6b§ |= b2internal::[[;
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              addr336:
                                                                              §§push(_loc7_);
                                                                              if(_loc17_)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!(_loc18_ && param1))
                                                                                          {
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(_loc17_ || _loc2_)
                                                                                                {
                                                                                                   this.Evaluate();
                                                                                                   addr307:
                                                                                                   addr368:
                                                                                                   §§push(this.§!#Y§.§6#;§ > 0);
                                                                                                   if(!(_loc18_ && _loc2_))
                                                                                                   {
                                                                                                      if(_loc17_ || param1)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr328:
                                                                                                         if(!(_loc18_ && this))
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               addr298:
                                                                                                               _loc12_ = §§pop();
                                                                                                               if(_loc17_)
                                                                                                               {
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr307);
                                                                                                                        }
                                                                                                                        addr596:
                                                                                                                        §§push(_loc12_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(this.§!#Y§.§6#;§);
                                                                                                                           if(!_loc18_)
                                                                                                                           {
                                                                                                                              if(§§pop() < §§pop())
                                                                                                                              {
                                                                                                                                 §§push(this.§!#Y§);
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    (_loc13_ = §§pop().§="8§[_loc12_]).§,#?§ = 0;
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       _loc13_.§!#a§ = 0;
                                                                                                                                    }
                                                                                                                                    _loc14_ = _loc13_.m_id;
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc18_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                          addr595:
                                                                                                                                          if(!(_loc18_ && param1))
                                                                                                                                          {
                                                                                                                                             addr590:
                                                                                                                                             §§push(_loc15_);
                                                                                                                                          }
                                                                                                                                          _loc12_++;
                                                                                                                                          §§goto(addr596);
                                                                                                                                       }
                                                                                                                                       if(§§pop() >= this.§89§.§6#;§)
                                                                                                                                       {
                                                                                                                                          §§goto(addr595);
                                                                                                                                       }
                                                                                                                                       if((_loc16_ = this.§89§.§="8§[_loc15_]).m_id.key == _loc14_.key)
                                                                                                                                       {
                                                                                                                                          if(_loc17_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc13_.§,#?§ = _loc16_.§,#?§;
                                                                                                                                             if(_loc17_ || this)
                                                                                                                                             {
                                                                                                                                                _loc13_.§!#a§ = _loc16_.§!#a§;
                                                                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr581:
                                                                                                                                                   §§goto(addr595);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr596);
                                                                                                                                          }
                                                                                                                                          §§goto(addr581);
                                                                                                                                       }
                                                                                                                                       _loc15_++;
                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr590);
                                                                                                                                       }
                                                                                                                                       §§goto(addr596);
                                                                                                                                    }
                                                                                                                                    §§goto(addr595);
                                                                                                                                 }
                                                                                                                                 addr610:
                                                                                                                                 §§pop().§6#;§ = 0;
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    addr839:
                                                                                                                                    §§goto(addr841);
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    addr614:
                                                                                                                                 }
                                                                                                                                 §§goto(addr817);
                                                                                                                              }
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 §§goto(addr614);
                                                                                                                              }
                                                                                                                              §§goto(addr839);
                                                                                                                           }
                                                                                                                           §§goto(addr619);
                                                                                                                        }
                                                                                                                        addr619:
                                                                                                                        if((this.§6b§ & b2internal::?>) == 0)
                                                                                                                        {
                                                                                                                           if(_loc17_ || this)
                                                                                                                           {
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 if(!_loc18_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc18_ && param1))
                                                                                                                                    {
                                                                                                                                       param1.PreSolve(this,this.§89§);
                                                                                                                                       addr649:
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             if(!_loc17_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr817);
                                                                                                                                             }
                                                                                                                                             §§goto(addr615);
                                                                                                                                          }
                                                                                                                                          addr813:
                                                                                                                                          §§goto(addr817);
                                                                                                                                       }
                                                                                                                                       §§goto(addr788);
                                                                                                                                    }
                                                                                                                                    §§goto(addr766);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr687);
                                                                                                                           }
                                                                                                                           §§goto(addr649);
                                                                                                                        }
                                                                                                                        addr615:
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     addr379:
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        §§goto(addr336);
                                                                                                                     }
                                                                                                                     addr495:
                                                                                                                     §§push(Boolean(_loc5_.§^!J§()));
                                                                                                                     if(!(_loc18_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr473:
                                                                                                                        §§goto(addr448);
                                                                                                                        §§push(§§pop() || b2Body.b2_dynamicBody);
                                                                                                                     }
                                                                                                                     §§goto(addr492);
                                                                                                                  }
                                                                                                                  §§goto(addr368);
                                                                                                               }
                                                                                                               §§goto(addr328);
                                                                                                            }
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr461);
                                                                                                   }
                                                                                                   §§goto(addr336);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr399);
                                                                                          }
                                                                                          §§goto(addr307);
                                                                                       }
                                                                                       §§goto(addr610);
                                                                                       §§push(this.§!#Y§);
                                                                                    }
                                                                                    §§goto(addr494);
                                                                                 }
                                                                                 §§goto(addr460);
                                                                              }
                                                                              §§goto(addr388);
                                                                           }
                                                                           §§goto(addr477);
                                                                        }
                                                                        this.§6b§ &= ~b2internal::[[;
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr476);
                                                                  }
                                                               }
                                                               §§goto(addr439);
                                                            }
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      §§goto(addr280);
                                                   }
                                                   §§goto(addr307);
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr476);
                                          }
                                          §§goto(addr245);
                                       }
                                       else
                                       {
                                          §§goto(addr476);
                                          §§push(_loc5_.§8! §());
                                       }
                                       §§goto(addr476);
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr439);
                              }
                              §§goto(addr476);
                           }
                           §§goto(addr461);
                           addr165:
                        }
                        §§goto(addr176);
                     }
                  }
               }
               §§goto(addr143);
            }
         }
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§1"F§ = true;
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §]"C§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(§="v§);
            loop0:
            while(true)
            {
               §§pop().§<!b§.Set(this.§8"Q§.GetShape());
               while(true)
               {
                  §§push(§="v§);
                  while(true)
                  {
                     §§pop().§#!]§.Set(this.§?# §.GetShape());
                     loop3:
                     while(true)
                     {
                        §§push(§="v§);
                        addr76:
                        while(true)
                        {
                           §§pop().§#![§ = param1;
                           continue loop3;
                        }
                     }
                     loop6:
                     while(_loc3_ || param2)
                     {
                        if(!_loc4_)
                        {
                           §§pop().§?"s§ = param2;
                           while(true)
                           {
                              §§push(§="v§);
                              if(_loc4_ && this)
                              {
                                 continue loop6;
                              }
                              if(_loc3_)
                              {
                                 §§pop().§;+§ = b2Settings.b2_linearSlop;
                                 if(_loc4_)
                                 {
                                    continue;
                                 }
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr76);
                           }
                           return b2TimeOfImpact.§]"A§(§="v§);
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
