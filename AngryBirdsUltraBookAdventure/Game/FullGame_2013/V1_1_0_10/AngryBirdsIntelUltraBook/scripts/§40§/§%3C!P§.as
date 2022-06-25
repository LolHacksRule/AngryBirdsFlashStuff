package §40§
{
   import § var§.§!u§;
   import §&H§.b2Vec2;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §1!B§.§#A§;
   import §=`§.§#`§;
   import §=`§.§%!L§;
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.Sprite;
   
   public class §<!P§
   {
      
      public static const §9o§:String = "ChannelSlingshot";
      
      public static const §?U§:Number = 900;
      
      public static const §=2§:Number = 200;
      
      public static const §=>§:Number = 200;
      
      public static const §%!k§:Number = 1500;
      
      public static const §1!"§:Number = 5000;
      
      public static const §;=§:Number = 1000;
      
      public static const §%!9§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9o§ = "ChannelSlingshot";
            while(true)
            {
               §?U§ = 900;
               loop1:
               while(true)
               {
                  §=2§ = 200;
                  while(true)
                  {
                     §=>§ = 200;
                     addr85:
                     while(_loc1_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      protected var mName:String;
      
      protected var §#!!§:Number;
      
      protected var §!!3§:Number;
      
      protected var §7<§:Number;
      
      protected var §function§:Number;
      
      private var §'H§:§6!D§;
      
      protected var §2F§:Number;
      
      protected var §>K§:Number = 1;
      
      private var §]2§:Sprite;
      
      protected var §0"$§:§%!L§;
      
      private var §?!F§:§"<§;
      
      protected var §"!I§:§1!g§;
      
      private var §'h§:Number;
      
      private var §5!e§:Boolean = false;
      
      private var §+!E§:Boolean = false;
      
      protected var §0""§:Boolean = false;
      
      private var §&#§:Number;
      
      private var §%!D§:Number = 0;
      
      private var §7$§:Number = 0;
      
      private var §,!6§:Number = 0;
      
      private var §if§:Number = 1000;
      
      private var §+""§:Number;
      
      private var §9!F§:Number;
      
      private var §4p§:int;
      
      private var §6!u§:Number = 0;
      
      protected var §0!§:Number;
      
      protected var §[!-§:Number;
      
      private var §,z§:Number = 1;
      
      private var §5s§:Number = 0;
      
      private var §6!^§:b2Vec2;
      
      private var §?z§:Number = 1;
      
      public function §<!P§(param1:§1!g§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!I§ = param1;
               loop1:
               while(true)
               {
                  this.§]2§ = param2;
                  loop2:
                  while(true)
                  {
                     this.mName = param3;
                     while(true)
                     {
                        this.§'H§ = §7!Z§.§`!H§(this.mName).§9!M§;
                        loop4:
                        while(true)
                        {
                           this.§#!!§ = param4;
                           while(!_loc7_)
                           {
                              this.§!!3§ = param5;
                              loop6:
                              while(true)
                              {
                                 this.§7<§ = param4;
                                 addr122:
                                 while(true)
                                 {
                                    this.§function§ = param5;
                                    addr117:
                                    while(true)
                                    {
                                       this.§2F§ = 0;
                                       while(true)
                                       {
                                          this.§5!e§ = false;
                                          addr105:
                                          while(_loc6_)
                                          {
                                             this.§+!E§ = false;
                                             while(!_loc7_)
                                             {
                                             }
                                             continue loop1;
                                          }
                                          continue loop6;
                                          addr36:
                                          if(_loc6_ || param3)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr86:
                              if(!(_loc6_ || param1))
                              {
                                 continue;
                              }
                              this.§]J§();
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr122);
                                    }
                                    break;
                                 }
                                 addr84:
                                 while(_loc6_)
                                 {
                                    §§goto(addr86);
                                 }
                                 §§goto(addr117);
                                 addr79:
                                 this.§0!§ = 0;
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                                 if(!_loc7_)
                                 {
                                    §§goto(addr36);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr98);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§%!D§ = 0;
            §§goto(addr84);
         }
         §§goto(addr52);
      }
      
      public function §0!@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5!e§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§]2§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr75:
                     this.§]2§.dispose();
                  }
                  do
                  {
                     this.§]2§ = null;
                  }
                  while(_loc1_ && _loc2_);
                  
                  addr60:
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr60);
      }
      
      public function §5!b§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§+!E§);
            if(_loc2_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§>K§);
                           loop5:
                           while(true)
                           {
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       this.§,!6§ = 0;
                                       loop8:
                                       while(!_loc3_)
                                       {
                                          this.§6!u§ = 0;
                                          loop9:
                                          while(true)
                                          {
                                             this.§2F§ = 0;
                                             loop10:
                                             while(true)
                                             {
                                                this.§9!F§ = 0;
                                                while(true)
                                                {
                                                   this.§>K§ = 0;
                                                   addr342:
                                                   addr129:
                                                   while(true)
                                                   {
                                                   }
                                                   while(!(_loc3_ && _loc3_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         §§push(this.§&#§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(0);
                                                            if(_loc3_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  this.§#!!§ = this.§"!I§.§#!!§;
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     this.§!!3§ = this.§"!I§.§!!3§;
                                                                     loop22:
                                                                     while(_loc2_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           this.§+!E§ = false;
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              if(!(_loc2_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              this.§5!e§ = true;
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 if(!(_loc2_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this.§2F§ = 0;
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    addr23:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§]!R§();
                                                                                       if(_loc2_ || param1)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop25;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(_loc2_ || this)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§!!3§);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc2_ || _loc3_)
                                                                                    {
                                                                                       §§push(this.§"!I§.§!!3§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() - this.§!!3§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr258:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr256:
                                                                                                §§push(§§pop() / this.§&#§);
                                                                                             }
                                                                                             §§pop().§!!3§ = §§pop() + §§pop();
                                                                                             continue loop9;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr256);
                                                                                 }
                                                                                 §§goto(addr258);
                                                                                 §§goto(addr67);
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr219:
                                                                     while(!_loc3_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§2F§);
                                                                        if(_loc2_ || param1)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(360 - this.§2F§);
                                                                              if(_loc2_ || this)
                                                                              {
                                                                                 addr175:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§&#§);
                                                                                 }
                                                                                 §§pop().§2F§ = §§pop() + §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop9;
                                                                                    addr46:
                                                                                    if(_loc2_ || _loc2_)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                     addr337:
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§#!!§);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              §§push(this.§"!I§.§#!!§);
                                                                              if(!(_loc3_ && param1))
                                                                              {
                                                                                 §§push(§§pop() - this.§#!!§);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    addr312:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       §§push(this.§&#§);
                                                                                    }
                                                                                    §§pop().§#!!§ = §§pop() + §§pop();
                                                                                    §§goto(addr314);
                                                                                 }
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr312);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr23);
                                                         }
                                                         while(_loc2_ || this)
                                                         {
                                                            param1 = §§pop();
                                                            §§goto(addr337);
                                                         }
                                                         continue loop5;
                                                         addr329:
                                                      }
                                                      else
                                                      {
                                                         addr410:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§5!e§);
                                                         if(_loc2_ || this)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr411);
                                                      }
                                                      addr411:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr401);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr329);
                                 }
                              }
                           }
                        }
                     }
                     addr401:
                     return;
                  }
                  addr399:
               }
               §§goto(addr410);
            }
         }
         §§goto(addr342);
      }
      
      public function §"0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!E§ = true;
            loop0:
            while(true)
            {
               this.§&#§ = §?U§;
               loop1:
               while(true)
               {
                  this.§-!M§(§6!D§.§0y§);
                  while(true)
                  {
                     if(_loc2_)
                     {
                        if(this.§6!u§ == 0)
                        {
                           break;
                        }
                        if(!(_loc1_ && _loc2_))
                        {
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  §§goto(addr20);
               }
            }
            addr103:
         }
         while(true)
         {
            this.§6!u§ = 0;
            if(!(_loc1_ && this))
            {
               if(!_loc2_)
               {
                  §§goto(addr103);
               }
               addr20:
            }
            continue;
            return;
         }
      }
      
      public function §!!&§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_)
         {
            §§push(this.§5!e§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop10:
                     while(true)
                     {
                        §§pop();
                        loop11:
                        while(true)
                        {
                           §§push(this.§0!§);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(0);
                              loop12:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 addr367:
                                 while(true)
                                 {
                                    loop2:
                                    while(§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§[!-§);
                                          addr371:
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop() > this.§"!I§.§#!U§.§!#§.§]!L§)
                                             {
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§"!I§.§#!U§.§!#§.§]!L§);
                                                   if(!(_loc4_ && param1))
                                                   {
                                                      §§push(§§pop() - this.§[!-§);
                                                   }
                                                   §§pop().§<4§(§§pop());
                                                   addr404:
                                                   while(true)
                                                   {
                                                      this.§0!§ = -1;
                                                      addr352:
                                                      while(!_loc4_)
                                                      {
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§0!§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§0!§ = §§pop();
                                                loop9:
                                                while(_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§0!§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(0);
                                                         if(!_loc3_)
                                                         {
                                                            loop15:
                                                            while(§§pop() <= §§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(!isNaN(this.§[!-§))
                                                                        {
                                                                           loop19:
                                                                           while(!(_loc4_ && param1))
                                                                           {
                                                                              §§push(this.§"!I§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§#!U§);
                                                                                 addr272:
                                                                                 addr150:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().objects);
                                                                                    addr273:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§3q§(this.§#!!§,this.§[!-§));
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc3_ || _loc3_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       addr293:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          addr294:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                                 while(_loc3_ || this)
                                                                                 {
                                                                                    §§push(§§pop().§#!U§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().objects);
                                                                                       addr159:
                                                                                       while(_loc3_ || param1)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().§ !X§(§§pop()));
                                                                                             addr168:
                                                                                             addr92:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§5d§);
                                                                                                addr169:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   addr238:
                                                                                                   addr215:
                                                                                                   addr238:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr241:
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         this.§0!§ = -1;
                                                                                                      }
                                                                                                      addr246:
                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                      {
                                                                                                         §§goto(addr294);
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr145:
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   this.§0!§ = 0;
                                                                                                   §§goto(addr145);
                                                                                                }
                                                                                                §§goto(addr272);
                                                                                             }
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc3_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().§ !X§(§§pop()));
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().§,1§());
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   if(_loc4_ && this)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            this.§0""§ = false;
                                                                                                            addr128:
                                                                                                            if(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     this.§0!§ = 2000;
                                                                                                                     addr52:
                                                                                                                     if(_loc4_ && this)
                                                                                                                     {
                                                                                                                        §§goto(addr128);
                                                                                                                     }
                                                                                                                     if(!(_loc4_ && this))
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                     }
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  §§goto(addr215);
                                                                                                               }
                                                                                                               addr184:
                                                                                                               if(!(_loc3_ || param1))
                                                                                                               {
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  this.§0""§ = false;
                                                                                                                  addr206:
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     this.§0!§ = -1;
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr246);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr404);
                                                                                                               }
                                                                                                            }
                                                                                                            break loop2;
                                                                                                         }
                                                                                                         §§goto(addr206);
                                                                                                      }
                                                                                                      §§goto(addr128);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.§0!§ = 500;
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc2_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            §§goto(addr333);
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr52);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr169);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr168);
                                                                                             }
                                                                                             §§goto(addr169);
                                                                                          }
                                                                                       }
                                                                                       addr74:
                                                                                       §§goto(addr273);
                                                                                       §§push(§§pop().§#!U§);
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          §§push(§§pop().objects);
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr92);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr159);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr272);
                                                                                       }
                                                                                       §§goto(addr273);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc3_)
                                                                           {
                                                                              if(§§pop() < 0)
                                                                              {
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() / 100);
                                                                                       }
                                                                                       §§goto(addr238);
                                                                                       §§push(§§pop().§<4§(§§pop()));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr241);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr150);
                                                                                 §§push(this.§"!I§);
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                           §§goto(addr293);
                                                                           §§goto(addr294);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            this.§0!§ = this.§,!6§;
                                                            addr333:
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!6§);
                                                                  addr320:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ && param1)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(0);
                                                                  }
                                                               }
                                                               addr318:
                                                            }
                                                            break loop2;
                                                         }
                                                         continue loop12;
                                                         return;
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                }
                                                §§goto(addr352);
                                             }
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr371);
                        }
                     }
                     addr417:
                  }
                  §§goto(addr367);
               }
            }
            §§goto(addr417);
         }
         §§goto(addr347);
      }
      
      public function §<4§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§!!3§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!!3§ = §§pop();
         }
         loop0:
         do
         {
            §§push(this);
            §§push(this.§[!-§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[!-§ = §§pop();
            loop1:
            while(true)
            {
               §§push(this.§[!-§);
               if(_loc3_ || _loc3_)
               {
                  §§push(this.§"!I§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop().§#!U§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop().§!#§);
                        if(!_loc2_)
                        {
                           §§push(§§pop().§]!L§);
                           if(!(_loc2_ && param1))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 while(true)
                                 {
                                    this.§]!R§();
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    if(!(_loc2_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(false);
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr49);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 while(!(_loc3_ || _loc3_))
                                 {
                                    loop4:
                                    while(!(_loc3_ || _loc2_))
                                    {
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§[!-§);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§[!-§ = §§pop();
                                          continue loop4;
                                       }
                                    }
                                    this.§]!R§();
                                 }
                                 addr49:
                                 return §§pop();
                                 §§push(true);
                              }
                              §§push(this.§[!-§);
                              if(_loc3_ || this)
                              {
                                 addr165:
                                 §§push(this.§"!I§.§#!U§.§!#§.§]!L§);
                              }
                              break;
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc3_)
                           {
                              break;
                           }
                           addr180:
                           param1 = §§pop();
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr165);
               }
               break;
            }
            §§goto(addr180);
         }
         while(!(_loc3_ || param1));
         
         §§push(this);
         §§push(this.§!!3§);
         if(_loc3_ || this)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§!!3§ = §§pop();
         §§goto(addr112);
      }
      
      public function §]J§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§#`§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§6R§ = §7!Z§.§`!H§(this.mName).shape;
         if(!(_loc4_ && this))
         {
            §§push(_loc1_.§%!>§());
            loop0:
            while(true)
            {
               §§push(§6R§.§9!Z§);
               addr183:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               while(true)
               {
                  this.§6!^§ = _loc1_.§!!>§()[0];
                  while(true)
                  {
                     this.§'h§ = _loc1_.§3!8§;
                     loop4:
                     while(true)
                     {
                        addr100:
                        while(true)
                        {
                           this.§0"$§ = this.§"!I§.§#!U§.animationManager.getAnimation(this.mName);
                           continue loop4;
                           addr129:
                        }
                        addr72:
                        return;
                     }
                  }
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
                  this.§6!^§ = new b2Vec2(0,0);
                  §§goto(addr172);
               }
            }
         }
         §§goto(addr99);
      }
      
      public function §0!#§(param1:§#`§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(!_loc5_)
         {
            if(!param1)
            {
               addr26:
               _loc2_ = this.§"!I§.§`!j§.textureManager.§9Y§();
               if(_loc4_ || param1)
               {
                  addr53:
                  §§push(this.§?!F§);
                  if(!_loc5_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc5_)
                        {
                           this.§?!F§ = new §"<§(_loc2_);
                           if(!_loc5_)
                           {
                              this.§]2§.addChild(this.§?!F§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§?!F§);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§?!F§);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(2);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop6:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(this.§?!F§);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(this.§?!F§);
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(-§§pop().height);
                                                                  loop9:
                                                                  while(_loc4_)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           while(_loc4_)
                                                                           {
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 if(!(_loc5_ && this))
                                                                                 {
                                                                                    return;
                                                                                    addr281:
                                                                                 }
                                                                                 loop28:
                                                                                 while(_loc4_ || _loc2_)
                                                                                 {
                                                                                    §§push(this.§?!F§);
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1.pivotX);
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          addr303:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§6!^§);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§5G§.§6+§);
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr310:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            loop23:
                                                                                                            while(_loc4_)
                                                                                                            {
                                                                                                               §§push(this.§?!F§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop29;
                                                                                                                  }
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     §§push(param1.pivotY);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     addr246:
                                                                                                                     §§push(-§§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§6!^§);
                                                                                                                        if(!(_loc4_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           §§push(§5G§.§6+§);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           addr270:
                                                                                                                           addr277:
                                                                                                                           while(_loc5_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr133:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§?!F§);
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr246);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().texture = _loc2_;
                                                                                                                        break loop28;
                                                                                                                     }
                                                                                                                     addr318:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop1;
                                                                                 addr99:
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        §§goto(addr310);
                                                                        §§goto(addr133);
                                                                        addr161:
                                                                        loop14:
                                                                        for(; _loc4_ || _loc2_; §§push(_loc3_),if(_loc4_ || param1)
                                                                        {
                                                                           continue loop9;
                                                                        })
                                                                        {
                                                                           §§pop().scaleX = §§pop();
                                                                           while(!_loc5_)
                                                                           {
                                                                              §§push(this.§?!F§);
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop2;
                                                                              do
                                                                              {
                                                                                 this.§]!R§();
                                                                              }
                                                                              while(!_loc4_);
                                                                              
                                                                              if(!(_loc4_ || _loc2_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr85);
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                     }
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_ && _loc2_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop().scaleY = §§pop();
                                                                        §§goto(addr132);
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr303);
                                                }
                                                §§goto(addr269);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr281);
                                 }
                              }
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr277);
                     }
                     else
                     {
                        §§push(this.§?!F§);
                     }
                  }
                  §§goto(addr318);
               }
               §§goto(addr132);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc4_)
               {
                  §§push(param1.scale);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr53);
         }
         §§goto(addr26);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(_loc5_)
         {
            this.§!!&§(param1);
            loop0:
            while(true)
            {
               §§push(this.§+!E§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§,!6§ = 0;
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr135:
                              while(!(_loc6_ && param2))
                              {
                              }
                              addr42:
                              continue loop2;
                              if(_loc5_ || param1)
                              {
                                 if(!_loc6_)
                                 {
                                    loop12:
                                    while(§§pop())
                                    {
                                       if(_loc5_)
                                       {
                                          addr55:
                                          if(!(_loc6_ && param3))
                                          {
                                             this.§#!$§(param1,param2);
                                             addr76:
                                             if(!_loc6_)
                                             {
                                                if(_loc5_)
                                                {
                                                   addr80:
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr87:
                                                      break;
                                                   }
                                                   addr124:
                                                   while(_loc5_)
                                                   {
                                                      this.§@u§(param1);
                                                      §§goto(addr80);
                                                   }
                                                   continue loop0;
                                                }
                                                while(!_loc6_)
                                                {
                                                   this.§]!,§(param1);
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr94:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop12;
                                                               }
                                                            }
                                                         }
                                                         addr93:
                                                      }
                                                      addr95:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      §§goto(addr55);
                                                   }
                                                }
                                                §§goto(addr135);
                                             }
                                             for(; _loc5_ || param3; §§goto(addr95))
                                             {
                                                §§push(param3);
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(true);
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr40:
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr42);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr93);
                                                   }
                                                   §§goto(addr94);
                                                }
                                                §§goto(addr40);
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr108);
                                       }
                                       §§goto(addr76);
                                    }
                                    §§goto(addr21);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        §§goto(addr124);
                     }
                     addr21:
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §@u§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§%!D§);
            loop0:
            while(true)
            {
               §§push(0);
               do
               {
                  if(§§pop() > §§pop())
                  {
                     addr173:
                     §§push(this);
                     §§push(this.§%!D§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§%!D§ = §§pop();
                     addr186:
                     §§push(this.§%!D§);
                  }
                  else
                  {
                     §§push(this.§7$§);
                     while(_loc3_ || _loc3_)
                     {
                        continue loop0;
                        addr143:
                        §§push(Math.random() * §%!k§);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        §§push(§§pop() < param1);
                        loop4:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr110:
                                    §§goto(addr168);
                                 }
                              }
                              §§goto(addr50);
                           }
                           addr139:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue loop4;
                              }
                              §§goto(addr140);
                           }
                        }
                     }
                  }
                  §§push(0);
               }
               while(!(_loc3_ || param1));
               
               if(§§pop() <= §§pop())
               {
                  §§goto(addr166);
               }
               addr168:
               while(_loc3_)
               {
                  continue loop6;
               }
               return;
            }
         }
         §§goto(addr94);
      }
      
      public function §=F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§%!D§ = 0;
            do
            {
               this.§0!#§(this.§0"$§.getFrame(0));
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function §'!r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  this.§%!D§ = §=2§;
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        this.§0!#§(this.§0"$§.getSubAnimation("blink").getFrame(0));
                        if(!_loc2_)
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
      
      public function §]!,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§7$§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr139:
                     §§push(this);
                     §§push(this.§7$§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§7$§ = §§pop();
                     while(true)
                     {
                        §§push(this.§7$§);
                     }
                     addr147:
                  }
                  else
                  {
                     §§push(this.§%!D§);
                     while(!(_loc3_ && _loc3_))
                     {
                        continue loop0;
                        addr107:
                        §§push(Math.random() * §1!"§);
                        if(!(_loc2_ || param1))
                        {
                           continue;
                        }
                        §§push(§§pop() < param1);
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              while(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(_loc2_)
                                       {
                                          this.§-!M§();
                                          addr71:
                                          break;
                                       }
                                       addr130:
                                       this.§8I§();
                                    }
                                    else
                                    {
                                       while(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr107);
                                          }
                                          else
                                          {
                                             §§goto(addr139);
                                          }
                                       }
                                       addr98:
                                    }
                                    if(!_loc2_)
                                    {
                                       §§goto(addr147);
                                    }
                                    addr72:
                                    break;
                                    addr134:
                                 }
                                 §§goto(addr71);
                              }
                              return;
                              addr41:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    §§goto(addr98);
                                 }
                                 addr97:
                              }
                              §§goto(addr41);
                           }
                           addr95:
                        }
                        §§goto(addr97);
                     }
                  }
                  while(true)
                  {
                     addr122:
                     §§push(0);
                     if(!(_loc3_ && _loc3_))
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§goto(addr130);
                        }
                        break;
                     }
                     continue loop1;
                     §§goto(addr139);
                  }
                  §§goto(addr72);
               }
            }
         }
         §§goto(addr134);
      }
      
      public function §8I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§7$§ = 0;
            do
            {
               this.§0!#§(this.§0"$§.getFrame(0));
            }
            while(!_loc2_);
            
         }
      }
      
      public function §-!M§(param1:int = -1, param2:Boolean = false) : void
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
                  §§push(this.§7$§);
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
                              this.§8I§();
                              addr242:
                              while(true)
                              {
                              }
                           }
                           addr240:
                        }
                        while(true)
                        {
                           §§push(this.§%!D§);
                           if(_loc4_ && this)
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
                              addr230:
                              while(true)
                              {
                                 this.§=F§();
                                 addr232:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    addr234:
                                 }
                              }
                              addr230:
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(§§pop() < 0)
                                 {
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§6!D§.§^!n§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          addr198:
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          addr200:
                                          while(true)
                                          {
                                             loop19:
                                             while(!(_loc4_ && param1))
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(param2);
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   addr141:
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §!u§.§5F§(param1,this.§'H§,§9o§);
                                                               if(_loc3_ || param2)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(this.§+!E§);
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          while(_loc3_)
                                                                                          {
                                                                                             addr126:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop21;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop19;
                                                                                                   §§goto(addr141);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   addr148:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr126);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          addr145:
                                                                                          addr124:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr147);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr148);
                                                                                 }
                                                                                 §§goto(addr131);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr230);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc4_ && param1)
                                                                                    {
                                                                                       §§goto(addr247);
                                                                                    }
                                                                                    this.§0!#§(this.§0"$§.getSubAnimation("yell").getFrame(0));
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr240);
                                                                                 }
                                                                              }
                                                                              §§goto(addr242);
                                                                              addr168:
                                                                           }
                                                                           §§goto(addr145);
                                                                        }
                                                                     }
                                                                     addr19:
                                                                     return;
                                                                  }
                                                                  addr65:
                                                                  §!u§.§5F§(param1,this.§'H§);
                                                                  addr70:
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               §§goto(addr70);
                                                            }
                                                            §§goto(addr65);
                                                         }
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr232);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§7$§ = §=>§;
                                    §§goto(addr168);
                                    §§goto(addr200);
                                 }
                              }
                              §§goto(addr198);
                              §§goto(addr234);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr247:
            return;
         }
         §§goto(addr230);
      }
      
      public function §#!$§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_ || this)
         {
            §§push(this.§,!6§);
            if(_loc6_)
            {
               §§push(0);
               if(_loc6_ || _loc3_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(this);
                        §§push(this.§,!6§);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§,!6§ = §§pop();
                        if(_loc6_ || param1)
                        {
                           §§push(this.§,!6§);
                           if(!(_loc7_ && param1))
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§4p§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && param1))
                                       {
                                          _loc4_.§4p§ = _loc5_;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(this);
                                          §§push(this.§9!F§);
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§9!F§ = §§pop();
                                          loop67:
                                          while(true)
                                          {
                                             addr814:
                                             §§push(!this.§5!e§);
                                             if(!this.§5!e§)
                                             {
                                                loop45:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop46:
                                                   while(true)
                                                   {
                                                      §§push(this.§4p§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(2);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            while(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§4p§);
                                                                  addr781:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                  }
                                                               }
                                                            }
                                                            addr684:
                                                            §§push(this.§5!e§);
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && param2))
                                                                  {
                                                                     addr698:
                                                                     if(§§pop())
                                                                     {
                                                                        addr699:
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              addr673:
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr673);
                                                                              }
                                                                              addr674:
                                                                           }
                                                                           addr675:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.§,!6§ = 0;
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§6!u§ = 0;
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          this.§2F§ = 0;
                                                                                          continue loop19;
                                                                                       }
                                                                                       loop40:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§9!F§ = -1;
                                                                                          addr762:
                                                                                          loop41:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§+""§ = this.§9!F§;
                                                                                             addr751:
                                                                                             loop36:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§,!6§ = §%!9§;
                                                                                                loop37:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop46;
                                                                                                   }
                                                                                                   §§push(this);
                                                                                                   §§push(this.§,!6§);
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * (Math.abs(this.§+""§) / 2));
                                                                                                   }
                                                                                                   §§pop().§,!6§ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§if§ = this.§,!6§;
                                                                                                      loop39:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§2F§ = 0;
                                                                                                         do
                                                                                                         {
                                                                                                            this.§>K§ = 0;
                                                                                                         }
                                                                                                         while(!_loc6_);
                                                                                                         
                                                                                                         addr707:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§]!R§();
                                                                                                                  addr344:
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc6_ || param1)
                                                                                                                        {
                                                                                                                           §§goto(addr98);
                                                                                                                        }
                                                                                                                        continue loop39;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  loop25:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§#A§.§=!N§(_loc3_));
                                                                                                                     addr574:
                                                                                                                     addr629:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              addr578:
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(!(_loc7_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * this.§+""§);
                                                                                                                                 }
                                                                                                                                 §§pop().§6!u§ = §§pop();
                                                                                                                                 loop28:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop36;
                                                                                                                                       }
                                                                                                                                       if(!(_loc7_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(360);
                                                                                                                                             §§push(§#A§);
                                                                                                                                             §§push(this.§if§);
                                                                                                                                             if(!_loc7_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§,!6§);
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   addr374:
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§if§);
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() * §§pop().§=!N§(§§pop()));
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * this.§>K§);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§2F§ = §§pop();
                                                                                                                                                   if(_loc6_ || param2)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                             }
                                                                                                                                             §§goto(addr374);
                                                                                                                                             addr429:
                                                                                                                                          }
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                       addr803:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc6_ || param2))
                                                                                                                                          {
                                                                                                                                             continue loop67;
                                                                                                                                          }
                                                                                                                                          §§push(this.§9!F§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(-1);
                                                                                                                                             addr756:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             continue loop23;
                                                                                                                                          }
                                                                                                                                          §§goto(addr779);
                                                                                                                                       }
                                                                                                                                       addr635:
                                                                                                                                    }
                                                                                                                                    addr757:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr758:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop40;
                                                                                                                                       }
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop36;
                                                                                                                              }
                                                                                                                              continue loop37;
                                                                                                                           }
                                                                                                                           addr620:
                                                                                                                           addr620:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§,!6§);
                                                                                                                              addr622:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 addr623:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§if§);
                                                                                                                                    addr625:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       addr626:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr627);
                                                                                                                        }
                                                                                                                        continue loop37;
                                                                                                                        if(_loc7_ && _loc3_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           §§push(this.§if§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(2);
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 if(!(_loc7_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc7_ && param1))
                                                                                                                                          {
                                                                                                                                             addr525:
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr526);
                                                                                                                                             }
                                                                                                                                             addr525:
                                                                                                                                          }
                                                                                                                                          §§goto(addr622);
                                                                                                                                       }
                                                                                                                                       §§goto(addr625);
                                                                                                                                    }
                                                                                                                                    addr515:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       if(!(_loc7_ && param1))
                                                                                                                                       {
                                                                                                                                          if(§§pop() >= §§pop())
                                                                                                                                          {
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          §§push(this.§if§);
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(2);
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr469);
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr756);
                                                                                                                                             }
                                                                                                                                             §§goto(addr628);
                                                                                                                                          }
                                                                                                                                          §§goto(addr469);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr602:
                                                                                                                                 }
                                                                                                                                 §§goto(addr622);
                                                                                                                              }
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           addr499:
                                                                                                                        }
                                                                                                                        §§goto(addr623);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop39;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop46;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr663:
                                                                              }
                                                                              §§goto(addr676);
                                                                           }
                                                                           §§goto(addr673);
                                                                        }
                                                                     }
                                                                     §§goto(addr674);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr803);
                                                                  }
                                                                  addr792:
                                                               }
                                                               §§goto(addr699);
                                                               §§goto(addr684);
                                                            }
                                                            addr777:
                                                            addr687:
                                                         }
                                                         while(true)
                                                         {
                                                            addr783:
                                                            §§push(§§pop() > §§pop());
                                                            if(!(_loc6_ || param2))
                                                            {
                                                               continue loop45;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr792);
                                                            }
                                                            §§goto(addr757);
                                                         }
                                                      }
                                                      §§goto(addr781);
                                                   }
                                                }
                                             }
                                             §§goto(addr777);
                                          }
                                       }
                                       §§goto(addr663);
                                    }
                                    §§goto(addr707);
                                 }
                                 else
                                 {
                                    §§push(this.§,!6§);
                                    if(_loc6_)
                                    {
                                       §§push(this.§if§);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§goto(addr602);
                                          §§push(2);
                                       }
                                       §§goto(addr625);
                                    }
                                 }
                                 §§goto(addr620);
                              }
                              §§goto(addr756);
                           }
                           §§goto(addr574);
                        }
                        §§goto(addr751);
                     }
                     else
                     {
                        loop65:
                        while(true)
                        {
                           §§push(this.§0""§);
                           if(!(_loc7_ && this))
                           {
                              addr112:
                              if(!(_loc7_ && this))
                              {
                                 if(_loc6_)
                                 {
                                    addr121:
                                    if(_loc6_ || this)
                                    {
                                       §§push(!§§pop());
                                       loop14:
                                       while(true)
                                       {
                                          addr130:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            this.§?A§();
                                                            addr146:
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr98);
                                                               }
                                                               else
                                                               {
                                                                  loop3:
                                                                  while(!(_loc7_ && param2))
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              §§push(this.§5!e§);
                                                                              loop4:
                                                                              for(; _loc6_; while(!(_loc7_ && param2))
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr783);
                                                                              })
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    addr227:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop7:
                                                                                       while(_loc6_ || param1)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop8:
                                                                                                   for(; !(_loc7_ && _loc3_); if(!(_loc6_ || this))
                                                                                                   {
                                                                                                      continue;
                                                                                                   },§§goto(addr173))
                                                                                                   {
                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                      {
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§+!E§);
                                                                                                               if(!(_loc7_ && param1))
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               addr216:
                                                                                                               addr216:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr217:
                                                                                                                  while(!_loc7_)
                                                                                                                  {
                                                                                                                     continue loop65;
                                                                                                                  }
                                                                                                                  §§goto(addr762);
                                                                                                                  §§goto(addr112);
                                                                                                               }
                                                                                                               §§goto(addr146);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        break loop4;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                     addr208:
                                                                                                                     if(_loc7_ && param2)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     §§goto(addr216);
                                                                                                                  }
                                                                                                                  addr313:
                                                                                                               }
                                                                                                               break;
                                                                                                               addr173:
                                                                                                               if(!(_loc6_ || param2))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr758);
                                                                                                               }
                                                                                                               §§goto(addr699);
                                                                                                            }
                                                                                                            §§goto(addr687);
                                                                                                            addr267:
                                                                                                            addr310:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr814);
                                                                                                   }
                                                                                                   §§goto(addr675);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!(_loc6_ || param2))
                                                                                                      {
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                      §§goto(addr208);
                                                                                                   }
                                                                                                   addr199:
                                                                                                }
                                                                                                §§goto(addr313);
                                                                                             }
                                                                                             §§goto(addr814);
                                                                                          }
                                                                                          §§goto(addr791);
                                                                                       }
                                                                                       §§goto(addr698);
                                                                                       §§goto(addr121);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§pop();
                                                                                 continue loop3;
                                                                              }
                                                                              §§goto(addr778);
                                                                           }
                                                                           §§goto(addr681);
                                                                        }
                                                                        §§goto(addr578);
                                                                     }
                                                                     §§goto(addr446);
                                                                  }
                                                                  §§goto(addr374);
                                                               }
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      §§goto(addr344);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr146);
                                             }
                                             §§goto(addr98);
                                          }
                                       }
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr216);
                           }
                           §§goto(addr130);
                        }
                     }
                     addr98:
                     return;
                  }
                  §§push(Math.random() * §;=§);
                  if(!_loc7_)
                  {
                     if(!(_loc7_ && param1))
                     {
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && this))
                           {
                              §§push(param1);
                              if(_loc6_)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§goto(addr310);
                                       §§push(§§pop() < §§pop());
                                    }
                                    §§goto(addr478);
                                 }
                                 §§goto(addr499);
                              }
                              §§goto(addr515);
                           }
                           §§goto(addr629);
                        }
                        §§goto(addr525);
                     }
                     §§goto(addr435);
                  }
                  §§goto(addr436);
               }
               §§goto(addr756);
            }
            §§goto(addr525);
         }
         §§goto(addr681);
      }
      
      public function §?A§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.mName);
            while(true)
            {
               §§push("BIRD_SARDINE");
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§4p§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§,!6§ = §%!9§;
                        addr333:
                        loop4:
                        while(true)
                        {
                           this.§6!u§ = 0;
                           loop5:
                           while(true)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(!_loc3_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc3_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc3_ && _loc3_)
                                       {
                                       }
                                       addr322:
                                       §§pop().§+""§ = §§pop();
                                       loop6:
                                       while(true)
                                       {
                                          this.§9!F§ = this.§+""§;
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§,!6§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop() * (Math.abs(this.§+""§) / 3));
                                             }
                                             §§pop().§,!6§ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                this.§if§ = this.§,!6§;
                                                loop9:
                                                while(_loc2_ || this)
                                                {
                                                   §§push(this.mName);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push("BIRD_WHITE");
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc2_ || _loc3_))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!§§pop())
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§pop();
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.mName);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr142:
                                                                                 §§push("RED_BIG");
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    if(_loc3_ && _loc3_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(this.§,!6§ < 350)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             break loop19;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(this);
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          if(Math.random() > 0.5)
                                                                                          {
                                                                                             §§goto(addr86);
                                                                                          }
                                                                                          §§push(-1);
                                                                                          §§goto(addr104);
                                                                                       }
                                                                                       §§goto(addr86);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop1;
                                                                                       §§goto(addr142);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                    }
                                                                                    addr238:
                                                                                    addr210:
                                                                                 }
                                                                                 §§goto(addr239);
                                                                              }
                                                                              addr86:
                                                                              §§push(1);
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr104:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                           §§pop().§>K§ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break loop19;
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(Math.random() <= 0.5)
                                                                                          {
                                                                                             §§push(Number(0));
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§push(this.§>K§);
                                                                                       if(_loc2_ || _loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       continue;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr239:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(this.mName);
                                                                                       continue loop10;
                                                                                    }
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              continue loop8;
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr182:
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    §§push(param1);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr322);
                           }
                        }
                     }
                  }
               }
               return;
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr210);
               §§push("BIRD_BLACK");
            }
         }
         §§goto(addr333);
      }
      
      public function §]!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§]2§);
            loop0:
            while(true)
            {
               §§push(this.§#!!§);
               addr124:
               while(true)
               {
                  §§push(§5G§.§6+§);
                  addr126:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr127:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr128:
                        while(true)
                        {
                           §§push(this.§]2§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §`W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§0""§ = true;
            loop0:
            while(true)
            {
               this.§5!e§ = false;
               while(true)
               {
                  this.§+!E§ = false;
                  continue loop0;
                  loop5:
                  while(_loc2_ || this)
                  {
                     this.§,!6§ = 0;
                     loop6:
                     do
                     {
                        this.§,!6§ = 0;
                        loop7:
                        for(; _loc2_; if(_loc1_ && _loc1_)
                        {
                           continue;
                        },§§goto(addr70))
                        {
                           this.§6!u§ = 0;
                           loop8:
                           while(!_loc1_)
                           {
                              this.§2F§ = 0;
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop8;
                                 addr70:
                                 this.§9!F§ = 0;
                                 do
                                 {
                                    this.§>K§ = 0;
                                 }
                                 while(!_loc2_);
                                 
                                 if(!_loc1_)
                                 {
                                    continue loop6;
                                 }
                              }
                              continue loop7;
                           }
                           while(true)
                           {
                              this.§0!§ = 0;
                              break loop7;
                           }
                        }
                        continue loop5;
                     }
                     while(!_loc2_);
                     
                     if(!_loc1_)
                     {
                        return;
                        addr41:
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.§4p§ = 0;
            §§goto(addr116);
         }
         §§goto(addr41);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§#!!§) * (param1 - this.§#!!§) + (param2 - this.§!!3§) * (param2 - this.§!!3§));
         if(!(_loc4_ && _loc3_))
         {
            §§push(_loc3_);
            §§push(this.§'h§);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc4_)
               {
                  §§push(true);
                  if(!(_loc4_ && this))
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
            §§push(this.§#!!§);
            while(true)
            {
               §§push(param3);
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr121:
                           while(true)
                           {
                              §§pop();
                              addr122:
                              while(true)
                              {
                                 §§push(this.§#!!§);
                                 addr102:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr103:
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                    }
                                 }
                              }
                           }
                           addr121:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(!_loc6_)
                                       {
                                          §§push(this.§!!3§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr68:
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                      addr78:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         §§goto(addr60);
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§push(§§pop() <= §§pop());
                                                   addr40:
                                                   continue loop4;
                                                   if(!(_loc5_ || param3))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      addr60:
                                                      return §§pop();
                                                   }
                                                   §§goto(addr121);
                                                }
                                                §§goto(addr102);
                                             }
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr122);
                                    }
                                 }
                                 §§goto(addr78);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr121);
               }
            }
         }
         §§goto(addr122);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = false;
         if(_loc4_)
         {
            §§push(this.§#!!§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr160:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc5_)
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(!_loc5_)
                                 {
                                    §§push(true);
                                    loop5:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr156:
                                       while(true)
                                       {
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          if(_loc5_ && this)
                                          {
                                             break;
                                          }
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   continue;
                                                }
                                                addr87:
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc4_ || param1))
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                else
                                                {
                                                   addr110:
                                                   while(true)
                                                   {
                                                      this.§]!R§();
                                                      continue loop10;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§0!§ = 100;
                                                      §§goto(addr105);
                                                   }
                                                   addr105:
                                                   addr110:
                                                }
                                             }
                                             return;
                                          }
                                          addr166:
                                          addr166:
                                          while(true)
                                          {
                                             §§pop();
                                             break loop4;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§#!!§ = param1;
                                 §§goto(addr115);
                              }
                           }
                           continue;
                           addr150:
                        }
                     }
                  }
                  §§goto(addr166);
               }
            }
         }
         §§goto(addr156);
      }
      
      public function §-F§() : §"<§
      {
         return this.§?!F§;
      }
      
      public function get §#0§() : Number
      {
         return this.§,!6§;
      }
      
      public function get §==§() : Number
      {
         return this.§0!§;
      }
      
      public function set §==§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§0!§ = param1;
         }
      }
      
      public function get §'T§() : Number
      {
         return this.§,z§;
      }
      
      public function get §,O§() : Boolean
      {
         return this.§5!e§;
      }
      
      public function get radius() : Number
      {
         return this.§'h§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §'T§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,z§ = param1;
         }
      }
      
      public function get §+_§() : Number
      {
         return this.§5s§;
      }
      
      public function set §+_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§5s§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§?z§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function get §null §() : Number
      {
         return this.§7<§;
      }
      
      public function get §8]§() : Number
      {
         return this.§function§;
      }
      
      public function §%b§() : Boolean
      {
         return this.§0""§;
      }
   }
}
