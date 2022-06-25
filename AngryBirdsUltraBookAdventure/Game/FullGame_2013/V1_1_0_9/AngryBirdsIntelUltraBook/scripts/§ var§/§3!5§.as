package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2BodyDef;
   import §#I§.b2World;
   import §0S§.§6!D§;
   import §40§.§1!g§;
   import §40§.§5G§;
   import §;!y§.§,!s§;
   import §`g§.Sprite;
   
   public class §3!5§ extends §&Y§
   {
      
      protected static const §]j§:Boolean = false;
      
      protected static const §2"!§:Number = 2000;
      
      protected static const §=!z§:Number = 0.2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §]j§ = false;
            while(true)
            {
               §2"!§ = 2000;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            §=!z§ = 0.2;
            if(!(_loc2_ && _loc1_))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §#!4§:Number;
      
      protected var §[A§:Boolean = false;
      
      protected var §]9§:int = 0;
      
      public function §3!5§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param11);
            while(param10)
            {
               if(_loc13_)
               {
                  if(_loc13_)
                  {
                     §+!j§.mTryToScream = §7!r§.§<!c§ + 1;
                     addr47:
                     break;
                  }
                  continue;
               }
               §§goto(addr47);
            }
            return;
         }
         §§goto(addr47);
      }
      
      public static function §5%§(param1:Number, param2:Number, param3:int, param4:int, param5:int) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         §§push(param3);
         if(_loc11_ || param1)
         {
            §§push(int(§§pop() + Math.random() * param4));
         }
         var _loc6_:* = §§pop();
         var _loc7_:Number = 1;
         var _loc8_:int = 0;
         while(true)
         {
            if(_loc8_ >= _loc6_)
            {
               if(!_loc11_)
               {
                  continue;
               }
               if(_loc11_ || §3!5§)
               {
                  if(!_loc12_)
                  {
                     break;
                  }
                  while(!(_loc11_ || §3!5§))
                  {
                     while(true)
                     {
                        §§push(0.5);
                        if(_loc11_)
                        {
                           §§push(param5);
                           if(_loc11_ || param2)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc11_ || param2))
                              {
                                 break;
                              }
                              if(_loc12_)
                              {
                                 continue;
                              }
                              §§push(param5);
                           }
                           §§push(§§pop() + §§pop() * (Math.random() * 0.5));
                           if(!(_loc12_ && param2))
                           {
                              §§push(Number(§§pop()));
                              break;
                           }
                           break;
                        }
                        break;
                     }
                     _loc10_ = §§pop();
                  }
                  §§push(§,!s§.§=!I§.particles);
                  §§push("STAR_PARTICLE");
                  §§push(§>p§.§,+§);
                  §§push(§=!%§.§2k§);
                  §§push(§>p§.§%§);
                  §§push(param1);
                  §§push(param2);
                  §§push(750);
                  §§push("");
                  §§push(§>p§.§=!f§("BIRD_RED"));
                  §§push(_loc10_);
                  if(!(_loc12_ && param3))
                  {
                     §§push(§§pop() * Math.cos(_loc9_));
                     if(!(_loc12_ && param3))
                     {
                        §§push(_loc7_);
                        if(_loc11_ || param1)
                        {
                           addr118:
                           §§push(§§pop() * §§pop());
                           §§push(_loc10_);
                           if(!(_loc12_ && param2))
                           {
                              §§push(-§§pop());
                              if(!_loc11_)
                              {
                              }
                              addr140:
                              addr142:
                              §§push(§§pop() * _loc7_);
                              §§push(5);
                              §§push(_loc10_);
                              if(_loc11_)
                              {
                                 §§push(§§pop() * 20);
                              }
                              §§pop().§;4§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.sqrt(_loc7_));
                              _loc8_++;
                              continue;
                              addr152:
                           }
                           §§push(§§pop() * Math.sin(_loc9_));
                           if(!(_loc12_ && §3!5§))
                           {
                              §§goto(addr140);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr140);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr152);
            }
            else
            {
               §§push(Math.random() * (Math.PI * 2));
               if(!_loc12_)
               {
                  §§push(Number(§§pop()));
               }
            }
            §§goto(addr221);
         }
      }
      
      public function get §2!K§() : Boolean
      {
         return this.§[A§;
      }
      
      override protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = super.createBodyDefinition(param1,param2);
         if(!(_loc4_ && _loc3_))
         {
            _loc3_.§2!C§ = true;
         }
         do
         {
            _loc3_.§"!K§ = 2;
         }
         while(_loc4_ && _loc3_);
         
         return _loc3_;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§0M§ < §]!3§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(Boolean(§,1§()));
                     }
                  }
                  addr132:
               }
               loop0:
               do
               {
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§#!4§ = 0;
                        if(_loc2_)
                        {
                           if(!(_loc3_ && this))
                           {
                              if(!(_loc2_ || param1))
                              {
                                 addr111:
                                 §§push(this);
                                 §§push(this.§#!4§);
                                 if(_loc2_ || this)
                                 {
                                    §§push(§§pop() + param1);
                                 }
                                 §§pop().§#!4§ = §§pop();
                                 if(this.§#!4§ >= §2"!§)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          continue loop0;
                                       }
                                       §§push(true);
                                    }
                                    else
                                    {
                                       addr104:
                                       while(true)
                                       {
                                          addr26:
                                          while(true)
                                          {
                                             addr19:
                                             while(true)
                                             {
                                                §§push(false);
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                          }
                                       }
                                       addr104:
                                    }
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr26);
                                 addr124:
                              }
                              §§goto(addr19);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr111);
                  }
               }
               while(_loc3_ && this);
               
               return §§pop();
            }
            §§goto(addr132);
         }
         §§goto(addr104);
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Boolean = false;
         var _loc3_:* = false;
         if(_loc4_)
         {
            §§push(this.§[A§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§-!>§.toUpperCase() != "BIRD_WHITE")
                     {
                        §§push(§-!>§.toUpperCase() == "BIRD_YELLOW");
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr279:
                                    while(true)
                                    {
                                       §§push(§-!>§.toUpperCase() == "BIRD_GREEN");
                                    }
                                 }
                                 addr278:
                              }
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(!_loc5_)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(§-!>§.toUpperCase() == "BIRD_RED");
                                             }
                                          }
                                          continue loop0;
                                          addr265:
                                       }
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop13:
                                             while(_loc4_ || _loc3_)
                                             {
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!§§pop())
                                                {
                                                   continue loop7;
                                                }
                                                addr200:
                                                while(true)
                                                {
                                                   addr201:
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
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr206:
                                                            while(true)
                                                            {
                                                               §§push(§-!>§.toUpperCase() == "BIRD_ORANGE");
                                                               continue loop30;
                                                            }
                                                         }
                                                         addr205:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               if(§+!j§.mTryToFly)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(true);
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr187:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && param1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr289:
                                                                              }
                                                                           }
                                                                        }
                                                                        addr186:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr279);
                                                                     }
                                                                  }
                                                                  addr183:
                                                               }
                                                            }
                                                            addr180:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr287);
                  }
               }
               §§goto(addr23);
            }
         }
         §§goto(addr162);
      }
      
      override protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc2_:* = false;
         if(_loc5_)
         {
            §§push(Boolean(§63§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(§+!j§.mTryToFly)
                           {
                              loop6:
                              while(true)
                              {
                                 §+!j§.mTryToFly = false;
                                 loop7:
                                 while(true)
                                 {
                                    if(§+!j§.mIsFlying)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          continue loop6;
                                       }
                                       addr104:
                                       loop34:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(true);
                                                loop35:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      continue loop34;
                                                   }
                                                   loop10:
                                                   for(; !_loc4_; continue loop35)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(§-!>§.toUpperCase() != "BIRD_GREEN")
                                                               {
                                                                  §§push(§-!>§.toUpperCase() == "BIRD_WHITE");
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop14:
                                                                     while(_loc5_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr228:
                                                                              loop16:
                                                                              while(_loc5_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§[A§);
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    addr199:
                                                                                    while(true)
                                                                                    {
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(§]j§);
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §§push(!§'!j§());
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §4I§(0);
                                                                                                                  addr151:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           addr109:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           addr109:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr211:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §,!!§();
                                                                                                                           }
                                                                                                                           addr211:
                                                                                                                        }
                                                                                                                        §§goto(addr109);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop23:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(!§1!b§());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop21;
                                                                                                                                          }
                                                                                                                                          addr181:
                                                                                                                                          while(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          addr33:
                                                                                                                                          continue loop20;
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   addr44:
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             continue loop15;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    addr249:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(param1);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(this.§[A§)
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                addr257:
                                                                                                                                                §§push(2);
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   addr266:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr274:
                                                                                                                                                      §§push(360);
                                                                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc4_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            addr291:
                                                                                                                                                            §§push(§§pop() / 1000);
                                                                                                                                                            if(_loc5_)
                                                                                                                                                            {
                                                                                                                                                               addr294:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         _loc3_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §4I§(§3C§() - _loc3_);
                                                                                                                                                            addr243:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr109);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr296:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr291);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr294);
                                                                                                                                                }
                                                                                                                                                §§goto(addr291);
                                                                                                                                             }
                                                                                                                                             §§goto(addr274);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr266);
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr291);
                                                                                                                                       }
                                                                                                                                       §§goto(addr257);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr243);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(!(_loc4_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr109);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§+!j§.mTryToFly)
                                                                                                                                    {
                                                                                                                                       continue loop12;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §+!j§.mTryToFly = true;
                                                                                                                                       break loop16;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr201:
                                                                                                                                 addr333:
                                                                                                                              }
                                                                                                                              §§goto(addr109);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr109);
                                                                                                                              }
                                                                                                                              addr213:
                                                                                                                           }
                                                                                                                           §§goto(addr296);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§0M§ == §]!3§);
                                                                                                                           break loop10;
                                                                                                                        }
                                                                                                                        addr347:
                                                                                                                     }
                                                                                                                     §§goto(addr213);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr148:
                                                                                                            }
                                                                                                            §§goto(addr109);
                                                                                                         }
                                                                                                         addr146:
                                                                                                      }
                                                                                                      §§goto(addr181);
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                §§goto(addr211);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr201);
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr199);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                         }
                                                         addr319:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         addr346:
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop7;
                                             }
                                             §§goto(addr319);
                                          }
                                          §§goto(addr148);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr24);
                        }
                        §§goto(addr333);
                     }
                     addr331:
                  }
                  §§goto(addr346);
               }
            }
         }
         §§goto(addr211);
      }
      
      override public function addTrail() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:* = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc1_:§5G§ = §,!s§.§=!I§;
         if(!(_loc7_ && _loc3_))
         {
            §§push(§0M§ < §]!3§);
            while(!§§pop())
            {
               do
               {
                  §§pop();
                  §§push(§63§() == null);
               }
               while(_loc7_);
               
               if(_loc8_ || _loc1_)
               {
                  break;
               }
            }
            if(§§pop())
            {
               _loc1_.§-!7§(this);
               do
               {
                  _loc1_.§[!f§ = false;
               }
               while(_loc7_);
               
            }
            else
            {
               §§push(x * §5G§.§6+§);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(y * §5G§.§6+§);
               if(_loc8_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               if(_loc8_ || _loc2_)
               {
                  §§push(_loc1_.§[!f§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(§,z§ > 1)
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              if(!_loc7_)
                              {
                                 §§push(_loc1_.particles);
                                 loop3:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§push(§>p§.§8_§);
                                       loop4:
                                       while(true)
                                       {
                                          §§push(§=!%§.§#,§);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(§>p§.§?-§);
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop7:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§push(_loc3_);
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(-1);
                                                         addr536:
                                                         while(true)
                                                         {
                                                            §§push("");
                                                            addr537:
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§>p§.§9§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                     addr552:
                                                                     loop39:
                                                                     while(true)
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_.slingshot.§^F§());
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop19:
                                                                                 while(_loc8_)
                                                                                 {
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §5%§(_loc2_,_loc3_,0,3,10);
                                                                                       loop20:
                                                                                       while(!(_loc7_ && _loc1_))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§6!E§() > §1!g§.BIRD_LAUNCH_FORCE_GREEN);
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc8_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  §§push(Math.random() < §=!z§);
                                                                                                                  if(_loc8_ || _loc1_)
                                                                                                                  {
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                            addr313:
                                                                                                         }
                                                                                                         if(_loc7_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         §§push(-Math.PI);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / 2);
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop29:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  addr287:
                                                                                                                  addr469:
                                                                                                                  loop30:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(Number(Math.random()));
                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                           {
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           continue loop29;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop45:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§>p§.PARTICLE_NAME_BIRD_TRAIL3);
                                                                                                                           if(_loc8_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc8_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       addr468:
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       break loop30;
                                                                                                                                    }
                                                                                                                                    addr501:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       break loop45;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                 addr488:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc7_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(this.§]9§ + 1);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() % 3);
                                                                                                                                       }
                                                                                                                                       §§pop().§]9§ = §§pop();
                                                                                                                                       break loop20;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr487:
                                                                                                                           }
                                                                                                                           §§goto(addr468);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           loop42:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(this.§]9§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          while(!(_loc7_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(§>p§.PARTICLE_NAME_BIRD_TRAIL2);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr487);
                                                                                                                                          }
                                                                                                                                          continue loop42;
                                                                                                                                          addr475:
                                                                                                                                       }
                                                                                                                                       §§push(this.§]9§);
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(2);
                                                                                                                                       if(_loc7_ && this)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(§§pop() == §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr442);
                                                                                                                                       }
                                                                                                                                       §§goto(addr414);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc1_.§[!f§ = false;
                                                                                                                                 }
                                                                                                                                 addr581:
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr442:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§]9§ = 0;
                                                                                                                        addr557:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr414);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            if(!(_loc8_ || _loc1_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.particles);
                                                                                                                     if(!(_loc7_ && _loc2_))
                                                                                                                     {
                                                                                                                        §§push(§>p§.§&@§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop4;
                                                                                                                        }
                                                                                                                        §§push(§=!%§.§2k§);
                                                                                                                        if(_loc8_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc8_ || _loc1_)
                                                                                                                           {
                                                                                                                              §§push(§>p§.§%§);
                                                                                                                              if(!(_loc7_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc2_);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 addr368:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§>p§.§?-§);
                                                                                                                              }
                                                                                                                              addr572:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr575:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr576:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(-1);
                                                                                                                                    addr577:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push("");
                                                                                                                                       addr578:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§>p§.§9§);
                                                                                                                                          addr580:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().§-M§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                             §§goto(addr581);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§push(§>p§.§?-§);
                                                                                                                           }
                                                                                                                           addr364:
                                                                                                                        }
                                                                                                                        §§goto(addr368);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              §§push(_loc4_);
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                        addr345:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr287);
                                                                                                               }
                                                                                                               §§goto(addr469);
                                                                                                            }
                                                                                                            §§goto(addr414);
                                                                                                         }
                                                                                                         §§goto(addr475);
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                addr259:
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr345);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr557);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr413:
                                                                              }
                                                                              §§goto(addr297);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr551:
                                                               }
                                                               §§goto(addr578);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr575);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr568:
                                    }
                                    §§goto(addr570);
                                 }
                              }
                              else
                              {
                                 addr566:
                                 §§push(_loc1_.particles);
                              }
                              §§goto(addr568);
                           }
                           §§goto(addr552);
                        }
                        else
                        {
                           §§push(§>p§.PARTICLE_NAME_BIRD_TRAIL1);
                        }
                        §§goto(addr501);
                     }
                     §§goto(addr566);
                  }
               }
               §§goto(addr206);
            }
         }
      }
      
      override protected function playScreamingSoundEffect() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§+!j§.mTryToFly)
            {
               super.playScreamingSoundEffect();
               if(!_loc2_)
               {
                  addr40:
               }
               else
               {
                  addr50:
               }
               return;
            }
            if(_loc1_)
            {
               §'!S§(§6!D§.§8!n§);
            }
            §§goto(addr50);
         }
         §§goto(addr40);
      }
      
      override public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§[A§);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §'!S§(§6!D§.§ try§);
                     while(_loc3_ || _loc3_)
                     {
                        this.§[A§ = true;
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        if(_loc3_ || param1)
                        {
                           §§push(true);
                           if(_loc3_ || this)
                           {
                              return §§pop();
                           }
                           addr95:
                           addr95:
                           return §§pop();
                        }
                        §§goto(addr95);
                     }
                     addr96:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
               }
               §§push(false);
            }
            §§goto(addr95);
         }
         §§goto(addr96);
      }
      
      private function §1b§(param1:int) : int
      {
         return Math.min(§,!s§.§=!I§.§1![§,param1);
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:* = int(§^!e§(false) + 1);
         var _loc4_:* = Number(90);
         if(_loc10_ || this)
         {
            §§push(this.§1b§(_loc3_));
            if(!_loc9_)
            {
               §§push(int(§§pop()));
               if(!_loc9_)
               {
                  _loc3_ = §§pop();
                  addr52:
                  §§push(0);
               }
            }
            var _loc5_:* = §§pop();
            loop0:
            while(true)
            {
               if(_loc5_ >= _loc3_)
               {
                  if(_loc10_ || this)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        §§push(-§+!j§.mW);
                        if(!(_loc9_ && _loc3_))
                        {
                           §§push(§5G§.§6+§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop3:
                              while(!(_loc9_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop5:
                                    while(true)
                                    {
                                       _loc7_ = §§pop();
                                       loop6:
                                       while(!(_loc9_ && this))
                                       {
                                          §§push(Math.random() * -_loc7_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(2);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc10_)
                                                   {
                                                      addr285:
                                                      §§push(Number(§§pop()));
                                                      loop10:
                                                      while(_loc10_ || param1)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               _loc7_ = §§pop();
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(-§+!j§.mH);
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(!(_loc10_ || _loc2_))
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(!(_loc9_ && this))
                                                                  {
                                                                     §§push(§5G§.§6+§);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 _loc8_ = §§pop();
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr193:
                                                                                    §§push(Math.random() * -_loc8_);
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       addr205:
                                                                                       §§push(2);
                                                                                       if(!(_loc10_ || this))
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       addr214:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       if(_loc10_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             addr328:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(180 / Math.PI);
                                                                                                addr332:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   break loop10;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr327:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr214);
                                                                                 }
                                                                                 addr241:
                                                                                 _loc8_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    param1.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x + _loc7_,§63§().GetPosition().y + _loc8_,1500,"",§>p§.§=!f§(§-!>§),_loc2_ * Math.cos(_loc6_),-_loc2_ * Math.sin(_loc6_),5,_loc2_ * 20);
                                                                                    loop13:
                                                                                    while(!_loc9_)
                                                                                    {
                                                                                       _loc5_++;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     §§goto(addr205);
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr316:
                                                            while(true)
                                                            {
                                                               §§push(Math.random() * (720 / _loc3_));
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  break loop6;
                                                               }
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr327);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         break loop3;
                                                      }
                                                      addr285:
                                                   }
                                                   §§goto(addr285);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr326);
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                        §§goto(addr285);
                     }
                  }
                  §§goto(addr78);
               }
               else
               {
                  §§push(_loc4_);
               }
               §§goto(addr316);
            }
            return;
         }
         §§goto(addr52);
      }
      
      override public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!(_loc9_ && _loc3_))
         {
            if(§1!b§())
            {
               if(!_loc9_)
               {
                  return;
               }
            }
            else if(param2 < 6)
            {
               if(_loc10_)
               {
                  §§goto(addr48);
               }
            }
            §§push(§6!E§() / 10);
            if(!(_loc9_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(1);
            if(!_loc9_)
            {
               §§push(_loc3_);
               if(!(_loc9_ && param2))
               {
                  addr88:
                  §§push(§§pop() * §^!e§(false));
                  if(_loc10_ || param1)
                  {
                     addr84:
                     §§push(§§pop() * 0.12);
                  }
                  var _loc4_:* = int(§§pop() + §§pop());
                  var _loc5_:* = Number(90);
                  if(_loc10_)
                  {
                     §§push(param2);
                     while(true)
                     {
                        §§push(scale * scale);
                        addr477:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           addr478:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              addr479:
                              while(true)
                              {
                                 param2 = §§pop();
                              }
                           }
                        }
                     }
                     addr474:
                  }
                  loop4:
                  while(true)
                  {
                     §§push(_loc4_);
                     loop5:
                     while(true)
                     {
                        §§push(3 + param2 / 20);
                        if(_loc9_)
                        {
                           break;
                        }
                        §§push(§§pop() * §§pop());
                        if(_loc10_ || param1)
                        {
                           §§push(int(§§pop()));
                           loop6:
                           for(; _loc10_ || _loc3_; while(true)
                           {
                              if(_loc10_ || _loc3_)
                              {
                                 continue loop5;
                              }
                              continue loop6;
                              §§goto(addr433);
                           },continue loop5)
                           {
                              _loc4_ = §§pop();
                              while(!_loc9_)
                              {
                                 §§push(this.§1b§(_loc4_));
                                 if(_loc10_ || param1)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 continue loop6;
                                 while(_loc10_ || this)
                                 {
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc9_ && param1)
                                       {
                                          continue;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc10_ || param2)
                                          {
                                             §§push(_loc4_);
                                             while(true)
                                             {
                                                if(§§pop() < §§pop() / 3)
                                                {
                                                   §§push(_loc5_);
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(0);
                                                }
                                             }
                                             addr382:
                                             _loc5_ = Number(§§pop() + Math.random() * (720 / _loc4_));
                                             param1.§-M§(§>p§.§'f§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1000,"",0,Math.cos(_loc5_) * scale,0,5,_loc3_ * 5,1);
                                             _loc6_++;
                                             continue;
                                             addr369:
                                             addr374:
                                             addr380:
                                             addr381:
                                             addr383:
                                             addr329:
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             _loc6_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   if(_loc9_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc10_)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         if(_loc10_ || param2)
                                                         {
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  return;
                                                               }
                                                               loop16:
                                                               for(; _loc10_; while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  continue loop16;
                                                               })
                                                               {
                                                                  §§push(0.5);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc10_)
                                                                           {
                                                                              if(_loc10_ || param2)
                                                                              {
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       addr222:
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr239:
                                                                                          §§push(§§pop() * (Math.random() * 0.5));
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                addr249:
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   addr257:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      addr260:
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         break loop15;
                                                                                                      }
                                                                                                      param1.§-M§(§>p§.§&@§,§=!%§.§2k§,§>p§.§%§,§63§().GetPosition().x,§63§().GetPosition().y,1250,"",§>p§.§=!f§(§-!>§),_loc8_ * Math.cos(_loc7_) * scale,-_loc8_ * Math.sin(_loc7_) * scale,5,_loc8_ * 20,Math.sqrt(scale));
                                                                                                      loop17:
                                                                                                      while(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               _loc6_++;
                                                                                                               while(!_loc10_)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               continue loop15;
                                                                                                               addr124:
                                                                                                            }
                                                                                                            §§goto(addr369);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr332);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                addr267:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Math.random() * (720 / _loc4_));
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             addr274:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(!(_loc10_ || this))
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc10_ || param1)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(180 / Math.PI);
                                                                                                                  addr311:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr307:
                                                                                                            }
                                                                                                         }
                                                                                                         addr299:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr374);
                                                                                                      }
                                                                                                      §§goto(addr380);
                                                                                                   }
                                                                                                   §§goto(addr382);
                                                                                                }
                                                                                                §§goto(addr381);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr299);
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 §§goto(addr274);
                                                                              }
                                                                              §§goto(addr307);
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     §§goto(addr222);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr383);
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc5_);
                                                      }
                                                      §§goto(addr267);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr329);
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop4;
                           }
                        }
                        else
                        {
                           §§goto(addr478);
                        }
                        §§goto(addr479);
                        if(!(_loc10_ || _loc3_))
                        {
                           continue;
                        }
                        if(_loc10_)
                        {
                           _loc4_ = §§pop();
                           §§goto(addr426);
                        }
                        §§goto(addr474);
                     }
                     §§goto(addr477);
                  }
               }
               §§goto(addr84);
            }
            §§goto(addr88);
         }
         addr48:
      }
   }
}
