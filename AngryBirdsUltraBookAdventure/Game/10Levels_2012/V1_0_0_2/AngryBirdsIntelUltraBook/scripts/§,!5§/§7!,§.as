package §,!5§
{
   import §%Q§.§`!<§;
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §-w§.§+W§;
   import §-w§.§1!;§;
   import §<!1§.§2!W§;
   import §<!1§.§<!R§;
   import §<!1§.§<F§;
   import §>H§.b2Vec2;
   import §^!+§.Texture;
   import §^_§.§3!q§;
   
   public class §7!,§
   {
      
      public static const §+0§:String = "ChannelSlingshot";
      
      public static const §4!I§:Number = 900;
      
      public static const §?r§:Number = 200;
      
      public static const §9!7§:Number = 200;
      
      public static const §<2§:Number = 1500;
      
      public static const §"!x§:Number = 5000;
      
      public static const §`<§:Number = 1000;
      
      public static const §[!2§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+0§ = "ChannelSlingshot";
            while(true)
            {
               §4!I§ = 900;
               while(_loc1_)
               {
                  §?r§ = 200;
                  loop2:
                  for(; !(_loc2_ && §7!,§); if(_loc2_ && _loc2_)
                  {
                     continue;
                  },§§goto(addr62))
                  {
                     while(true)
                     {
                        §9!7§ = 200;
                        loop4:
                        while(true)
                        {
                           §<2§ = 1500;
                           loop5:
                           do
                           {
                              §"!x§ = 5000;
                              while(true)
                              {
                                 §`<§ = 1000;
                                 while(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                    §[!2§ = 1000;
                                    if(!(_loc2_ && §7!,§))
                                    {
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           while(!_loc1_);
                           
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr99);
      }
      
      protected var mName:String;
      
      protected var §,G§:Number;
      
      protected var §78§:Number;
      
      protected var §'A§:Number;
      
      protected var §^!M§:Number;
      
      private var §1!4§:§<!R§;
      
      protected var §-!n§:Number;
      
      protected var §8@§:Number = 1;
      
      private var §8X§:Sprite;
      
      protected var §8x§:§1!;§;
      
      private var §^!?§:§?!U§;
      
      protected var §&1§:§>!A§;
      
      private var §;!S§:Number;
      
      private var §3!N§:Boolean = false;
      
      private var §+&§:Boolean = false;
      
      protected var §@!x§:Boolean = false;
      
      private var §3!5§:Number;
      
      private var §extends§:Number = 0;
      
      private var §return§:Number = 0;
      
      private var §3!t§:Number = 0;
      
      private var §0l§:Number = 1000;
      
      private var §,!9§:Number;
      
      private var §-!c§:Number;
      
      private var §-y§:int;
      
      private var §4!P§:Number = 0;
      
      protected var §'!l§:Number;
      
      protected var §=!X§:Number;
      
      private var §]!G§:Number = 1;
      
      private var §^W§:Number = 0;
      
      private var §2;§:b2Vec2;
      
      private var §'8§:Number = 1;
      
      public function §7!,§(param1:§>!A§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.§&1§ = param1;
               addr173:
               while(true)
               {
                  this.§8X§ = param2;
               }
            }
            addr176:
         }
         while(true)
         {
            this.mName = param3;
            loop3:
            for(; !_loc7_; if(!(_loc6_ || param1))
            {
               continue;
            },§§goto(addr58))
            {
               this.§1!4§ = §<F§.§1]§(this.mName).§!9§;
               while(true)
               {
                  this.§,G§ = param4;
                  while(!_loc7_)
                  {
                     this.§78§ = param5;
                     loop6:
                     while(true)
                     {
                        this.§'A§ = param4;
                        addr125:
                        while(true)
                        {
                           this.§^!M§ = param5;
                           continue loop6;
                        }
                     }
                     if(!(_loc6_ || param3))
                     {
                        continue;
                     }
                     this.§-!n§ = 0;
                     loop9:
                     while(_loc6_)
                     {
                        this.§3!N§ = false;
                        while(true)
                        {
                           this.§+&§ = false;
                           loop11:
                           while(!(_loc7_ && param3))
                           {
                              this.§extends§ = 0;
                              loop12:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    this.§%!]§();
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop11;
                                       addr58:
                                       this.§'!l§ = 0;
                                       if(!_loc7_)
                                       {
                                          continue loop12;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop9;
                              }
                              §§goto(addr173);
                           }
                        }
                     }
                     §§goto(addr125);
                  }
               }
            }
         }
      }
      
      public function §`!a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3!N§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8X§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr55:
                     this.§8X§.dispose();
                  }
                  do
                  {
                     this.§8X§ = null;
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  addr45:
               }
               return;
            }
            §§goto(addr55);
         }
         §§goto(addr45);
      }
      
      public function §@s§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+&§);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(_loc3_)
               {
                  addr419:
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(this.§3!N§);
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§8@§);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             while(true)
                                             {
                                                this.§3!t§ = 0;
                                                addr394:
                                                while(true)
                                                {
                                                   this.§4!P§ = 0;
                                                   addr375:
                                                   while(true)
                                                   {
                                                      this.§-!n§ = 0;
                                                      addr370:
                                                      loop8:
                                                      while(true)
                                                      {
                                                         this.§-!c§ = 0;
                                                         addr365:
                                                         while(true)
                                                         {
                                                            this.§8@§ = 0;
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             addr381:
                                          }
                                          while(true)
                                          {
                                             §§push(Number(Math.min(param1,this.§3!5§)));
                                             loop10:
                                             while(_loc3_)
                                             {
                                                param1 = §§pop();
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§,G§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.§&1§.§,G§);
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(§§pop() - this.§,G§);
                                                            if(_loc3_ || this)
                                                            {
                                                               addr335:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_)
                                                               {
                                                                  §§push(this.§3!5§);
                                                               }
                                                               §§pop().§,G§ = §§pop() + §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§78§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(this.§&1§.§78§);
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§push(§§pop() - this.§78§);
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              addr293:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 addr291:
                                                                                 §§push(§§pop() / this.§3!5§);
                                                                              }
                                                                              §§pop().§78§ = §§pop() + §§pop();
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§78§);
                                                                                 if(!(_loc2_ && _loc3_))
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() / 50);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(this.§3!5§);
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             §§push(§§pop() / §4!I§);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§pop().§78§ = §§pop();
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§-!n§);
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(360 - this.§-!n§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr209:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(this.§3!5§);
                                                                                             }
                                                                                             §§pop().§-!n§ = §§pop() + §§pop();
                                                                                             loop15:
                                                                                             while(!_loc2_)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§3!5§);
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§3!5§ = §§pop();
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§push(this.§3!5§);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         if(!(_loc3_ || this))
                                                                                                         {
                                                                                                            §§goto(addr410);
                                                                                                         }
                                                                                                         this.§,G§ = this.§&1§.§,G§;
                                                                                                      }
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         this.§78§ = this.§&1§.§78§;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                      addr148:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§'!k§();
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr34:
                                                                                                            if(!(_loc3_ || _loc3_))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && _loc3_))
                                                                                                                              {
                                                                                                                                 if(_loc2_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 this.§-!n§ = 0;
                                                                                                                                 §§goto(addr48);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr381);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  continue loop15;
                                                                                                                  §§goto(addr34);
                                                                                                               }
                                                                                                               §§goto(addr353);
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               return;
                                                                                                            }
                                                                                                            §§goto(addr365);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr48:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc3_ || _loc3_))
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     §§goto(addr394);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr148);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§+&§ = false;
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                            addr48:
                                                                                                         }
                                                                                                         §§goto(addr370);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr114);
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr209);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr291);
                                                                  }
                                                                  §§goto(addr293);
                                                               }
                                                            }
                                                            §§goto(addr335);
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr335);
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr410:
                              return;
                           }
                        }
                     }
                     addr421:
                  }
                  §§goto(addr408);
               }
               §§goto(addr421);
            }
            §§goto(addr419);
         }
         §§goto(addr365);
      }
      
      public function §;j§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+&§ = true;
            loop0:
            while(true)
            {
               this.§3!5§ = §4!I§;
               addr109:
               while(true)
               {
                  this.§8!n§(§<!R§.§#!_§);
                  continue loop0;
               }
            }
         }
         §§goto(addr35);
      }
      
      public function §!o§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this.§3!N§);
            if(!(_loc3_ && _loc2_))
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
                     §§pop();
                     addr419:
                     while(true)
                     {
                        §§push(this.§'!l§);
                        addr369:
                        while(true)
                        {
                           §§push(0);
                           addr370:
                           while(true)
                           {
                              §§push(§§pop() >= §§pop());
                              addr371:
                              while(_loc4_)
                              {
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  addr418:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§push(this.§=!X§);
                        while(true)
                        {
                           if(§§pop() > this.§&1§.§?l§.§ !p§.§>6§)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§&1§.§?l§.§ !p§.§>6§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() - this.§=!X§);
                                 }
                                 §§pop().§9S§(§§pop());
                                 loop10:
                                 while(true)
                                 {
                                    this.§'!l§ = -1;
                                    while(!_loc3_)
                                    {
                                       addr182:
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       this.§'!l§ = -1;
                                       addr140:
                                       if(!(_loc4_ || param1))
                                       {
                                          addr241:
                                          §§push(this);
                                          §§push(param1);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() / 100);
                                          }
                                          §§push(§§pop().§9S§(§§pop()));
                                          if(!(_loc3_ && this))
                                          {
                                             if(!§§pop())
                                             {
                                                this.§'!l§ = 0;
                                                addr206:
                                                if(!_loc3_)
                                                {
                                                   continue loop10;
                                                }
                                                addr358:
                                                addr293:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   addr302:
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
                                                            if(!isNaN(this.§=!X§))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§&1§);
                                                                  addr263:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§?l§);
                                                                     addr264:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().objects);
                                                                        addr265:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§=V§(this.§,G§,this.§=!X§));
                                                                           addr270:
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              addr271:
                                                                              while(!(_loc3_ && this))
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 while(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       §§goto(addr22);
                                                                                    }
                                                                                 }
                                                                                 continue loop18;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr175:
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(§§pop() >= 0)
                                                                     {
                                                                        §§push(this.§&1§);
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§?l§);
                                                                           addr154:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().objects);
                                                                              addr155:
                                                                              while(!_loc3_)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§8!3§(§§pop()));
                                                                                    addr159:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§"'§);
                                                                                       addr160:
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          if(!(_loc3_ && this))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                continue loop27;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                this.§@!x§ = false;
                                                                                                §§goto(addr175);
                                                                                             }
                                                                                             this.§'!l§ = this.§3!t§;
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr265);
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr271);
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                      }
                                                      §§goto(addr302);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§'!l§);
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(0);
                                                         if(_loc4_)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr22);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr316);
                                                   §§goto(addr293);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr418);
                                       }
                                       §§goto(addr22);
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§'!l§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§'!l§ = §§pop();
                              §§goto(addr358);
                           }
                        }
                     }
                  }
                  addr22:
                  return;
               }
            }
         }
         §§goto(addr251);
      }
      
      public function §9S§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            addr191:
            §§push(this);
            §§push(this.§78§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§78§ = §§pop();
            while(true)
            {
               addr163:
               §§push(this);
               §§push(this.§=!X§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§=!X§ = §§pop();
            }
            addr191:
         }
         loop1:
         while(true)
         {
            §§push(this.§=!X§);
            if(!_loc3_)
            {
               §§push(this.§&1§);
               if(!_loc3_)
               {
                  §§push(§§pop().§?l§);
                  if(_loc2_)
                  {
                     §§push(§§pop().§ !p§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop().§>6§);
                        if(_loc2_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              loop2:
                              do
                              {
                                 this.§'!k§();
                                 if(!(_loc3_ && this))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr53:
                                          return §§pop();
                                       }
                                       addr126:
                                       §§push(this.§=!X§);
                                       if(!(_loc3_ && this))
                                       {
                                          addr140:
                                          §§push(§§pop() - this.§&1§.§?l§.§ !p§.§>6§);
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr149:
                                             param1 = §§pop();
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(this);
                                                §§push(this.§78§);
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§78§ = §§pop();
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§=!X§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().§=!X§ = §§pop();
                                                      break loop2;
                                                      addr101:
                                                   }
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr163);
                                             }
                                             addr150:
                                          }
                                       }
                                       §§goto(addr149);
                                    }
                                    break loop1;
                                 }
                              }
                              while(!_loc3_);
                              
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       this.§'!k§();
                                       break loop1;
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr99);
                                 §§goto(addr101);
                              }
                              §§goto(addr191);
                           }
                           §§goto(addr126);
                        }
                     }
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr149);
         }
         §§goto(addr53);
         §§push(true);
      }
      
      public function §%!]§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§+W§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§2!W§ = §<F§.§1]§(this.mName).shape;
         if(_loc5_)
         {
            §§push(_loc1_.§@!P§());
            loop0:
            while(true)
            {
               §§push(§2!W§.§=!i§);
               addr163:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr164);
      }
      
      public function §#!]§(param1:§+W§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc4_)
         {
            if(!param1)
            {
               addr26:
               _loc2_ = this.§&1§.§3!w§.textureManager.§0y§();
               if(_loc4_)
               {
                  addr53:
                  §§push(this.§^!?§);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() == null)
                     {
                        if(_loc4_)
                        {
                           this.§^!?§ = new §?!U§(_loc2_);
                           if(_loc4_)
                           {
                              this.§8X§.addChild(this.§^!?§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(param1)
                                    {
                                       continue loop0;
                                    }
                                    §§push(this.§^!?§);
                                    loop2:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          §§push(this.§^!?§);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             loop4:
                                             while(true)
                                             {
                                                if(_loc4_)
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
                                                         while(true)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(this.§^!?§);
                                                               loop8:
                                                               while(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(this.§^!?§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(-§§pop().height);
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc4_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§^!?§);
                                                                                       loop13:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             if(_loc5_ && param1)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             if(_loc5_ && this)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(!(_loc4_ || param1))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop().scaleX = §§pop();
                                                                                             do
                                                                                             {
                                                                                                §§push(this.§^!?§);
                                                                                                if(!(_loc5_ && param1))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop14;
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             while(_loc5_ && _loc2_);
                                                                                             
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                             addr313:
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^!?§);
                                                                                                addr230:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param1.pivotY);
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   addr304:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      addr305:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§2;§);
                                                                                                         addr307:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr308:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§^g§.§^!S§);
                                                                                                               addr310:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  addr311:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                §§push(this.§2;§);
                                                                                                if(_loc4_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop().y);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§^g§.§^!S§);
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            addr266:
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  addr275:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr274:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr311);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr310);
                                                                                                      }
                                                                                                      §§goto(addr308);
                                                                                                   }
                                                                                                   §§goto(addr266);
                                                                                                }
                                                                                                §§goto(addr307);
                                                                                             }
                                                                                             §§goto(addr305);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       return;
                                                                                       addr106:
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 §§goto(addr313);
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  addr300:
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(param1.pivotX);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop().texture = _loc2_;
                                                                           break loop25;
                                                                        }
                                                                        addr318:
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                                  §§goto(addr304);
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr275);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr274);
                                             }
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                 }
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr320);
                     }
                     else
                     {
                        §§push(this.§^!?§);
                     }
                     §§goto(addr318);
                  }
                  §§goto(addr230);
               }
               §§goto(addr137);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc4_)
               {
                  §§push(param1.scale);
                  if(_loc4_ || _loc3_)
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
         if(!(_loc6_ && param1))
         {
            this.§!o§(param1);
            loop0:
            while(true)
            {
               §§push(this.§+&§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc6_)
                     {
                        this.§3!t§ = 0;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(false);
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr148:
                           while(_loc5_)
                           {
                              while(true)
                              {
                              }
                           }
                           continue loop2;
                           loop11:
                           while(_loc5_ || this)
                           {
                              addr106:
                              loop10:
                              for(; !_loc6_; §§goto(addr106))
                              {
                                 §§push(param3);
                                 if(!(_loc6_ && param2))
                                 {
                                    addr39:
                                    §§push(true);
                                    if(!(_loc6_ && this))
                                    {
                                       addr48:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc6_)
                                       {
                                          loop9:
                                          while(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!(_loc5_ || param2))
                                                {
                                                   continue loop10;
                                                }
                                                this.§99§(param1,param2);
                                             }
                                             addr65:
                                             if(_loc5_ || this)
                                             {
                                                break;
                                             }
                                             addr114:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_)
                                                {
                                                   continue loop11;
                                                }
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                                if(_loc6_ && param2)
                                                {
                                                   continue loop11;
                                                }
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop9;
                                                   §§goto(addr39);
                                                }
                                                §§goto(addr65);
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr26);
                                       }
                                       continue loop11;
                                    }
                                    §§goto(addr98);
                                 }
                                 §§goto(addr48);
                              }
                              §§pop();
                              while(true)
                              {
                                 this.§4Z§(param1);
                                 §§goto(addr114);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        if(_loc5_)
                        {
                           if(!(_loc6_ && param2))
                           {
                              if(_loc6_)
                              {
                                 break;
                              }
                              this.§98§(param1);
                              §§goto(addr144);
                           }
                           §§goto(addr148);
                        }
                        §§goto(addr106);
                     }
                     addr26:
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §98§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§extends§);
            loop0:
            while(true)
            {
               §§push(0);
               do
               {
                  if(§§pop() > §§pop())
                  {
                     addr183:
                     §§push(this);
                     §§push(this.§extends§);
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§extends§ = §§pop();
                     addr196:
                     §§push(this.§extends§);
                  }
                  else
                  {
                     §§push(this.§return§);
                     while(_loc3_)
                     {
                        continue loop0;
                        loop6:
                        while(true)
                        {
                           §§push(Math.random() * §<2§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(§§pop() < param1);
                           if(!(_loc2_ && _loc2_))
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       addr126:
                                       loop7:
                                       for(; !(_loc2_ && _loc3_); §§push(Boolean(this.§&1§.mSlingShotState)),if(!(_loc3_ || _loc3_))
                                       {
                                          continue;
                                       },addr41:,if(!(_loc2_ && param1))
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc2_ && this))
                                                {
                                                   §§goto(addr57);
                                                }
                                                §§goto(addr99);
                                             }
                                             §§goto(addr25);
                                          }
                                          addr48:
                                       },while(true)
                                       {
                                          §§pop();
                                          continue loop6;
                                          §§goto(addr41);
                                       })
                                       {
                                          §§pop();
                                          while(_loc3_)
                                          {
                                             continue loop7;
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      this.§%!+§();
                                                      addr25:
                                                      return;
                                                      addr99:
                                                   }
                                                   §§goto(addr183);
                                                }
                                                addr176:
                                                this.§'P§();
                                             }
                                             §§goto(addr25);
                                          }
                                          §§goto(addr196);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          break loop9;
                                          §§goto(addr126);
                                       }
                                       addr126:
                                       addr155:
                                    }
                                    §§goto(addr48);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§goto(addr116);
                                 }
                                 §§goto(addr167);
                              }
                              addr116:
                           }
                           §§goto(addr126);
                        }
                     }
                  }
                  §§push(0);
               }
               while(!_loc3_);
               
               if(§§pop() <= §§pop())
               {
                  §§goto(addr176);
               }
               §§goto(addr137);
            }
         }
         §§goto(addr178);
      }
      
      public function §'P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§extends§ = 0;
            do
            {
               this.§#!]§(this.§8x§.getFrame(0));
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §%!+§() : void
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
                  this.§extends§ = §?r§;
                  do
                  {
                     this.§#!]§(this.§8x§.getSubAnimation("blink").getFrame(0));
                  }
                  while(!_loc1_);
                  
                  if(_loc1_)
                  {
                     break;
                  }
                  addr74:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc2_)
               {
                  return;
               }
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function §4Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§return§);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§extends§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           §§push(§§pop() <= §§pop());
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop6:
                                 while(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          this.§8!n§();
                                       }
                                       else
                                       {
                                          addr133:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                addr82:
                                                break loop6;
                                             }
                                             addr140:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§return§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§return§ = §§pop();
                                                addr148:
                                                while(true)
                                                {
                                                   addr98:
                                                   §§push(this.§return§);
                                                   break loop2;
                                                }
                                             }
                                          }
                                          addr133:
                                       }
                                    }
                                    if(_loc3_ || this)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 return;
                                 addr56:
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                           addr91:
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!(_loc2_ && param1))
                        {
                           if(§§pop() <= §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    while(true)
                                    {
                                       this.§!x§();
                                       §§goto(addr133);
                                    }
                                    addr131:
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr133);
                           }
                           break;
                        }
                        continue loop1;
                        §§goto(addr98);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr140);
               }
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §§push(§§pop() < param1);
               if(_loc3_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr56);
                  }
                  §§goto(addr91);
               }
               §§goto(addr93);
            }
         }
         §§goto(addr131);
      }
      
      public function §!x§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§return§ = 0;
            do
            {
               this.§#!]§(this.§8x§.getFrame(0));
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      public function §8!n§(param1:int = -1, param2:Boolean = false) : void
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
                  §§push(this.§return§);
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
                              this.§!x§();
                              addr222:
                              while(true)
                              {
                              }
                           }
                           addr220:
                        }
                        while(true)
                        {
                           §§push(this.§extends§);
                           if(!_loc3_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!(_loc3_ || this))
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§'P§();
                                 addr214:
                                 while(true)
                                 {
                                 }
                              }
                              addr212:
                           }
                           loop8:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc4_ && this))
                              {
                                 if(§§pop() < 0)
                                 {
                                    loop24:
                                    while(true)
                                    {
                                       §§push(§<!R§.§`!C§);
                                       if(!_loc4_)
                                       {
                                          addr184:
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             loop23:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§return§ = §9!7§;
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            continue loop23;
                                                         }
                                                         if(!_loc3_)
                                                         {
                                                            continue loop24;
                                                         }
                                                         this.§#!]§(this.§8x§.getSubAnimation("yell").getFrame(0));
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(this.§3!N§);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(this.§+&§);
                                                                                 loop17:
                                                                                 while(!_loc4_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc3_ || param1)
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
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   §`!<§.§6!$§(param1,this.§1!4§,§+0§);
                                                                                                   if(_loc3_ || param2)
                                                                                                   {
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         addr46:
                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               §§goto(addr19);
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         addr127:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  addr227:
                                                                                                                  §§push(param2);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           continue loop15;
                                                                                                                        }
                                                                                                                        continue loop12;
                                                                                                                        addr117:
                                                                                                                     }
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               §§goto(addr220);
                                                                                                            }
                                                                                                            §§goto(addr222);
                                                                                                            §§goto(addr46);
                                                                                                         }
                                                                                                         addr72:
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            break loop16;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      §§goto(addr72);
                                                                                                   }
                                                                                                   §§goto(addr86);
                                                                                                }
                                                                                                §§goto(addr72);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop14;
                                                                                       addr112:
                                                                                    }
                                                                                    §§goto(addr117);
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc3_ || param2)
                                                                           {
                                                                              §`!<§.§6!$§(param1,this.§1!4§);
                                                                              addr86:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           continue loop0;
                                                                           addr19:
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr112);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop23;
                                                   }
                                                   addr159:
                                                }
                                                §§goto(addr212);
                                             }
                                          }
                                          addr184:
                                       }
                                       §§goto(addr184);
                                    }
                                    addr179:
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr184);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr227);
         }
         §§goto(addr179);
      }
      
      public function §99§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Number = NaN;
         if(!(_loc7_ && this))
         {
            §§push(this.§3!t§);
            if(_loc6_ || this)
            {
               §§push(0);
               if(!_loc7_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_)
                     {
                        §§push(this);
                        §§push(this.§3!t§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§3!t§ = §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§3!t§);
                           if(_loc6_ || param1)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 addr62:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§-y§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc6_)
                                       {
                                          _loc4_.§-y§ = _loc5_;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(this);
                                          §§push(this.§-!c§);
                                          if(!_loc7_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§-!c§ = §§pop();
                                          loop72:
                                          while(true)
                                          {
                                             §§push(this.§3!N§);
                                             addr769:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                   addr771:
                                                   if(§§pop())
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.§-y§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(2);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  while(true)
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           §§push(this.§3!N§);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              while(true)
                                                                              {
                                                                                 addr658:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr659:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                    }
                                                                                    addr659:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr642:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          this.§3!t§ = 0;
                                                                                          loop20:
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             this.§4!P§ = 0;
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§-!n§ = 0;
                                                                                                addr605:
                                                                                                while(!_loc7_)
                                                                                                {
                                                                                                   if(!(_loc7_ && _loc3_))
                                                                                                   {
                                                                                                      this.§-!c§ = 0;
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   loop41:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§-!c§);
                                                                                                      addr713:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(-1);
                                                                                                         addr714:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr715:
                                                                                                            §§push(§§pop() < §§pop());
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop41;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          continue loop18;
                                                                                          addr660:
                                                                                       }
                                                                                       §§goto(addr643);
                                                                                    }
                                                                                    addr641:
                                                                                 }
                                                                                 §§goto(addr660);
                                                                              }
                                                                              addr657:
                                                                           }
                                                                           §§goto(addr659);
                                                                        }
                                                                        §§goto(addr758);
                                                                     }
                                                                  }
                                                                  addr756:
                                                               }
                                                               §§goto(addr761);
                                                            }
                                                            §§goto(addr760);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr756);
                                                }
                                                continue loop72;
                                             }
                                          }
                                       }
                                       §§goto(addr336);
                                    }
                                    else
                                    {
                                       loop71:
                                       while(true)
                                       {
                                          §§push(this.§+&§);
                                          loop5:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop6:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop8:
                                                                  while(!(_loc7_ && param2))
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           §§pop();
                                                                           loop9:
                                                                           for(; _loc6_ || param2; if(!(_loc6_ || param1))
                                                                           {
                                                                              continue;
                                                                           },if(!_loc6_)
                                                                           {
                                                                              §§goto(addr212);
                                                                           },§§goto(addr88))
                                                                           {
                                                                              §§push(this.§@!x§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!(_loc6_ || _loc3_))
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    continue loop5;
                                                                                 }
                                                                                 addr106:
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       addr121:
                                                                                       §§push(!§§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                this.§]h§();
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§goto(addr547);
                                                                                          }
                                                                                          §§goto(addr88);
                                                                                          addr125:
                                                                                       }
                                                                                       §§goto(addr659);
                                                                                    }
                                                                                    §§goto(addr715);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr212:
                                                                                       addr282:
                                                                                       while(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(!(_loc7_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop71;
                                                                                                   }
                                                                                                   §§goto(addr726);
                                                                                                }
                                                                                                §§goto(addr683);
                                                                                             }
                                                                                             §§goto(addr670);
                                                                                          }
                                                                                       }
                                                                                       while(_loc6_ || param1)
                                                                                       {
                                                                                          §§push(this.§3!N§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!§§pop());
                                                                                             break loop8;
                                                                                          }
                                                                                       }
                                                                                       break loop6;
                                                                                       §§goto(addr106);
                                                                                    }
                                                                                    addr211:
                                                                                 }
                                                                                 §§goto(addr579);
                                                                              }
                                                                              §§goto(addr121);
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        §§goto(addr631);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  while(_loc6_ || param1)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr201:
                                                                        while(_loc6_ || param1)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr211);
                                                                           }
                                                                           §§goto(addr771);
                                                                        }
                                                                        §§goto(addr658);
                                                                     }
                                                                  }
                                                                  §§goto(addr642);
                                                               }
                                                               §§goto(addr125);
                                                            }
                                                            break;
                                                         }
                                                         addr280:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr281:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr282);
                                                               }
                                                               addr281:
                                                            }
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr763);
                                                }
                                                §§goto(addr281);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr293);
                                 }
                                 else
                                 {
                                    §§push(this.§3!t§);
                                 }
                                 §§goto(addr554);
                              }
                              §§goto(addr443);
                           }
                           §§goto(addr713);
                        }
                        §§goto(addr703);
                     }
                     §§goto(addr728);
                  }
                  else
                  {
                     §§push(Math.random() * §`<§);
                     if(_loc6_)
                     {
                        if(!(_loc7_ && this))
                        {
                           if(!_loc7_)
                           {
                              §§push(param1);
                              if(!(_loc7_ && param2))
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc7_ && param1))
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§goto(addr280);
                                                §§push(§§pop());
                                             }
                                             §§goto(addr769);
                                          }
                                          §§goto(addr762);
                                       }
                                       §§goto(addr657);
                                    }
                                    §§goto(addr281);
                                 }
                                 §§goto(addr446);
                              }
                              §§goto(addr481);
                           }
                           §§goto(addr444);
                        }
                        §§goto(addr447);
                     }
                  }
                  §§goto(addr413);
               }
               §§goto(addr62);
            }
            §§goto(addr417);
         }
         §§goto(addr728);
      }
      
      public function §]h§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mName);
            loop0:
            while(true)
            {
               §§push("BIRD_SARDINE");
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§-y§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§3!t§ = §[!2§;
                        addr349:
                        loop4:
                        while(true)
                        {
                           this.§4!P§ = 0;
                           loop5:
                           while(!_loc2_)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(_loc3_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(-§§pop());
                                       if(_loc2_ && param1)
                                       {
                                       }
                                       addr336:
                                       §§pop().§,!9§ = §§pop();
                                       while(true)
                                       {
                                          this.§-!c§ = this.§,!9§;
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             §§push(this);
                                             §§push(this.§3!t§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * (Math.abs(this.§,!9§) / 3));
                                             }
                                             §§pop().§3!t§ = §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                this.§0l§ = this.§3!t§;
                                                loop9:
                                                while(!_loc2_)
                                                {
                                                   §§push(this.mName);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push("BIRD_WHITE");
                                                      addr249:
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
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || param1)
                                                                              {
                                                                                 if(!(_loc3_ || _loc2_))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§pop();
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop20;
                                                                                 }
                                                                                 addr252:
                                                                              }
                                                                              addr184:
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc2_ && param1)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       this.§8@§ = 0;
                                                                                    }
                                                                                    addr203:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(this.mName);
                                                                                             if(_loc2_ && this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop0;
                                                                                             addr244:
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop10;
                                                                                       addr242:
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(this.§3!t§ < 350)
                                                                                    {
                                                                                       break loop19;
                                                                                    }
                                                                                    §§push(this);
                                                                                    if(!(_loc2_ && this))
                                                                                    {
                                                                                       if(Math.random() > 0.5)
                                                                                       {
                                                                                          §§goto(addr83);
                                                                                       }
                                                                                       §§push(-1);
                                                                                       §§goto(addr96);
                                                                                    }
                                                                                    §§goto(addr83);
                                                                                 }
                                                                                 addr83:
                                                                                 §§push(1);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc2_ && _loc3_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr96:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§pop().§8@§ = §§pop();
                                                                                 while(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§goto(addr203);
                                                                                    §§pop().§8@§ = §§pop();
                                                                                    if(!(_loc2_ && _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              addr194:
                                                                           }
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(this.mName);
                                                                              continue loop10;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        §§goto(addr194);
                                                                        §§goto(addr242);
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc3_ || param1))
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(!(_loc3_ || param1))
                                                                        {
                                                                           break loop1;
                                                                        }
                                                                        this.§8@§ = 0;
                                                                     }
                                                                     §§goto(addr148);
                                                                  }
                                                                  addr222:
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                    §§push(param1);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr336);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr349);
      }
      
      public function §'!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§8X§);
            while(true)
            {
               §§push(this.§,G§);
               addr129:
               while(true)
               {
                  §§push(§^g§.§^!S§);
                  addr131:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr132:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
               }
            }
            addr127:
         }
         while(true)
         {
            §§push(this.§8X§);
            loop5:
            while(true)
            {
               §§push(this.§78§);
               if(_loc2_ || _loc2_)
               {
                  §§push(this.§4!P§);
                  if(!_loc1_)
                  {
                     addr118:
                     §§push(§§pop() + §§pop());
                     while(true)
                     {
                        §§push(§^g§.§^!S§);
                     }
                     addr118:
                  }
                  while(!_loc1_)
                  {
                     §§push(§§pop() / §§pop());
                     while(true)
                     {
                        §§pop().y = §§pop();
                        continue loop5;
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr131);
               }
               §§goto(addr118);
            }
         }
      }
      
      public function §@!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@!x§ = true;
            while(true)
            {
               this.§3!N§ = false;
               addr132:
               while(true)
               {
                  this.§+&§ = false;
                  addr36:
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
            addr136:
         }
         loop2:
         while(true)
         {
            this.§-y§ = 0;
            loop3:
            while(true)
            {
               if(!_loc2_)
               {
                  this.§'!l§ = 0;
                  loop4:
                  while(true)
                  {
                     this.§3!t§ = 0;
                     loop5:
                     while(true)
                     {
                        this.§3!t§ = 0;
                        while(true)
                        {
                           this.§4!P§ = 0;
                           loop7:
                           while(_loc1_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 this.§-!n§ = 0;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue loop7;
                                    addr76:
                                    this.§-!c§ = 0;
                                    do
                                    {
                                       this.§8@§ = 0;
                                    }
                                    while(_loc2_);
                                    
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr36);
                                 }
                                 continue loop2;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
               else
               {
                  §§goto(addr136);
               }
            }
            §§goto(addr132);
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§,G§) * (param1 - this.§,G§) + (param2 - this.§78§) * (param2 - this.§78§));
         if(_loc5_)
         {
            §§push(_loc3_);
            §§push(this.§;!S§);
            if(_loc5_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc5_)
               {
                  §§push(true);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr76:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr76);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§,G§);
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop11:
                           while(true)
                           {
                              §§pop();
                              addr153:
                              while(true)
                              {
                                 §§push(this.§,G§);
                                 addr106:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr107:
                                    while(_loc6_ || param2)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       continue loop11;
                                    }
                                    continue loop1;
                                 }
                                 continue loop11;
                              }
                           }
                           addr152:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(_loc6_)
                                    {
                                       §§push(this.§78§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(param1);
                                          addr82:
                                          while(true)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   break;
                                                   addr87:
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop2;
                                             }
                                             addr99:
                                             addr99:
                                             while(true)
                                             {
                                                §§pop();
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
                                          }
                                          §§goto(addr125);
                                       }
                                    }
                                    §§goto(addr153);
                                 }
                                 addr135:
                              }
                              §§goto(addr87);
                           }
                        }
                     }
                  }
                  §§goto(addr152);
               }
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§push(param2);
               if(!(_loc5_ && param3))
               {
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc5_ && param2))
                     {
                        if(!(_loc6_ || param3))
                        {
                           §§goto(addr135);
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr107);
               }
               §§goto(addr82);
            }
         }
         §§goto(addr102);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(_loc5_ || param1)
         {
            §§push(this.§,G§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr148:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr149:
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr138:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr139:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop3;
                                          }
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                          addr152:
                                       }
                                    }
                                 }
                                 addr138:
                              }
                              loop8:
                              while(true)
                              {
                                 this.§,G§ = param1;
                                 loop9:
                                 while(true)
                                 {
                                    this.§78§ = param2;
                                    loop10:
                                    while(true)
                                    {
                                       this.§'!l§ = 100;
                                       loop11:
                                       while(_loc5_ || _loc3_)
                                       {
                                          this.§'!k§();
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop10;
                                             }
                                             if(!_loc5_)
                                             {
                                                break;
                                             }
                                             if(!(_loc4_ && param2))
                                             {
                                                §§push(_loc3_);
                                                if(!_loc4_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            this.§&1§.§`!P§();
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            continue loop11;
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   break loop10;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr138);
                                             }
                                             §§goto(addr139);
                                          }
                                          continue loop8;
                                       }
                                       continue loop9;
                                    }
                                    addr129:
                                    while(!(_loc4_ && param2))
                                    {
                                       continue loop7;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr152);
                     }
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public function §1!k§() : §?!U§
      {
         return this.§^!?§;
      }
      
      public function get §=L§() : Number
      {
         return this.§3!t§;
      }
      
      public function get § Z§() : Number
      {
         return this.§'!l§;
      }
      
      public function set § Z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!l§ = param1;
         }
      }
      
      public function get §%! §() : Number
      {
         return this.§]!G§;
      }
      
      public function get §5!p§() : Boolean
      {
         return this.§3!N§;
      }
      
      public function get radius() : Number
      {
         return this.§;!S§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §%! §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§]!G§ = param1;
         }
      }
      
      public function get §5!6§() : Number
      {
         return this.§^W§;
      }
      
      public function set §5!6§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§^W§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§'8§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'8§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§,G§;
      }
      
      public function get y() : Number
      {
         return this.§78§;
      }
      
      public function get §5G§() : Number
      {
         return this.§'A§;
      }
      
      public function get §!G§() : Number
      {
         return this.§^!M§;
      }
   }
}
