package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §+!c§.§6!r§;
   import §-f§.§+"R§;
   import §-f§.§8!<§;
   import §-f§.§[!J§;
   import §6!^§.b2Vec2;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^"5§;
   import §`!G§.§[!8§;
   
   public class § !X§
   {
      
      public static const §1!X§:String = "ChannelSlingshot";
      
      public static const §&w§:Number = 900;
      
      public static const §4!V§:Number = 200;
      
      public static const §4!L§:Number = 200;
      
      public static const §7c§:Number = 1500;
      
      public static const §["F§:Number = 5000;
      
      public static const § !v§:Number = 1000;
      
      public static const §#!Q§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1!X§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §&w§ = 900;
               while(true)
               {
                  §4!V§ = 200;
                  addr104:
                  while(!(_loc2_ && § !X§))
                  {
                     §4!L§ = 200;
                     while(true)
                     {
                        §7c§ = 1500;
                        loop4:
                        while(_loc1_ || § !X§)
                        {
                           while(true)
                           {
                              §["F§ = 5000;
                              while(!(_loc2_ && _loc2_))
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      protected var mName:String;
      
      protected var §4!K§:Number;
      
      protected var §7!#§:Number;
      
      protected var §0!H§:Number;
      
      protected var §8"<§:Number;
      
      private var §7@§:§[!J§;
      
      protected var §!"W§:Number;
      
      protected var §&!9§:Number = 1;
      
      private var §?!T§:Sprite;
      
      protected var §4",§:§4!N§;
      
      private var §8!U§:§ "E§;
      
      protected var §%!v§:§&=§;
      
      private var § s§:Number;
      
      private var §="2§:Boolean = false;
      
      private var §`<§:Boolean = false;
      
      protected var §+5§:Boolean = false;
      
      private var §#!N§:Number;
      
      private var §"`§:Number = 0;
      
      private var §6!§:Number = 0;
      
      private var §4!S§:Number = 0;
      
      private var §=!,§:Number = 1000;
      
      private var §4!§:Number;
      
      private var §2!t§:Number;
      
      private var §9B§:int;
      
      private var §[!v§:Number = 0;
      
      protected var §8!T§:Number;
      
      protected var §""P§:Number;
      
      private var §-v§:Number = 1;
      
      private var §5!^§:Number = 0;
      
      private var §""§:b2Vec2;
      
      private var §<[§:Number = 1;
      
      public function § !X§(param1:§&=§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               this.§%!v§ = param1;
               loop2:
               for(; !(_loc7_ && param2); if(_loc6_ || param1)
               {
                  return;
               })
               {
                  this.mName = param3;
                  loop3:
                  while(true)
                  {
                     this.§7@§ = §8!<§.§3"[§(this.mName).§!j§;
                     addr149:
                     addr188:
                     while(_loc6_ || param1)
                     {
                        this.§4!K§ = param4;
                        loop5:
                        while(_loc6_ || param3)
                        {
                           this.§7!#§ = param5;
                           while(true)
                           {
                              this.§0!H§ = param4;
                              loop7:
                              while(true)
                              {
                                 this.§8"<§ = param5;
                                 addr107:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    continue loop7;
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        this.§?!T§ = param2;
                        continue loop2;
                        §§goto(addr149);
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      public function §8""§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§="2§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§?!T§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§?!T§);
                     addr59:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr59);
         }
         §§goto(addr60);
      }
      
      public function §<!c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§`<§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr417:
                        while(true)
                        {
                           §§push(this.§="2§);
                           if(_loc3_ || this)
                           {
                              if(_loc2_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§&!9§);
                           loop6:
                           while(true)
                           {
                              §§push(0);
                              loop7:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.§4!S§ = 0;
                                       loop9:
                                       while(true)
                                       {
                                          this.§[!v§ = 0;
                                          loop10:
                                          while(true)
                                          {
                                             this.§!"W§ = 0;
                                             loop11:
                                             for(; !_loc2_; if(!(_loc3_ || _loc3_))
                                             {
                                                continue;
                                             },§§push(this),§§push(this.§!"W§),if(_loc3_)
                                             {
                                                §§push(param1);
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push(360 - this.§!"W§);
                                                   if(_loc3_)
                                                   {
                                                      addr181:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(this.§#!N§);
                                                      }
                                                      §§pop().§!"W§ = §§pop() + §§pop();
                                                      §§goto(addr183);
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                             },§§goto(addr181))
                                             {
                                                this.§2!t§ = 0;
                                                loop12:
                                                while(true)
                                                {
                                                   this.§&!9§ = 0;
                                                   while(true)
                                                   {
                                                      addr132:
                                                      loop22:
                                                      for(; !(_loc2_ && _loc3_); if(_loc3_ || this)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               return;
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop8;
                                                      })
                                                      {
                                                         this.§7!#§ = this.§%!v§.§7!#§;
                                                         loop23:
                                                         while(_loc3_)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               this.§`<§ = false;
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  this.§="2§ = true;
                                                                  loop25:
                                                                  while(_loc3_)
                                                                  {
                                                                     addr78:
                                                                     if(!(_loc2_ && _loc3_))
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr409:
                                                                        this.§!"W§ = 0;
                                                                        loop26:
                                                                        for(; _loc3_; while(true)
                                                                        {
                                                                           this.§]`§();
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              continue loop25;
                                                                           }
                                                                           continue loop26;
                                                                        })
                                                                        {
                                                                           addr64:
                                                                           if(!(_loc2_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              addr71:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr183:
                                                                              loop20:
                                                                              while(!(_loc2_ && param1))
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§#!N§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() - param1);
                                                                                 }
                                                                                 §§pop().§#!N§ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#!N§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(0);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    continue loop7;
                                                                                    §§goto(addr78);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       break loop20;
                                                                                    }
                                                                                    break;
                                                                                    §§goto(addr149);
                                                                                 }
                                                                                 addr149:
                                                                                 continue loop6;
                                                                                 §§goto(addr64);
                                                                              }
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§4!K§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§%!v§.§4!K§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() - this.§4!K§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr323:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§#!N§);
                                                                                             }
                                                                                             §§pop().§4!K§ = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§7!#§);
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(_loc3_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this.§%!v§.§7!#§);
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         §§push(§§pop() - this.§7!#§);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr278:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§push(this.§#!N§);
                                                                                                            }
                                                                                                            §§pop().§7!#§ = §§pop() + §§pop();
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         §§goto(addr278);
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr278);
                                                                                             }
                                                                                             addr325:
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr323);
                                                                                 §§goto(addr183);
                                                                              }
                                                                              addr183:
                                                                              §§goto(addr417);
                                                                           }
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     §§goto(addr149);
                                                                  }
                                                                  continue loop23;
                                                               }
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr333);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr409);
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §2!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`<§ = true;
            while(true)
            {
               this.§#!N§ = §&w§;
               loop1:
               for(; _loc2_ || this; if(_loc1_ && _loc1_)
               {
                  continue;
               },§§push(this),§§push(this.§7!#§),if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() + this.§[!v§);
               },§§pop().§7!#§ = §§pop(),§§goto(addr91))
               {
                  while(true)
                  {
                     this.§!H§(§[!J§.§^"?§);
                     while(this.§[!v§ != 0)
                     {
                        if(!(_loc2_ || _loc1_))
                        {
                           do
                           {
                              this.§[!v§ = 0;
                           }
                           while(!(_loc2_ || this));
                           
                        }
                        else
                        {
                           addr91:
                        }
                        if(_loc1_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || this)
         {
            §§push(this.§="2§);
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(this.§""P§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() > this.§%!v§.mLevelMain.§-!z§.§]2§)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§%!v§.mLevelMain.§-!z§.§]2§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() - this.§""P§);
                                       }
                                       §§pop().applyGravity(§§pop());
                                       while(true)
                                       {
                                          this.§8!T§ = -1;
                                          addr378:
                                          addr45:
                                          while(true)
                                          {
                                          }
                                          if(_loc4_ && this)
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          if(!_loc4_)
                                          {
                                             §§goto(addr26);
                                          }
                                          addr423:
                                          while(true)
                                          {
                                             §§push(this.§8!T§);
                                             addr382:
                                             while(true)
                                             {
                                                §§push(0);
                                                addr383:
                                                while(true)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§8!T§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§8!T§ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§8!T§);
                                       if(_loc3_)
                                       {
                                          §§push(0);
                                          if(!(_loc4_ && this))
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this.§4!S§);
                                                      addr338:
                                                      while(_loc3_ || this)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(0);
                                                            while(§§pop() <= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!isNaN(this.§""P§))
                                                                           {
                                                                              addr283:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§%!v§);
                                                                                 addr285:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().mLevelMain);
                                                                                    addr286:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().objects);
                                                                                       addr287:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().§'n§(this.§4!K§,this.§""P§));
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ || param1))
                                                                                             {
                                                                                                continue loop13;
                                                                                             }
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          addr302:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             addr303:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr305:
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr283:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 if(§§pop() < 0)
                                                                                 {
                                                                                    addr264:
                                                                                    §§push(this);
                                                                                    §§push(param1);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() / 100);
                                                                                    }
                                                                                    §§push(§§pop().applyGravity(§§pop()));
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          this.§8!T§ = 0;
                                                                                          addr245:
                                                                                          break;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          this.§8!T§ = -1;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          §§goto(addr423);
                                                                                       }
                                                                                       addr422:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§%!v§);
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().mLevelMain);
                                                                                       addr190:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().objects);
                                                                                          addr191:
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§,!§(§§pop()));
                                                                                                addr195:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§[p§);
                                                                                                   addr206:
                                                                                                   addr207:
                                                                                                   while(§§pop())
                                                                                                   {
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc4_ && this))
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   §§goto(addr283);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr287);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr302);
                                                                              §§goto(addr305);
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                  }
                                                                  addr314:
                                                               }
                                                            }
                                                            addr354:
                                                            this.§8!T§ = this.§4!S§;
                                                            return;
                                                            addr353:
                                                            addr358:
                                                         }
                                                         §§goto(addr382);
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr353);
                                       }
                                       §§goto(addr338);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr26);
                     }
                  }
                  §§goto(addr422);
               }
               if(_loc4_ && param1)
               {
                  continue;
               }
               if(§§pop())
               {
                  addr152:
                  if(_loc3_)
                  {
                     this.§+5§ = false;
                     addr157:
                     if(!(_loc4_ && this))
                     {
                        if(_loc3_ || _loc3_)
                        {
                           this.§8!T§ = 2000;
                           addr61:
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          §§goto(addr264);
                                       }
                                       if(!(_loc4_ && this))
                                       {
                                          addr26:
                                          return;
                                       }
                                       §§goto(addr358);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr238);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr354);
                     }
                     §§goto(addr207);
                  }
                  §§goto(addr245);
               }
               this.§8!T§ = 500;
               if(!_loc4_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     §§goto(addr45);
                  }
                  §§goto(addr157);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr283);
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.§7!#§);
            if(!_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§7!#§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§""P§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§""P§ = §§pop();
               while(true)
               {
                  §§push(this.§""P§);
                  if(!_loc2_)
                  {
                     §§push(this.§%!v§);
                     if(!_loc2_)
                     {
                        §§push(§§pop().mLevelMain);
                        if(!_loc2_)
                        {
                           §§push(§§pop().§-!z§);
                           if(!_loc2_)
                           {
                              §§push(§§pop().§]2§);
                              if(_loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    do
                                    {
                                       this.§]`§();
                                    }
                                    while(!(_loc3_ || _loc3_));
                                    
                                    if(_loc3_)
                                    {
                                       §§push(false);
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    loop3:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§]`§();
                                                continue loop3;
                                             }
                                             addr134:
                                             addr134:
                                             while(true)
                                             {
                                                §§push(this.§""P§);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(this.§%!v§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop().mLevelMain);
                                                      addr146:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§-!z§);
                                                         addr147:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§]2§);
                                                            addr158:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  addr162:
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     param1 = §§pop();
                                                                     addr163:
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§7!#§);
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop() - param1);
                                                                        }
                                                                        §§pop().§7!#§ = §§pop();
                                                                     }
                                                                  }
                                                                  addr162:
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr145:
                                                }
                                                §§goto(addr162);
                                             }
                                          }
                                          while(!_loc3_)
                                          {
                                             §§goto(addr163);
                                          }
                                          continue loop0;
                                       }
                                       continue loop0;
                                    }
                                    if(!_loc2_)
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr134);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr147);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr162);
               }
               return §§pop();
            }
         }
         §§goto(addr134);
      }
      
      public function §2"0§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^"5§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§+"R§ = §8!<§.§3"[§(this.mName).shape;
         if(!(_loc4_ && this))
         {
            §§push(_loc1_.§&"A§());
            loop0:
            while(true)
            {
               §§push(§+"R§.§"c§);
               addr188:
               addr189:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               while(true)
               {
                  this.§""§ = _loc1_.§3V§()[0];
                  addr195:
                  loop6:
                  while(true)
                  {
                     this.§ s§ = _loc1_.§,>§;
                     addr183:
                     while(true)
                     {
                        addr107:
                        while(true)
                        {
                           this.§4",§ = this.§%!v§.mLevelMain.animationManager.getAnimation(this.mName);
                        }
                        continue loop6;
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(!this.§4",§)
            {
               if(_loc5_ || _loc1_)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  this.§^6§(null);
               }
            }
            else
            {
               this.§^6§(this.§4",§.getFrame(0));
               if(_loc5_ || this)
               {
                  §§goto(addr58);
               }
               else
               {
                  §§goto(addr99);
               }
            }
            §§goto(addr99);
         }
         §§goto(addr106);
      }
      
      public function §^6§(param1:§^"5§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(!_loc4_)
         {
            if(!param1)
            {
               addr27:
               _loc2_ = this.§%!v§.§3![§.textureManager.§]i§();
               if(_loc5_)
               {
                  addr54:
                  §§push(this.§8!U§);
                  if(_loc5_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc5_)
                        {
                           this.§8!U§ = new § "E§(_loc2_);
                           if(_loc5_)
                           {
                              this.§?!T§.addChild(this.§8!U§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§8!U§);
                                       loop2:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc5_)
                                             {
                                                §§push(this.§8!U§);
                                                while(true)
                                                {
                                                   §§push(-§§pop().width);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§pop().x = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(this.§8!U§);
                                                                     continue loop2;
                                                                  }
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§8!U§);
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 loop14:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    addr129:
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§pop().scaleX = §§pop();
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§8!U§);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   break loop15;
                                                                                                }
                                                                                                if(_loc4_ && _loc3_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§push(_loc3_);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                §§pop().scaleY = §§pop();
                                                                                                while(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   this.§]`§();
                                                                                                   if(!(_loc4_ && _loc2_))
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                   §§goto(addr115);
                                                                                                }
                                                                                                addr115:
                                                                                             }
                                                                                             addr139:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§8!U§);
                                                                                                addr231:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.pivotY);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         §§push(this.§""§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc5_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§'!S§.§2"<§);
                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        addr307:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr306:
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr307);
                                                                                                            }
                                                                                                            addr273:
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().y = §§pop();
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            addr273:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr306);
                                                                                                                  §§push(§'!S§.§2"<§);
                                                                                                               }
                                                                                                            }
                                                                                                            addr301:
                                                                                                         }
                                                                                                         §§goto(addr307);
                                                                                                      }
                                                                                                      §§goto(addr273);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         addr299:
                                                                                                         while(true)
                                                                                                         {
                                                                                                         }
                                                                                                      }
                                                                                                      addr298:
                                                                                                   }
                                                                                                   §§goto(addr301);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr178:
                                                                                    while(!_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                break loop14;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§goto(addr299);
                                                                                       }
                                                                                       §§goto(addr129);
                                                                                    }
                                                                                    continue loop4;
                                                                                    §§goto(addr273);
                                                                                 }
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    §§goto(addr196);
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§8!U§);
                                                                           addr296:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                        addr294:
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                                  continue loop1;
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr308);
                                                         }
                                                      }
                                                   }
                                                   addr167:
                                                   §§push(this.§8!U§);
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   §§goto(addr178);
                                                   §§push(-§§pop().height);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().texture = _loc2_;
                                                   continue loop1;
                                                }
                                                addr314:
                                             }
                                          }
                                          §§goto(addr296);
                                       }
                                    }
                                    §§goto(addr294);
                                 }
                              }
                           }
                           §§goto(addr280);
                        }
                        §§goto(addr316);
                     }
                     else
                     {
                        §§push(this.§8!U§);
                     }
                     §§goto(addr314);
                  }
                  §§goto(addr296);
               }
               §§goto(addr139);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc5_ || param1)
               {
                  §§push(param1.scale);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr54);
         }
         §§goto(addr27);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = true;
         if(!_loc5_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               §§push(this.§`<§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§4!S§ = 0;
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr156:
                              while(!_loc5_)
                              {
                              }
                              addr95:
                              continue loop2;
                              if(_loc5_ && param3)
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              loop10:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       loop12:
                                       while(§§pop())
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             addr152:
                                             if(!(_loc5_ && param2))
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop3;
                                                }
                                                this.§=!y§(param1,param2);
                                                addr80:
                                                if(_loc6_)
                                                {
                                                   addr82:
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   break loop11;
                                                }
                                                addr119:
                                             }
                                             loop13:
                                             for(; _loc6_ || param2; while(true)
                                             {
                                                §§pop();
                                                continue loop13;
                                             })
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(param3);
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop12;
                                                }
                                                §§goto(addr156);
                                             }
                                             while(true)
                                             {
                                                this.§^!G§(param1);
                                                §§goto(addr119);
                                                §§goto(addr105);
                                             }
                                             addr105:
                                             addr152:
                                          }
                                          §§goto(addr80);
                                       }
                                       §§goto(addr22);
                                    }
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc5_ && param1))
                                       {
                                          §§goto(addr95);
                                       }
                                    }
                                    continue loop4;
                                    addr48:
                                 }
                                 §§goto(addr104);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        if(_loc6_ || this)
                        {
                           continue loop0;
                        }
                        §§goto(addr152);
                     }
                     addr22:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr82);
      }
      
      public function § 4§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§"`§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§6!§);
                     loop2:
                     for(; !(_loc2_ && _loc3_); §§push(Math.random() * §7c§),if(_loc2_ && this)
                     {
                        continue;
                     },§§goto(addr70),§§push(§§pop() < param1))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           §§push(§§pop() <= §§pop());
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              loop3:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       continue loop3;
                                    }
                                    continue loop2;
                                    addr70:
                                 }
                              }
                           }
                           §§goto(addr126);
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              if(§§pop() <= §§pop())
                              {
                                 §§goto(addr154);
                              }
                           }
                           addr151:
                        }
                        §§goto(addr106);
                     }
                     continue loop0;
                  }
                  if(_loc3_ || this)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§"`§);
                        if(_loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§"`§ = §§pop();
                     }
                     addr168:
                  }
                  §§goto(addr176);
               }
            }
         }
         §§goto(addr168);
      }
      
      public function §!M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§"`§ = 0;
         }
         do
         {
            this.§^6§(this.§4",§.getFrame(0));
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §<4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  this.§"`§ = §4!V§;
                  while(_loc1_)
                  {
                     this.§^6§(this.§4",§.getSubAnimation("blink").getFrame(0));
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §^!G§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§6!§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§"`§);
                     loop2:
                     for(; !(_loc3_ && this); §§push(Math.random() * §["F§),if(_loc2_ || this)
                     {
                        continue loop0;
                     })
                     {
                        §§push(0);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() <= §§pop());
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       this.§!H§();
                                    }
                                    if(_loc2_ || this)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          break;
                                       }
                                       addr144:
                                       addr84:
                                       addr142:
                                       if(!_loc2_)
                                       {
                                       }
                                       break;
                                    }
                                    addr108:
                                    while(true)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          §§push(this);
                                          §§push(this.§6!§);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                       }
                                       else
                                       {
                                          addr149:
                                       }
                                       continue loop2;
                                       §§pop().§6!§ = §§pop();
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§6!§);
                                       break loop2;
                                    }
                                 }
                                 return;
                                 addr53:
                              }
                              while(true)
                              {
                                 §§pop();
                              }
                              §§goto(addr108);
                           }
                           addr105:
                        }
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(_loc2_ || _loc3_)
                           {
                              this.§`!x§();
                           }
                        }
                        §§goto(addr142);
                     }
                     while(true)
                     {
                        §§goto(addr120);
                        §§goto(addr162);
                     }
                     §§goto(addr84);
                  }
                  §§goto(addr149);
               }
               if(_loc3_ && this)
               {
                  continue;
               }
               §§push(§§pop() < param1);
               if(_loc2_ || _loc3_)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr53);
                  }
                  §§goto(addr105);
               }
               §§goto(addr107);
            }
         }
         §§goto(addr144);
      }
      
      public function §`!x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§6!§ = 0;
            do
            {
               this.§^6§(this.§4",§.getFrame(0));
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §!H§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§6!§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           while(true)
                           {
                              this.§`!x§();
                              addr242:
                              while(true)
                              {
                              }
                           }
                           addr240:
                        }
                        while(true)
                        {
                           §§push(this.§"`§);
                           if(_loc4_ && this)
                           {
                              break;
                           }
                           §§push(0);
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§!M§();
                                 addr234:
                                 while(true)
                                 {
                                 }
                                 loop19:
                                 for(; _loc3_ || this; while(true)
                                 {
                                    §§pop();
                                    continue loop19;
                                 })
                                 {
                                    while(true)
                                    {
                                       §§push(this.§`<§);
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop19;
                                          }
                                          §§push(Boolean(§§pop()));
                                          loop15:
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§push(param2);
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop19;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        §[!8§.§ "3§(param1,this.§7@§);
                                                                        addr74:
                                                                        if(_loc3_ || _loc3_)
                                                                        {
                                                                           break loop18;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§[!J§.§<!x§);
                                                                        if(_loc3_ || param1)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           addr203:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           param1 = §§pop();
                                                                           loop10:
                                                                           for(; !_loc4_; while(!(_loc4_ && this))
                                                                           {
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr247:
                                                                              §§push(this.§="2§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop16;
                                                                                 }
                                                                              }
                                                                              continue loop19;
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr19);
                                                                              }
                                                                           })
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§6!§ = §4!L§;
                                                                                 addr185:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§goto(addr240);
                                                                                    }
                                                                                    this.§^6§(this.§4",§.getSubAnimation("yell").getFrame(0));
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr242);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §[!8§.§ "3§(param1,this.§7@§,§1!X§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr34);
                                                                  }
                                                               }
                                                               §§goto(addr74);
                                                            }
                                                         }
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            if(!(_loc4_ && param2))
                                                            {
                                                               addr19:
                                                               return;
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      addr129:
                                                   }
                                                   §§goto(addr56);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop19;
                                                }
                                                continue loop15;
                                             }
                                          }
                                       }
                                       §§goto(addr129);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr194);
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr203);
                              §§goto(addr234);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr247);
         }
         §§goto(addr156);
      }
      
      public function §=!y§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_ || param2)
         {
            §§push(this.§4!S§);
            if(_loc6_)
            {
               §§push(0);
               if(!_loc7_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§push(this);
                        §§push(this.§4!S§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§4!S§ = §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§4!S§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(0);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§9B§);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          _loc4_.§9B§ = _loc5_;
                                       }
                                       if(_loc6_)
                                       {
                                          §§push(this);
                                          §§push(this.§2!t§);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§2!t§ = §§pop();
                                          addr824:
                                          §§push(!this.§="2§);
                                          loop33:
                                          while(true)
                                          {
                                             addr826:
                                             if(§§pop())
                                             {
                                                loop34:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr828:
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(this.§9B§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            while(true)
                                                            {
                                                               loop24:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr813:
                                                                     §§push(this.§9B§);
                                                                     break loop22;
                                                                  }
                                                                  addr707:
                                                                  §§push(this.§="2§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop33;
                                                                        }
                                                                        §§push(!§§pop());
                                                                        if(!(_loc6_ || this))
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              addr723:
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 addr686:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ || this))
                                                                                    {
                                                                                       continue loop25;
                                                                                    }
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 §§goto(addr723);
                                                                              }
                                                                           }
                                                                        }
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           addr695:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr696:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       this.§<!E§(2.25);
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr701:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2!t§ = -1;
                                                                                          break loop26;
                                                                                       }
                                                                                       addr788:
                                                                                    }
                                                                                 }
                                                                                 addr696:
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§4!S§ = 0;
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       break loop26;
                                                                                    }
                                                                                    this.§[!v§ = 0;
                                                                                    while(true)
                                                                                    {
                                                                                       this.§!"W§ = 0;
                                                                                       addr662:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             this.§2!t§ = 0;
                                                                                             addr657:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_ && this)
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                             }
                                                                                             addr729:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr676:
                                                                              }
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 addr369:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§]`§();
                                                                                    addr372:
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       §§goto(addr724);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr701);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr103);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr791:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr820:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§2!t§);
                                                                              addr784:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-1);
                                                                                 addr785:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < §§pop());
                                                                                    addr786:
                                                                                    while(true)
                                                                                    {
                                                                                       addr787:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr788);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr819:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§4!§ = this.§2!t§;
                                                                        addr780:
                                                                        this.§4!S§ = §#!Q§;
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§4!S§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() * (Math.abs(this.§4!§) / 2));
                                                                           }
                                                                           §§pop().§4!S§ = §§pop();
                                                                           addr769:
                                                                           while(true)
                                                                           {
                                                                              this.§=!,§ = this.§4!S§;
                                                                              addr754:
                                                                              while(true)
                                                                              {
                                                                                 this.§!"W§ = 0;
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                        }
                                                                        this.§&!9§ = 0;
                                                                        §§goto(addr729);
                                                                        §§goto(addr791);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop34;
                                                            }
                                                            addr801:
                                                         }
                                                         addr816:
                                                         §§push(§§pop() > §§pop());
                                                         loop35:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr818:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr819);
                                                               }
                                                               §§goto(addr786);
                                                               continue loop35;
                                                            }
                                                         }
                                                         addr817:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr816);
                                                }
                                             }
                                             §§goto(addr801);
                                          }
                                          addr842:
                                       }
                                       else
                                       {
                                          addr425:
                                       }
                                       §§goto(addr369);
                                    }
                                    §§goto(addr791);
                                 }
                                 else
                                 {
                                    §§push(this.§4!S§);
                                    loop50:
                                    while(true)
                                    {
                                       §§push(this.§=!,§);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(2);
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                          }
                                          addr627:
                                       }
                                       loop52:
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr638:
                                                §§push(this.§=!,§);
                                                if(!_loc7_)
                                                {
                                                   addr637:
                                                   §§push(§§pop() - this.§4!S§);
                                                }
                                                §§push(this.§=!,§);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr651:
                                                   _loc3_ = Number(§§pop() / (§§pop() / 2));
                                                   addr649:
                                                }
                                                §§goto(addr649);
                                             }
                                             addr604:
                                             _loc3_ = Number(§6!r§.§+3§(_loc3_));
                                             addr603:
                                             loop47:
                                             while(true)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(this);
                                                   §§push(_loc3_);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * this.§4!§);
                                                   }
                                                   §§pop().§[!v§ = §§pop();
                                                   addr591:
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      loop56:
                                                      while(true)
                                                      {
                                                         addr377:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(360);
                                                            §§push(§6!r§);
                                                            §§push(this.§=!,§);
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(this.§4!S§);
                                                               if(!_loc7_)
                                                               {
                                                                  addr410:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(this.§=!,§);
                                                                  }
                                                                  §§push(§§pop() * §§pop().§+3§(§§pop()));
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(§§pop() * this.§&!9§);
                                                                  }
                                                                  §§pop().§!"W§ = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop47;
                                                                  }
                                                                  §§goto(addr425);
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr410);
                                                            continue loop56;
                                                         }
                                                         §§goto(addr696);
                                                      }
                                                      addr598:
                                                   }
                                                   §§goto(addr669);
                                                }
                                                §§goto(addr696);
                                             }
                                             addr652:
                                          }
                                          else
                                          {
                                             addr496:
                                             §§push(this.§=!,§);
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop50;
                                                               }
                                                               §§push(this.§4!S§);
                                                               if(_loc6_ || param2)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     §§push(this.§=!,§);
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        addr540:
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(_loc7_ && this)
                                                                           {
                                                                              continue loop52;
                                                                           }
                                                                           §§push(2);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr560:
                                                                                 §§push(§§pop() / (§§pop() / §§pop()));
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr784);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr638);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr627);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr649);
                                                                     }
                                                                     §§goto(addr560);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr540);
                                                            }
                                                            break;
                                                         }
                                                         addr571:
                                                         _loc3_ = §§pop();
                                                         addr572:
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(§6!r§.§+3§(_loc3_,false));
                                                               if(!(_loc7_ && _loc3_))
                                                               {
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     addr476:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        addr483:
                                                                        _loc3_ = §§pop();
                                                                        addr484:
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§4!§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc7_ && this))
                                                                                 {
                                                                                    §§push(this.§4!§);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().§[!v§ = §§pop();
                                                                              addr448:
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 §§goto(addr377);
                                                                              }
                                                                              §§goto(addr676);
                                                                           }
                                                                           §§goto(addr820);
                                                                        }
                                                                        §§goto(addr741);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr649);
                                                                  }
                                                                  §§goto(addr603);
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            §§goto(addr769);
                                                         }
                                                         §§goto(addr652);
                                                         addr509:
                                                      }
                                                      break loop52;
                                                   }
                                                   addr501:
                                                }
                                                break;
                                                §§goto(addr496);
                                             }
                                             §§goto(addr604);
                                             addr499:
                                          }
                                          §§goto(addr649);
                                       }
                                       §§goto(addr785);
                                    }
                                 }
                                 §§goto(addr785);
                              }
                              §§goto(addr509);
                           }
                           §§goto(addr501);
                        }
                        §§goto(addr425);
                     }
                     §§goto(addr828);
                  }
                  else
                  {
                     §§push(Math.random() * § !v§);
                     if(!_loc7_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || this)
                           {
                              if(_loc6_ || this)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(param1);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(_loc6_ || param2)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                §§push(§§pop());
                                                loop1:
                                                for(; _loc6_ || param2; if(_loc7_ && param2)
                                                {
                                                   continue;
                                                },if(!(_loc7_ && param2))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr826);
                                                },§§goto(addr791))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop29:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§pop();
                                                            loop30:
                                                            while(_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(this.§="2§);
                                                                     loop31:
                                                                     while(_loc6_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop4:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_ && param1)
                                                                                                {
                                                                                                   continue loop29;
                                                                                                }
                                                                                                §§pop();
                                                                                                loop5:
                                                                                                for(; _loc6_ || param2; if(!(_loc6_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                },if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§goto(addr657);
                                                                                                   }
                                                                                                   addr103:
                                                                                                   return;
                                                                                                },§§goto(addr572),§§goto(addr696))
                                                                                                {
                                                                                                   if(_loc6_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this.§`<§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         addr136:
                                                                                                         if(!(_loc6_ || param1))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!(_loc6_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         while(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc7_ && param2))
                                                                                                            {
                                                                                                               if(!(_loc6_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               if(_loc6_ || param2)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(!(_loc7_ && _loc3_))
                                                                                                                     {
                                                                                                                        this.§<!E§();
                                                                                                                        addr184:
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        loop10:
                                                                                                                        while(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(this.§+5§);
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 addr117:
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc7_)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       addr129:
                                                                                                                                       §§push(!§§pop());
                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                       {
                                                                                                                                          §§goto(addr136);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop10;
                                                                                                                                             §§goto(addr129);
                                                                                                                                          }
                                                                                                                                          addr228:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr712);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                       §§goto(addr117);
                                                                                                                                    }
                                                                                                                                    addr208:
                                                                                                                                 }
                                                                                                                                 §§goto(addr791);
                                                                                                                              }
                                                                                                                              §§goto(addr129);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr591);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr372);
                                                                                                                     }
                                                                                                                     §§goto(addr813);
                                                                                                                  }
                                                                                                                  §§goto(addr780);
                                                                                                               }
                                                                                                               §§goto(addr410);
                                                                                                            }
                                                                                                            §§goto(addr184);
                                                                                                         }
                                                                                                         §§goto(addr103);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr842);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr448);
                                                                                             }
                                                                                             §§goto(addr824);
                                                                                             addr266:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr208);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr263:
                                                                                 }
                                                                                 §§goto(addr817);
                                                                              }
                                                                              §§goto(addr787);
                                                                           }
                                                                           §§goto(addr695);
                                                                        }
                                                                        §§goto(addr266);
                                                                     }
                                                                     §§goto(addr707);
                                                                  }
                                                                  §§goto(addr754);
                                                               }
                                                               §§goto(addr662);
                                                            }
                                                            §§goto(addr484);
                                                         }
                                                         §§goto(addr824);
                                                      }
                                                      addr354:
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr818);
                                             }
                                             §§goto(addr686);
                                          }
                                          §§goto(addr354);
                                       }
                                       else
                                       {
                                          §§goto(addr637);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr560);
                                    }
                                    §§goto(addr638);
                                 }
                                 §§goto(addr651);
                              }
                              else
                              {
                                 §§goto(addr499);
                              }
                           }
                           §§goto(addr560);
                        }
                        §§goto(addr571);
                     }
                  }
                  §§goto(addr476);
               }
               §§goto(addr785);
            }
            §§goto(addr483);
         }
         §§goto(addr598);
      }
      
      public function §<!E§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mName);
            loop0:
            while(true)
            {
               §§push("BIRD_SARDINE");
               addr347:
               loop1:
               while(§§pop() != §§pop())
               {
                  while(true)
                  {
                     this.§9B§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§4!S§ = §#!Q§;
                        while(true)
                        {
                           this.§[!v§ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(!(_loc3_ && this))
                              {
                                 §§push(Math.random() * 1.5);
                                 if(_loc2_ || _loc3_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr307:
                                       §§push(-§§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr326:
                                          §§push(§§pop() * param1);
                                       }
                                    }
                                    §§pop().§4!§ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       this.§2!t§ = this.§4!§;
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§4!S§);
                                          if(_loc2_ || param1)
                                          {
                                             §§push(§§pop() * (Math.abs(this.§4!§) / 3));
                                          }
                                          §§pop().§4!S§ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             this.§=!,§ = this.§4!S§;
                                             loop9:
                                             while(!_loc3_)
                                             {
                                                §§push(this.mName);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push("BIRD_WHITE");
                                                   addr223:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop8;
                                                               }
                                                               addr226:
                                                            }
                                                            else
                                                            {
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     while(_loc2_ || this)
                                                                     {
                                                                        §§pop();
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc2_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           loop22:
                                                                           while(!§§pop())
                                                                           {
                                                                              if(this.§4!S§ >= 350)
                                                                              {
                                                                                 §§push(this);
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    if(Math.random() > 0.5)
                                                                                    {
                                                                                       addr84:
                                                                                       §§push(1);
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr102:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§pop().§&!9§ = §§pop();
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ || this))
                                                                                          {
                                                                                             break loop22;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(Math.random() > 0.5)
                                                                                                {
                                                                                                   addr32:
                                                                                                   §§push(this.§&!9§);
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc2_ || param1)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(0));
                                                                                                }
                                                                                                §§pop().§&!9§ = §§pop();
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr218:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.mName);
                                                                                                               if(_loc3_ && _loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                            addr218:
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                         }
                                                                                                         addr183:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§&!9§ = 0;
                                                                                                         addr124:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr121:
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr124);
                                                                                             }
                                                                                             §§goto(addr32);
                                                                                          }
                                                                                       }
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(-1);
                                                                                    §§goto(addr102);
                                                                                 }
                                                                                 §§goto(addr84);
                                                                              }
                                                                              §§goto(addr121);
                                                                           }
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              break loop19;
                                                                           }
                                                                           continue loop8;
                                                                           addr171:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(_loc2_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           §§goto(addr226);
                                                                           addr203:
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr171);
                                                                  §§goto(addr218);
                                                               }
                                                               this.§&!9§ = 0;
                                                               §§goto(addr183);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr326);
                              }
                              §§goto(addr307);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr113);
      }
      
      public function §]`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§?!T§);
            while(true)
            {
               §§push(this.§4!K§);
               loop1:
               while(true)
               {
                  §§push(§'!S§.§2"<§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     loop3:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this.§?!T§);
                           loop5:
                           while(true)
                           {
                              §§push(this.§7!#§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§[!v§);
                                 if(_loc1_)
                                 {
                                    if(_loc2_ && this)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() + §§pop());
                                    while(true)
                                    {
                                       §§push(§'!S§.§2"<§);
                                    }
                                    addr112:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    while(_loc1_ || _loc2_)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop5;
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       if(_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc1_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop() * Math.PI);
                                       if(!_loc2_)
                                       {
                                          §§pop().rotation = §§pop();
                                          if(_loc1_)
                                          {
                                             if(_loc1_ || this)
                                             {
                                                return;
                                                addr84:
                                             }
                                             continue loop4;
                                          }
                                          continue loop5;
                                       }
                                       §§goto(addr112);
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §,";§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+5§ = true;
         }
         while(true)
         {
            this.§="2§ = false;
            addr138:
            while(true)
            {
               this.§`<§ = false;
               loop2:
               while(true)
               {
                  this.§9B§ = 0;
                  while(true)
                  {
                     this.§8!T§ = 0;
                     while(!(_loc1_ && _loc1_))
                     {
                        this.§4!S§ = 0;
                        while(!(_loc1_ && _loc2_))
                        {
                           continue loop2;
                           if(!(_loc1_ && _loc1_))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
            if(_loc1_ && _loc1_)
            {
               continue;
            }
            this.§!"W§ = 0;
            loop8:
            while(!_loc1_)
            {
               this.§2!t§ = 0;
               while(!_loc1_)
               {
                  this.§&!9§ = 0;
                  if(_loc1_)
                  {
                     continue;
                  }
                  if(!_loc2_)
                  {
                     continue loop8;
                  }
                  §§goto(addr32);
               }
               §§goto(addr68);
            }
            §§goto(addr138);
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§4!K§) * (param1 - this.§4!K§) + (param2 - this.§7!#§) * (param2 - this.§7!#§));
         if(_loc5_ || param1)
         {
            §§push(_loc3_);
            §§push(this.§ s§);
            if(_loc5_ || param2)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!(_loc4_ && param1))
               {
                  §§push(true);
                  if(!_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr91:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr91);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§4!K§);
            loop0:
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr142:
                              while(true)
                              {
                                 §§push(this.§4!K§);
                                 addr124:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr125:
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                    }
                                 }
                              }
                           }
                           addr141:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              while(_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && this)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             §§pop();
                                             if(_loc5_ || this)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(this.§7!#§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc5_)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         addr30:
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            if(!(_loc6_ && param3))
                                                            {
                                                               §§goto(addr44);
                                                            }
                                                            §§goto(addr141);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               addr131:
                                                               while(_loc5_)
                                                               {
                                                                  §§pop();
                                                                  break loop14;
                                                               }
                                                               continue loop2;
                                                               §§goto(addr30);
                                                            }
                                                            continue loop6;
                                                            addr86:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(_loc5_ || this)
                                                         {
                                                            if(_loc6_ && this)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr86);
                                                            §§push(§§pop() >= §§pop());
                                                         }
                                                         addr71:
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   while(!_loc6_)
                                                   {
                                                      continue loop0;
                                                      §§goto(addr120);
                                                   }
                                                   addr120:
                                                   §§goto(addr124);
                                                   addr51:
                                                }
                                                §§goto(addr142);
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr51);
                                             §§goto(addr100);
                                          }
                                          addr100:
                                       }
                                       addr44:
                                       return §§pop();
                                    }
                                    continue;
                                 }
                                 §§goto(addr131);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(_loc5_ || param1)
         {
            §§push(this.§4!K§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr144:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(!§§pop());
                     if(!(_loc4_ && param2))
                     {
                        addr160:
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr137:
                                    addr162:
                                    while(!_loc4_)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                                 addr136:
                              }
                              while(true)
                              {
                                 this.§4!K§ = param1;
                                 loop7:
                                 while(_loc5_ || _loc3_)
                                 {
                                    this.§7!#§ = param2;
                                    loop8:
                                    while(_loc5_)
                                    {
                                       this.§8!T§ = 100;
                                       loop9:
                                       while(!_loc4_)
                                       {
                                          this.§]`§();
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop8;
                                             }
                                             §§push(_loc3_);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      addr57:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop4;
                                             }
                                             §§goto(addr137);
                                          }
                                          return;
                                       }
                                       continue loop7;
                                    }
                                    §§goto(addr140);
                                 }
                                 continue loop0;
                              }
                           }
                           addr135:
                        }
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §`j§() : § "E§
      {
         return this.§8!U§;
      }
      
      public function get §??§() : Number
      {
         return this.§4!S§;
      }
      
      public function get §]!$§() : Number
      {
         return this.§8!T§;
      }
      
      public function set §]!$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!T§ = param1;
         }
      }
      
      public function get §+"-§() : Number
      {
         return this.§-v§;
      }
      
      public function get §'K§() : Boolean
      {
         return this.§="2§;
      }
      
      public function get radius() : Number
      {
         return this.§ s§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §+"-§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-v§ = param1;
         }
      }
      
      public function get §5J§() : Number
      {
         return this.§5!^§;
      }
      
      public function set §5J§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!^§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§<[§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function get §[q§() : Number
      {
         return this.§0!H§;
      }
      
      public function get §%R§() : Number
      {
         return this.§8"<§;
      }
      
      public function §0s§() : Boolean
      {
         return this.§+5§;
      }
   }
}
