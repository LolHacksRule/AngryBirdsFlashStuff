package §%!0§
{
   import §&!P§.§``§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import §6]§.§=!1§;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §<!a§.b2Vec2;
   import §]";§.§!<§;
   import §]";§.§1Y§;
   import §]";§.§34§;
   
   public class §%Q§
   {
      
      public static const §`"5§:String = "ChannelSlingshot";
      
      public static const §^!&§:Number = 900;
      
      public static const §]!7§:Number = 200;
      
      public static const §+k§:Number = 200;
      
      public static const §6"?§:Number = 1500;
      
      public static const §?O§:Number = 5000;
      
      public static const §^m§:Number = 1000;
      
      public static const §8!s§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §`"5§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §^!&§ = 900;
               loop1:
               while(true)
               {
                  §]!7§ = 200;
                  loop2:
                  while(true)
                  {
                     §+k§ = 200;
                     loop3:
                     while(_loc2_)
                     {
                        §6"?§ = 1500;
                        while(true)
                        {
                           §?O§ = 5000;
                           loop5:
                           while(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 §^m§ = 1000;
                                 loop6:
                                 while(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       §8!s§ = 1000;
                                       if(_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop2;
                                          }
                                          continue loop5;
                                       }
                                       continue loop6;
                                    }
                                    return;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §@b§:Number;
      
      protected var §0!7§:Number;
      
      private var §<"#§:§34§;
      
      protected var §0!>§:Number;
      
      protected var §6!d§:Number = 1;
      
      private var § D§:Sprite;
      
      protected var §,0§:§"!B§;
      
      private var §>i§:§7"#§;
      
      protected var §<!r§:§3"!§;
      
      private var §]!'§:Number;
      
      private var §3!x§:Boolean = false;
      
      private var §'G§:Boolean = false;
      
      protected var §;Y§:Boolean = false;
      
      private var §7Y§:Number;
      
      private var §88§:Number = 0;
      
      private var §^H§:Number = 0;
      
      private var §^!L§:Number = 0;
      
      private var §7<§:Number = 1000;
      
      private var §7!;§:Number;
      
      private var §;z§:Number;
      
      private var §-" §:int;
      
      private var §`!k§:Number = 0;
      
      protected var §?U§:Number;
      
      protected var §5"2§:Number;
      
      private var §9T§:Number = 1;
      
      private var §!!&§:Number = 0;
      
      private var §1"§:b2Vec2;
      
      private var §=9§:Number = 1;
      
      public function §%Q§(param1:§3"!§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§<!r§ = param1;
               while(true)
               {
                  this.§ D§ = param2;
                  loop2:
                  while(_loc6_ || param1)
                  {
                     this.mName = param3;
                     loop3:
                     while(_loc6_)
                     {
                        this.§<"#§ = §!<§.§[!@§(this.mName).§9Y§;
                        loop4:
                        while(true)
                        {
                           this.mX = param4;
                           loop5:
                           while(true)
                           {
                              this.mY = param5;
                              while(true)
                              {
                                 this.§@b§ = param4;
                                 continue loop5;
                                 addr109:
                                 if(!(_loc6_ || param2))
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 this.§3!x§ = false;
                                 loop10:
                                 while(true)
                                 {
                                    this.§'G§ = false;
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr68:
                                          if(!(_loc7_ && param3))
                                          {
                                             continue loop4;
                                          }
                                          addr123:
                                          while(true)
                                          {
                                             this.§0!>§ = 0;
                                             §§goto(addr68);
                                          }
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          if(!(_loc6_ || param1))
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr109);
                                       }
                                       addr52:
                                       continue loop3;
                                       while(_loc6_ || param3)
                                       {
                                          if(_loc6_)
                                          {
                                             this.§@N§();
                                             do
                                             {
                                                this.§?U§ = 0;
                                             }
                                             while(_loc7_);
                                             
                                             if(_loc6_ || param2)
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   return;
                                                   addr43:
                                                }
                                                continue loop2;
                                                continue loop2;
                                             }
                                             continue;
                                             continue;
                                          }
                                          continue loop10;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function §=!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§3!x§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§ D§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr75:
                     this.§ D§.dispose();
                  }
                  do
                  {
                     this.§ D§ = null;
                  }
                  while(!(_loc2_ || this));
                  
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      public function §"#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§'G§);
            loop0:
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
                        §§pop();
                        addr396:
                        while(true)
                        {
                           §§push(this.§3!x§);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§6!d§);
                           loop6:
                           while(true)
                           {
                              §§push(0);
                              loop7:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§^!L§ = 0;
                                       addr358:
                                       while(true)
                                       {
                                          this.§`!k§ = 0;
                                          addr349:
                                          while(true)
                                          {
                                             this.§0!>§ = 0;
                                             addr344:
                                             while(true)
                                             {
                                                this.§;z§ = 0;
                                                addr339:
                                                while(true)
                                                {
                                                   this.§6!d§ = 0;
                                                   addr334:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr355:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Math.min(param1,this.§7Y§)));
                                    loop11:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.mX);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(param1);
                                             if(_loc2_ || param1)
                                             {
                                                §§push(this.§<!r§.mX);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§pop() - this.mX);
                                                   if(_loc2_)
                                                   {
                                                      addr316:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || this)
                                                      {
                                                         §§push(this.§7Y§);
                                                      }
                                                      §§pop().mX = §§pop() + §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§push(this);
                                                            §§push(this.mY);
                                                            if(_loc2_ || this)
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(this.§<!r§.mY);
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     §§push(§§pop() - this.mY);
                                                                     if(_loc2_ || param1)
                                                                     {
                                                                        addr258:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           addr263:
                                                                           §§push(§§pop() / this.§7Y§);
                                                                        }
                                                                        §§pop().mY = §§pop() + §§pop();
                                                                        loop14:
                                                                        while(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.mY);
                                                                              if(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() / 50);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(this.§7Y§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(§§pop() / §^!&§);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              §§pop().mY = §§pop();
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§0!>§);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(360 - this.§0!>§);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr165:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr163:
                                                                                             §§push(§§pop() / this.§7Y§);
                                                                                          }
                                                                                          §§pop().§0!>§ = §§pop() + §§pop();
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                if(!(_loc2_ || _loc3_))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(this);
                                                                                                §§push(this.§7Y§);
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§7Y§ = §§pop();
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§7Y§);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§83§();
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            addr28:
                                                                                                            if(_loc2_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        this.mY = this.§<!r§.mY;
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr396);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr349);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr339);
                                                                                                               addr118:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     this.§3!x§ = true;
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§0!>§ = 0;
                                                                                                                        addr51:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc3_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              addr88:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop17;
                                                                                                                                 }
                                                                                                                                 addr109:
                                                                                                                                 while(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr388);
                                                                                                                                    }
                                                                                                                                    this.mX = this.§<!r§.mX;
                                                                                                                                    §§goto(addr118);
                                                                                                                                 }
                                                                                                                                 continue loop14;
                                                                                                                              }
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr28);
                                                                                                               }
                                                                                                               §§goto(addr334);
                                                                                                               addr79:
                                                                                                            }
                                                                                                            §§goto(addr88);
                                                                                                         }
                                                                                                         §§goto(addr51);
                                                                                                      }
                                                                                                      addr23:
                                                                                                   }
                                                                                                   §§goto(addr109);
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                             §§goto(addr358);
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr163);
                                                                                 }
                                                                                 §§goto(addr165);
                                                                              }
                                                                           }
                                                                           §§goto(addr344);
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr258);
                                                               }
                                                               §§goto(addr263);
                                                            }
                                                            §§goto(addr258);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr355);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr316);
                                                   §§push(§§pop() / §§pop());
                                                }
                                             }
                                          }
                                          §§goto(addr316);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr388:
                     return;
                  }
               }
            }
         }
         §§goto(addr349);
      }
      
      public function §`!Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'G§ = true;
            while(true)
            {
               this.§7Y§ = §^!&§;
               loop3:
               while(_loc2_ || this)
               {
                  §§push(this);
                  §§push(this.mY);
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.§`!k§);
                  }
                  §§pop().mY = §§pop();
                  while(!_loc1_)
                  {
                     this.§`!k§ = 0;
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr20);
                        }
                        continue loop3;
                     }
                  }
                  while(_loc2_)
                  {
                     if(this.§`!k§ == 0)
                     {
                        addr20:
                     }
                     continue loop3;
                     return;
                  }
                  while(true)
                  {
                     this.§5"7§(§34§.§%s§);
                     §§goto(addr72);
                  }
                  addr72:
               }
            }
         }
         §§goto(addr89);
      }
      
      public function §3u§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            §§push(this.§3!x§);
            if(!_loc3_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§5"2§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop() > this.§<!r§.§`!G§.borders.mBorderGround_B2)
                                 {
                                    loop4:
                                    while(!_loc3_)
                                    {
                                       §§push(this);
                                       §§push(this.§<!r§.§`!G§.borders.mBorderGround_B2);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - this.§5"2§);
                                       }
                                       §§pop().§1!?§(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          this.§?U§ = -1;
                                          loop6:
                                          while(true)
                                          {
                                             addr337:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§?U§);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§?U§ = §§pop();
                                                loop8:
                                                do
                                                {
                                                   §§push(this.§?U§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§push(0);
                                                      if(_loc4_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            break;
                                                         }
                                                         while(!_loc3_)
                                                         {
                                                            §§push(this.§^!L§);
                                                            while(!_loc3_)
                                                            {
                                                               §§push(0);
                                                            }
                                                            continue loop3;
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               addr161:
                                                               break loop8;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                      while(!(_loc3_ && this))
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  loop13:
                                                                  while(_loc4_)
                                                                  {
                                                                     if(!isNaN(this.§5"2§))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr325:
                                                                              this.§?U§ = this.§^!L§;
                                                                              break;
                                                                           }
                                                                           §§push(this.§<!r§);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§`!G§);
                                                                              addr276:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().objects);
                                                                                 addr277:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§&A§(this.mX,this.§5"2§));
                                                                                    addr282:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          addr286:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr190:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              this.§;Y§ = false;
                                                                              addr210:
                                                                              if(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 addr252:
                                                                                 this.§?U§ = -1;
                                                                                 addr255:
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              this.§?U§ = -1;
                                                                              addr153:
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 break loop8;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() >= 0)
                                                                              {
                                                                                 §§push(this.§<!r§);
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§`!G§);
                                                                                    addr167:
                                                                                    while(!(_loc3_ && this))
                                                                                    {
                                                                                       §§push(§§pop().objects);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().getObject(§§pop()));
                                                                                                addr184:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§5"$§);
                                                                                                   addr185:
                                                                                                   addr188:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr188:
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr190);
                                                                                                   }
                                                                                                   §§goto(addr255);
                                                                                                }
                                                                                             }
                                                                                             addr183:
                                                                                          }
                                                                                          §§push(§§pop().objects);
                                                                                          addr101:
                                                                                          break;
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§push(_loc2_);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(§§pop().getObject(§§pop()));
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                §§push(§§pop().§+!>§());
                                                                                                if(!(_loc3_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            this.§;Y§ = false;
                                                                                                         }
                                                                                                         addr141:
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            this.§?U§ = 2000;
                                                                                                            addr57:
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && _loc2_))
                                                                                                                  {
                                                                                                                     break loop8;
                                                                                                                     addr78:
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               addr238:
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               addr249:
                                                                                                               §§push(this);
                                                                                                               §§push(param1);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§push(§§pop() / 100);
                                                                                                               }
                                                                                                               §§push(§§pop().§1!?§(§§pop()));
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     this.§?U§ = 0;
                                                                                                                     addr224:
                                                                                                                     break loop21;
                                                                                                                  }
                                                                                                                  §§goto(addr252);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  addr418:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr188);
                                                                                                            }
                                                                                                            §§goto(addr252);
                                                                                                         }
                                                                                                         §§goto(addr153);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§?U§ = 500;
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§goto(addr224);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr210);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr141);
                                                                                                            }
                                                                                                            §§goto(addr210);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr57);
                                                                                                   }
                                                                                                   §§goto(addr249);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr185);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr184);
                                                                                             }
                                                                                             §§goto(addr185);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr183);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr276);
                                                                                 }
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                        §§goto(addr285);
                                                                        §§goto(addr286);
                                                                     }
                                                                     §§goto(addr161);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr325);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         continue loop0;
                                                      }
                                                      addr368:
                                                   }
                                                   §§goto(addr314);
                                                }
                                                while(_loc3_ && this);
                                                
                                                §§goto(addr22);
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§?U§);
                                       if(_loc4_ || param1)
                                       {
                                          break loop3;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 §§goto(addr337);
                              }
                              §§goto(addr368);
                           }
                        }
                        addr22:
                        return;
                     }
                     addr376:
                  }
               }
            }
            §§goto(addr418);
         }
         §§goto(addr78);
      }
      
      public function §1!?§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this);
            §§push(this.mY);
            if(!(_loc2_ && this))
            {
               §§push(§§pop() + param1);
            }
            §§pop().mY = §§pop();
            loop0:
            do
            {
               §§push(this);
               §§push(this.§5"2§);
               if(!_loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§5"2§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§5"2§);
                  if(!_loc2_)
                  {
                     §§push(this.§<!r§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop().§`!G§);
                        if(!_loc2_)
                        {
                           §§push(§§pop().borders);
                           if(!_loc2_)
                           {
                              §§push(§§pop().mBorderGround_B2);
                              if(_loc3_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(this.§5"2§);
                                       if(!(_loc2_ && this))
                                       {
                                          addr153:
                                          §§push(§§pop() - this.§<!r§.§`!G§.borders.mBorderGround_B2);
                                          if(_loc2_ && _loc2_)
                                          {
                                          }
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       break;
                                    }
                                    loop3:
                                    do
                                    {
                                       §§push(this);
                                       §§push(this.mY);
                                       if(_loc3_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().mY = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§5"2§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§5"2§ = §§pop();
                                          addr85:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                this.§83§();
                                                continue;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    while(!_loc3_);
                                    
                                    continue loop0;
                                    addr163:
                                 }
                                 else
                                 {
                                    addr47:
                                 }
                                 while(true)
                                 {
                                    this.§83§();
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc3_ || this)
                                    {
                                       continue;
                                    }
                                 }
                                 return §§pop();
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       §§goto(addr66);
                                    }
                                    §§goto(addr85);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr153);
                  }
                  break;
               }
               param1 = §§pop();
               §§goto(addr163);
            }
            while(!(_loc3_ || this));
            
            §§goto(addr47);
            §§push(true);
         }
         §§goto(addr55);
      }
      
      public function §@N§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§+!I§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§1Y§ = §!<§.§[!@§(this.mName).shape;
         if(!(_loc4_ && _loc1_))
         {
            §§push(_loc1_.§0! §());
            loop0:
            while(true)
            {
               §§push(§1Y§.§;&§);
               while(§§pop() != §§pop())
               {
                  §§push(_loc1_.§0! §());
                  if(!_loc4_)
                  {
                     §§push(§1Y§.§0R§);
                     if(!(_loc5_ || this))
                     {
                        continue;
                     }
                     if(§§pop() == §§pop())
                     {
                        while(true)
                        {
                           this.§1"§ = new b2Vec2(0,0);
                           addr135:
                           while(true)
                           {
                              this.§]!'§ = 1.5;
                              addr111:
                              while(true)
                              {
                              }
                           }
                        }
                        addr129:
                     }
                     while(true)
                     {
                        this.§,0§ = this.§<!r§.§`!G§.§00§.§`" §(this.mName);
                        §§goto(addr111);
                     }
                     addr96:
                     continue;
                  }
                  continue loop0;
               }
               loop2:
               while(true)
               {
                  this.§1"§ = _loc1_.§=`§()[0];
                  addr165:
                  while(true)
                  {
                     this.§]!'§ = _loc1_.§",§;
                     addr141:
                     while(true)
                     {
                        if(_loc4_)
                        {
                           continue loop2;
                        }
                        §§goto(addr96);
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(this.§,0§)
            {
               this.§;"9§(this.§,0§.getFrame(0));
               if(_loc4_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§goto(addr38);
                     }
                     §§goto(addr165);
                  }
                  else
                  {
                     §§goto(addr111);
                  }
               }
               else
               {
                  addr69:
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        this.§;"9§(null);
                        continue;
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr135);
               }
               §§goto(addr111);
            }
            §§goto(addr69);
         }
         addr38:
      }
      
      public function §;"9§(param1:§+!I§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc5_ || this)
         {
            if(!param1)
            {
               addr32:
               _loc2_ = this.§<!r§.§0z§.§8=§.§-t§();
               if(_loc5_ || _loc3_)
               {
                  addr59:
                  §§push(this.§>i§);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc4_)
                        {
                           this.§>i§ = new §7"#§(_loc2_);
                           if(_loc5_)
                           {
                              this.§ D§.addChild(this.§>i§);
                              loop0:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§>i§);
                                       loop2:
                                       while(true)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(this.§>i§);
                                             loop3:
                                             while(true)
                                             {
                                                §§push(-§§pop().width);
                                                loop4:
                                                while(true)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(2);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr237:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                         }
                                                      }
                                                      addr236:
                                                   }
                                                   else
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§>i§);
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop().scaleX = §§pop();
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ && this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr294:
                                                                                             addr294:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§>i§);
                                                                                                break loop12;
                                                                                             }
                                                                                             continue loop27;
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr202:
                                                                                       }
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          addr162:
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop22;
                                                                                       }
                                                                                       addr238:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§>i§);
                                                                                          continue loop3;
                                                                                       }
                                                                                    }
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§>i§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop30;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§pop().scaleY = §§pop();
                                                                                             loop25:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                {
                                                                                                   break loop2;
                                                                                                }
                                                                                                addr119:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§83§();
                                                                                                   if(_loc4_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop25;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break loop24;
                                                                                                   }
                                                                                                   §§goto(addr138);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§1"§);
                                                                                             addr288:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr289:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§,4§.§,^§);
                                                                                                   addr291:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      addr292:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr286:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          §§goto(addr294);
                                                                                       }
                                                                                       §§goto(addr162);
                                                                                    }
                                                                                    addr138:
                                                                                    return;
                                                                                    addr169:
                                                                                 }
                                                                                 addr192:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§1"§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop().y);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§,4§.§,^§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   addr261:
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   §§goto(addr289);
                                                                                                }
                                                                                                §§goto(addr291);
                                                                                             }
                                                                                             §§goto(addr292);
                                                                                          }
                                                                                          §§goto(addr261);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop4;
                                                                                 §§goto(addr288);
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1.pivotY);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§goto(addr247);
                                                                        §§push(-§§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr286);
                                                                        }
                                                                        addr285:
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr277);
                                                               }
                                                               addr277:
                                                               addr120:
                                                            }
                                                            else
                                                            {
                                                               addr281:
                                                               while(true)
                                                               {
                                                                  §§push(this.§>i§);
                                                                  break loop22;
                                                               }
                                                               addr281:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr285);
                                                            §§goto(addr281);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr238);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().texture = _loc2_;
                                                break loop2;
                                             }
                                             addr309:
                                          }
                                       }
                                       continue;
                                    }
                                    §§goto(addr281);
                                 }
                              }
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr294);
                     }
                     else
                     {
                        §§push(this.§>i§);
                     }
                     §§goto(addr309);
                  }
                  §§goto(addr134);
               }
               §§goto(addr119);
            }
            else
            {
               _loc2_ = param1.texture;
               if(!_loc4_)
               {
                  §§push(param1.scale);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr59);
         }
         §§goto(addr32);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(_loc5_ || param1)
         {
            this.§3u§(param1);
            loop0:
            while(true)
            {
               §§push(this.§'G§);
               addr166:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§^!L§ = 0;
                        addr170:
                        loop13:
                        while(true)
                        {
                           §§push(false);
                           addr149:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr150:
                              while(!_loc6_)
                              {
                              }
                              continue loop13;
                           }
                        }
                     }
                     addr167:
                  }
                  while(true)
                  {
                     if(this.mName == "BIRD_SARDINE")
                     {
                        addr26:
                        return;
                     }
                     while(true)
                     {
                        this.§-h§(param1);
                        loop4:
                        while(true)
                        {
                           this.§["6§(param1);
                           addr109:
                           while(true)
                           {
                              if(!(_loc6_ && this))
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc5_ || this)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr170);
                                 }
                                 break;
                              }
                              continue loop4;
                           }
                           §§goto(addr150);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr167);
      }
      
      public function §-h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§88§);
            while(true)
            {
               §§push(0);
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§^H§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(§§pop() <= §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(!_loc2_)
                                          {
                                             §§pop();
                                             while(!(_loc2_ && this))
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      §§push(Boolean(this.§<!r§.mSlingShotState));
                                                      if(_loc2_ && param1)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr49:
                                                                     this.§8,§();
                                                                     break loop8;
                                                                  }
                                                                  §§goto(addr100);
                                                               }
                                                               break loop8;
                                                            }
                                                            §§goto(addr20);
                                                         }
                                                         addr38:
                                                      }
                                                      while(!(_loc2_ && _loc3_))
                                                      {
                                                         continue loop8;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop2;
                                                      }
                                                      continue loop9;
                                                   }
                                                   addr132:
                                                   if(!(_loc3_ || param1))
                                                   {
                                                      §§goto(addr176);
                                                   }
                                                   this.§9"-§();
                                                }
                                                return;
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr38);
                                    }
                                    §§goto(addr20);
                                 }
                                 §§goto(addr125);
                              }
                           }
                        }
                     }
                     continue;
                  }
                  if(_loc3_ || this)
                  {
                     §§push(this);
                     §§push(this.§88§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§88§ = §§pop();
                  }
                  addr176:
                  §§push(this.§88§);
                  §§push(0);
                  if(§§pop() <= §§pop())
                  {
                     §§goto(addr132);
                  }
                  §§goto(addr112);
               }
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr70);
               §§push(§§pop() < param1);
            }
         }
         §§goto(addr49);
      }
      
      public function §9"-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§88§ = 0;
         }
         do
         {
            this.§;"9§(this.§,0§.getFrame(0));
         }
         while(!_loc1_);
         
      }
      
      public function §8,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  this.§88§ = §]!7§;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        this.§;"9§(this.§,0§.getSubAnimation("blink").getFrame(0));
                        if(_loc2_ || this)
                        {
                           return;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §["6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§^H§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr165:
                     §§push(this);
                     §§push(this.§^H§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§^H§ = §§pop();
                     addr173:
                     §§push(this.§^H§);
                  }
                  else
                  {
                     §§push(this.§88§);
                     loop2:
                     for(; _loc3_ || this; while(true)
                     {
                        §§push(Math.random() * §?O§);
                        if(_loc3_ || param1)
                        {
                           continue loop0;
                        }
                        continue loop2;
                        §§goto(addr134);
                     },continue loop0)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           if(!(_loc3_ || _loc3_))
                           {
                              continue loop1;
                           }
                           §§push(§§pop() <= §§pop());
                           if(_loc3_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc2_ && this))
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop2;
                                          }
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(!_loc2_)
                                             {
                                                addr92:
                                                this.§5"7§();
                                                addr94:
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                addr102:
                                                while(!(_loc3_ || _loc2_))
                                                {
                                                   §§goto(addr165);
                                                   this.§6$§();
                                                }
                                                break;
                                             }
                                             §§goto(addr173);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr94);
                                    }
                                    §§push(§§pop() < param1);
                                    addr48:
                                    break;
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       continue;
                                    }
                                    addr134:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                    addr134:
                                 }
                                 return;
                              }
                           }
                           §§goto(addr134);
                        }
                        if(§§pop() <= §§pop())
                        {
                           §§goto(addr141);
                        }
                        §§goto(addr102);
                     }
                  }
                  §§goto(addr140);
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr92);
      }
      
      public function §6$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§^H§ = 0;
         }
         do
         {
            this.§;"9§(this.§,0§.getFrame(0));
         }
         while(_loc1_ && this);
         
      }
      
      public function §5"7§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§^H§);
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
                              this.§6$§();
                              addr262:
                              while(true)
                              {
                              }
                              addr151:
                              if(!(_loc3_ || this))
                              {
                                 continue;
                              }
                              §§push(param2);
                              if(_loc3_)
                              {
                                 addr56:
                                 if(_loc3_ || param1)
                                 {
                                    addr64:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr267);
                                                }
                                                §``§.§%!s§(param1,this.§<"#§);
                                             }
                                          }
                                          else
                                          {
                                             §``§.§%!s§(param1,this.§<"#§,§`"5§);
                                             if(_loc3_ || param1)
                                             {
                                                addr44:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr24:
                                                   return;
                                                   addr51:
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§34§.§"y§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(int(§§pop()));
                                                      }
                                                      addr204:
                                                   }
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      addr206:
                                                      loop10:
                                                      while(_loc3_)
                                                      {
                                                         addr208:
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§^H§ = §+k§;
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  this.§;"9§(this.§,0§.getSubAnimation("yell").getFrame(0));
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§3!x§);
                                                                     addr162:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr140:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§goto(addr151);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr262);
                                                                                          }
                                                                                       }
                                                                                       loop20:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§push(this.§'G§);
                                                                                          if(!(_loc4_ && param1))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc4_ && param2)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             continue loop20;
                                                                                          }
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr165);
                                                                           }
                                                                        }
                                                                        §§goto(addr56);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr179:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               this.§9"-§();
                                                               break loop10;
                                                            }
                                                            break;
                                                            §§goto(addr208);
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         addr184:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc3_ || param2)
                                                            {
                                                               if(§§pop() < 0)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr204);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr82:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   break;
                                                }
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr82);
                                       }
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          §§goto(addr206);
                                       }
                                       §§goto(addr24);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr64);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§88§);
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc4_ && param1)
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              §§goto(addr235);
                           }
                           §§goto(addr184);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr267:
            return;
         }
         §§goto(addr51);
      }
      
      public function §^"4§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_ || param1)
         {
            §§push(this.§^!L§);
            if(!_loc7_)
            {
               §§push(0);
               if(_loc6_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_ || this)
                     {
                        §§push(this);
                        §§push(this.§^!L§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§^!L§ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(this.§^!L§);
                           if(_loc6_)
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 addr57:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§-" §);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc6_)
                                       {
                                          _loc4_.§-" § = _loc5_;
                                       }
                                       if(_loc6_)
                                       {
                                          §§push(this);
                                          §§push(this.§;z§);
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§;z§ = §§pop();
                                          §§push(this.§3!x§);
                                          loop23:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop24:
                                             while(true)
                                             {
                                                addr766:
                                                if(§§pop())
                                                {
                                                   addr767:
                                                   §§pop();
                                                   loop25:
                                                   do
                                                   {
                                                      §§push(this.§-" §);
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            loop28:
                                                            while(true)
                                                            {
                                                               addr752:
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§-" §);
                                                                     addr755:
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        addr756:
                                                                        while(true)
                                                                        {
                                                                           addr757:
                                                                           §§push(§§pop() > §§pop());
                                                                           §§push(§§pop() > §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  addr753:
                                                               }
                                                               else
                                                               {
                                                                  addr654:
                                                                  §§push(!this.§3!x§);
                                                                  §§push(!this.§3!x§);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr664:
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 addr638:
                                                                                 §§push(param2);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop24;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                              }
                                                                              addr667:
                                                                           }
                                                                           else
                                                                           {
                                                                              loop50:
                                                                              while(true)
                                                                              {
                                                                                 this.§0!>§ = 0;
                                                                                 addr684:
                                                                                 addr672:
                                                                                 this.§6!d§ = 0;
                                                                                 while(_loc7_ && this)
                                                                                 {
                                                                                    this.§7<§ = this.§^!L§;
                                                                                    continue loop50;
                                                                                    §§goto(addr684);
                                                                                 }
                                                                                 break loop28;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr665:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr645:
                                                                           this.§0!f§(2.25);
                                                                           break loop28;
                                                                           addr648:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr626:
                                                                        }
                                                                        this.§^!L§ = 0;
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              this.§`!k§ = 0;
                                                                              this.§0!>§ = 0;
                                                                              addr607:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ || _loc3_)
                                                                                 {
                                                                                    this.§;z§ = 0;
                                                                                    addr602:
                                                                                    break loop28;
                                                                                 }
                                                                                 addr733:
                                                                                 addr733:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§;z§ = -1;
                                                                                    addr736:
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       addr720:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§7!;§ = this.§;z§;
                                                                                          addr725:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§^!L§ = §8!s§;
                                                                                          }
                                                                                          continue loop26;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr607:
                                                                              addr619:
                                                                           }
                                                                           §§goto(addr725);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           §§goto(addr736);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           addr759:
                                                                           §§pop();
                                                                           addr729:
                                                                           §§push(this.§;z§);
                                                                           §§push(-1);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() < §§pop());
                                                                           }
                                                                           addr760:
                                                                           addr730:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr732:
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr733);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr758:
                                                                  }
                                                                  §§goto(addr720);
                                                               }
                                                               §§goto(addr758);
                                                            }
                                                            addr332:
                                                            this.§83§();
                                                            addr83:
                                                            return;
                                                            addr751:
                                                            addr539:
                                                            addr335:
                                                         }
                                                         §§goto(addr756);
                                                      }
                                                      §§goto(addr755);
                                                   }
                                                   while(!(_loc6_ || param2));
                                                   
                                                   §§push(this);
                                                   §§push(this.§^!L§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() * (Math.abs(this.§7!;§) / 2));
                                                   }
                                                   §§pop().§^!L§ = §§pop();
                                                   §§goto(addr705);
                                                }
                                                §§goto(addr751);
                                             }
                                          }
                                          addr764:
                                          addr792:
                                       }
                                       §§goto(addr725);
                                    }
                                    else
                                    {
                                       loop46:
                                       while(true)
                                       {
                                          this.§0!f§();
                                          loop47:
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc7_ && param2)
                                                   {
                                                      §§goto(addr760);
                                                   }
                                                   §§goto(addr83);
                                                }
                                                else
                                                {
                                                   addr433:
                                                   if(!_loc7_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§7!;§);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc6_)
                                                         {
                                                            §§push(this.§7!;§);
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§pop().§`!k§ = §§pop();
                                                      addr412:
                                                      if(_loc6_ || this)
                                                      {
                                                         loop48:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(360);
                                                            §§push(§=!1§);
                                                            §§push(this.§7<§);
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(this.§^!L§);
                                                               if(!_loc7_)
                                                               {
                                                                  addr359:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(this.§7<§);
                                                                  }
                                                                  §§push(§§pop() * §§pop().§-!1§(§§pop()));
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * this.§6!d§);
                                                                  }
                                                                  §§pop().§0!>§ = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr529:
                                                                  while(_loc6_ || _loc3_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(_loc3_);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           §§push(§§pop() * this.§7!;§);
                                                                        }
                                                                        §§pop().§`!k§ = §§pop();
                                                                        continue loop48;
                                                                        addr515:
                                                                     }
                                                                     §§goto(addr753);
                                                                  }
                                                                  §§goto(addr672);
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                            §§goto(addr359);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr665);
                                                   }
                                                }
                                                §§goto(addr645);
                                             }
                                             else
                                             {
                                                loop12:
                                                while(!(_loc7_ && param1))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(this.§;Y§);
                                                         if(_loc6_)
                                                         {
                                                            addr92:
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr100:
                                                               §§push(!§§pop());
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop47;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop46;
                                                                           }
                                                                           §§goto(addr515);
                                                                        }
                                                                        §§goto(addr332);
                                                                     }
                                                                     addr109:
                                                                  }
                                                                  §§goto(addr654);
                                                               }
                                                               else
                                                               {
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr174:
                                                                                                loop11:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         §§goto(addr767);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr299:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop1:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(_loc6_ || param1)
                                                                                                            {
                                                                                                               if(!(_loc7_ && param2))
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  while(!(_loc7_ && param2))
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(this.§3!x§);
                                                                                                                                 break loop10;
                                                                                                                              }
                                                                                                                              §§goto(addr648);
                                                                                                                           }
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        addr590:
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           §§push(§=!1§.§-!1§(_loc3_));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr528:
                                                                                                                                 _loc3_ = Number(§§pop());
                                                                                                                                 §§goto(addr529);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr588:
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr589:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       §§goto(addr590);
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    §§goto(addr764);
                                                                                                                                 }
                                                                                                                                 addr588:
                                                                                                                              }
                                                                                                                              §§goto(addr332);
                                                                                                                           }
                                                                                                                           addr520:
                                                                                                                        }
                                                                                                                        §§goto(addr792);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr493:
                                                                                                                        if(_loc6_ || this)
                                                                                                                        {
                                                                                                                           §§push(§=!1§.§-!1§(_loc3_,false));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!_loc7_)
                                                                                                                                    {
                                                                                                                                       addr432:
                                                                                                                                       _loc3_ = Number(§§pop());
                                                                                                                                       §§goto(addr433);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§7<§);
                                                                                                                                          addr470:
                                                                                                                                          loop15:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc7_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   loop19:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr492:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  §§goto(addr493);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr491:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            loop17:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() >= §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr550:
                                                                                                                                                                  if(!(_loc7_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc7_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        addr568:
                                                                                                                                                                        §§push(this.§7<§ - this.§^!L§);
                                                                                                                                                                        if(!(_loc7_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§7<§);
                                                                                                                                                                           if(_loc6_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop15;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr588);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr626);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr607);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§7<§);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           addr454:
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§^!L§);
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc7_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc7_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 continue loop40;
                                                                                                                                                                              }
                                                                                                                                                                              addr547:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                 addr548:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr568);
                                                                                                                                                                           addr454:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr730);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr729);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr454);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr587:
                                                                                                                                                            §§goto(addr588);
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr332);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr587);
                                                                                                                                                   }
                                                                                                                                                   addr481:
                                                                                                                                                }
                                                                                                                                                §§goto(addr548);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr587);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr539);
                                                                                                                                 }
                                                                                                                                 §§goto(addr491);
                                                                                                                              }
                                                                                                                              §§goto(addr492);
                                                                                                                           }
                                                                                                                           addr425:
                                                                                                                        }
                                                                                                                        §§goto(addr619);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr412);
                                                                                                                  addr316:
                                                                                                               }
                                                                                                               §§goto(addr664);
                                                                                                            }
                                                                                                            §§goto(addr638);
                                                                                                            addr301:
                                                                                                         }
                                                                                                         addr221:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr222:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               addr223:
                                                                                                               while(!_loc7_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                        §§goto(addr757);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr301);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   §§goto(addr757);
                                                                                                }
                                                                                                §§goto(addr641);
                                                                                                addr174:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr109);
                                                                                             }
                                                                                             §§goto(addr332);
                                                                                          }
                                                                                          §§goto(addr766);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                              }
                                                                              §§goto(addr654);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  while(!(_loc7_ && param2))
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§goto(addr221);
                                                                        §§push(!§§pop());
                                                                     }
                                                                     §§goto(addr752);
                                                                  }
                                                                  §§goto(addr759);
                                                                  addr142:
                                                               }
                                                               §§goto(addr638);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr100);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(this.§'G§);
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc7_ && param1))
                                                               {
                                                                  §§goto(addr142);
                                                                  §§push(!§§pop());
                                                               }
                                                               §§goto(addr732);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         §§goto(addr684);
                                                      }
                                                      §§goto(addr550);
                                                   }
                                                   break;
                                                   §§goto(addr186);
                                                }
                                                addr186:
                                                §§goto(addr335);
                                             }
                                          }
                                       }
                                       addr115:
                                    }
                                    §§goto(addr607);
                                 }
                                 else
                                 {
                                    §§push(this.§^!L§);
                                    if(_loc6_)
                                    {
                                       §§goto(addr547);
                                       §§push(this.§7<§);
                                    }
                                 }
                                 §§goto(addr588);
                              }
                              §§goto(addr759);
                           }
                           §§goto(addr492);
                        }
                        §§goto(addr667);
                     }
                     §§goto(addr115);
                  }
                  else
                  {
                     §§push(Math.random() * §^m§);
                     if(_loc6_ || param2)
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_ || param2)
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          §§push(param1);
                                          if(_loc6_ || param1)
                                          {
                                             if(_loc6_)
                                             {
                                                §§goto(addr299);
                                                §§push(§§pop() < §§pop());
                                             }
                                             §§goto(addr470);
                                          }
                                          §§goto(addr481);
                                       }
                                       §§goto(addr568);
                                    }
                                    §§goto(addr589);
                                 }
                                 §§goto(addr520);
                              }
                              §§goto(addr528);
                           }
                           §§goto(addr454);
                        }
                        §§goto(addr425);
                     }
                  }
                  §§goto(addr432);
               }
               §§goto(addr57);
            }
            §§goto(addr568);
         }
         §§goto(addr332);
      }
      
      public function §0!f§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mName);
            while(§§pop() != "BIRD_SARDINE")
            {
               while(true)
               {
                  this.§-" § = 0;
                  while(true)
                  {
                     this.§^!L§ = §8!s§;
                     while(true)
                     {
                        this.§`!k§ = 0;
                        while(true)
                        {
                           §§push(this);
                           §§push(0.75);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(Math.random() * 1.5);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc2_)
                                 {
                                    §§push(-§§pop());
                                    if(_loc2_)
                                    {
                                       addr283:
                                       §§push(§§pop() * param1);
                                    }
                                 }
                                 §§pop().§7!;§ = §§pop();
                                 continue;
                              }
                           }
                           §§goto(addr283);
                        }
                     }
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     this.§6!d§ = 0;
                     §§goto(addr149);
                  }
               }
               while(!(_loc3_ && param1))
               {
                  §§goto(addr215);
                  §§push(§§pop() == "BIRD_WHITE");
               }
            }
            return;
         }
         §§goto(addr323);
      }
      
      public function §83§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§ D§);
            loop0:
            while(true)
            {
               §§push(this.mX);
               addr133:
               while(true)
               {
                  §§push(§,4§.§,^§);
                  addr135:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr136:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
               }
               loop5:
               while(true)
               {
                  if(_loc2_ && _loc1_)
                  {
                     continue loop0;
                  }
                  §§push(this.mY);
                  while(true)
                  {
                     §§push(this.§`!k§);
                     if(_loc1_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              if(_loc1_ || this)
                              {
                                 addr116:
                                 §§push(§§pop() / §,4§.§,^§);
                              }
                              else
                              {
                                 §§goto(addr133);
                              }
                           }
                           while(true)
                           {
                              §§pop().y = §§pop();
                              continue loop5;
                              addr46:
                              if(!(_loc1_ || this))
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 §§pop().rotation = §§pop();
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue loop5;
                                 }
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§goto(addr136);
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           addr117:
                        }
                        break;
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr135);
               }
            }
         }
         §§goto(addr137);
      }
      
      public function §`[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§;Y§ = true;
         }
         while(true)
         {
            this.§3!x§ = false;
            loop1:
            for(; _loc1_; if(_loc2_ && _loc2_)
            {
               continue;
            },§§goto(addr72))
            {
               this.§'G§ = false;
               loop2:
               while(true)
               {
                  this.§-" § = 0;
                  loop3:
                  while(true)
                  {
                     this.§?U§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§^!L§ = 0;
                        continue loop2;
                        addr79:
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§;z§ = 0;
                           loop9:
                           while(true)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              addr96:
                              while(!_loc2_)
                              {
                                 this.§`!k§ = 0;
                                 loop7:
                                 while(true)
                                 {
                                    this.§0!>§ = 0;
                                    addr77:
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          continue loop7;
                                       }
                                       §§goto(addr79);
                                    }
                                    continue loop4;
                                 }
                                 continue loop9;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc3_);
            §§push(this.§]!'§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc4_ || this)
               {
                  §§push(true);
                  if(!(_loc5_ && param2))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr95:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr95);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.mX);
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
                              addr143:
                              while(true)
                              {
                                 §§push(this.mX);
                                 addr117:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr118:
                                    while(_loc6_)
                                    {
                                       §§push(§§pop() <= §§pop());
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr142:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§pop();
                                       addr135:
                                       while(true)
                                       {
                                          §§push(this.mY);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr57:
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(!_loc6_)
                                                {
                                                   continue loop9;
                                                }
                                                if(!(_loc6_ || param3))
                                                {
                                                   break;
                                                }
                                                if(_loc5_ && param2)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             addr113:
                                             continue loop11;
                                             while(true)
                                             {
                                                §§push(this.mY);
                                                if(!_loc6_)
                                                {
                                                   continue loop13;
                                                }
                                                if(_loc6_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(param2);
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() <= §§pop());
                                                         if(_loc5_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!(_loc5_ && param3))
                                                         {
                                                            §§goto(addr49);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr57);
                                                   }
                                                }
                                                §§goto(addr117);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    if(!(_loc5_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          continue loop9;
                                       }
                                       addr49:
                                    }
                                    continue loop3;
                                    return §§pop();
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(!(_loc4_ && param2))
         {
            §§push(this.mX);
            loop0:
            while(true)
            {
               §§push(param1);
               addr166:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr167:
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(true);
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                                addr68:
                                                if(!(_loc5_ || param2))
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   this.§<!r§.§2X§();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            break loop6;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            if(!_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               continue loop4;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(_loc4_ && param1)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc5_ || param2))
                                                            {
                                                               continue loop17;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               addr61:
                                                               if(!(_loc4_ && param2))
                                                               {
                                                                  §§goto(addr68);
                                                               }
                                                               else
                                                               {
                                                                  while(!(_loc4_ && param1))
                                                                  {
                                                                     this.§?U§ = 100;
                                                                     §§goto(addr61);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        this.mY = param2;
                                                                        continue;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr111:
                                                                  addr123:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§83§();
                                                               continue loop12;
                                                            }
                                                         }
                                                      }
                                                      return;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                break loop6;
                                             }
                                             addr172:
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.mX = param1;
                                    §§goto(addr123);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr172);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §-W§() : §7"#§
      {
         return this.§>i§;
      }
      
      public function get §'!,§() : Number
      {
         return this.§^!L§;
      }
      
      public function get §5!F§() : Number
      {
         return this.§?U§;
      }
      
      public function set §5!F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?U§ = param1;
         }
      }
      
      public function get §=v§() : Number
      {
         return this.§9T§;
      }
      
      public function get §'&§() : Boolean
      {
         return this.§3!x§;
      }
      
      public function get radius() : Number
      {
         return this.§]!'§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §=v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9T§ = param1;
         }
      }
      
      public function get §`#§() : Number
      {
         return this.§!!&§;
      }
      
      public function set §`#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!!&§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§=9§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=9§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get §3"1§() : Number
      {
         return this.§@b§;
      }
      
      public function get §7!m§() : Number
      {
         return this.§0!7§;
      }
   }
}
