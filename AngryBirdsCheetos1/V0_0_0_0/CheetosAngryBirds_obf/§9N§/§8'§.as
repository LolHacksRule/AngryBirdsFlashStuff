package §9N§
{
   import §-!7§.§@m§;
   import §2!-§.Texture;
   import §4W§.§2f§;
   import §4W§.§>c§;
   import §9"§.b2Vec2;
   import §?7§.§!S§;
   import §?7§.§&!5§;
   import §?7§.§=!5§;
   import §@,§.§%,§;
   import §`a§.§>?§;
   import §`a§.Sprite;
   
   public class §8'§
   {
      
      public static const §;F§:String = "ChannelSlingshot";
      
      public static const §>!G§:Number = 900;
      
      public static const §@x§:Number = 200;
      
      public static const § B§:Number = 200;
      
      public static const §]!4§:Number = 1500;
      
      public static const §1!"§:Number = 5000;
      
      public static const §8I§:Number = 1000;
      
      public static const §74§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §8'§)
         {
            §;F§ = "ChannelSlingshot";
            while(true)
            {
               §>!G§ = 900;
            }
            addr116:
         }
         while(true)
         {
            §@x§ = 200;
            loop2:
            while(!_loc1_)
            {
               § B§ = 200;
               while(true)
               {
                  §]!4§ = 1500;
                  loop4:
                  while(true)
                  {
                     §1!"§ = 5000;
                     while(!_loc1_)
                     {
                        §8I§ = 1000;
                        continue loop4;
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                        }
                     }
                     continue loop2;
                  }
               }
            }
            §§goto(addr116);
         }
      }
      
      private var mName:String;
      
      public var mX:Number;
      
      public var mY:Number;
      
      public var §8!Z§:Number;
      
      public var §<!?§:Number;
      
      private var §&!;§:§=!5§;
      
      private var §,E§:Number;
      
      protected var §=!<§:Number = 1;
      
      private var §9!A§:Sprite;
      
      private var §]3§:§2f§;
      
      private var §<^§:§>?§;
      
      private var §-J§:§;c§;
      
      private var §"!I§:Number;
      
      private var §8W§:Boolean = false;
      
      private var §]! §:Boolean = false;
      
      private var §0!5§:Boolean = false;
      
      private var §]!#§:Number;
      
      private var §3S§:Number = 0;
      
      private var §'!%§:Number = 0;
      
      private var §#5§:Number = 0;
      
      private var §<#§:Number = 1000;
      
      private var §>!K§:Number;
      
      private var §[!?§:Number;
      
      private var §;'§:int;
      
      private var §!P§:Number = 0;
      
      private var §;!W§:Number;
      
      private var §=j§:Number;
      
      private var §&§:Number = 0;
      
      private var §"6§:Number = 1;
      
      private var §%§:Number = 0;
      
      private var §+!8§:b2Vec2;
      
      private var §7<§:Number = 1;
      
      public function §8'§(param1:§;c§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            super();
            while(true)
            {
               this.§-J§ = param1;
               addr183:
               while(true)
               {
                  this.§9!A§ = param2;
               }
            }
            addr186:
         }
         loop2:
         while(true)
         {
            this.mName = param3;
            while(true)
            {
               this.§&!;§ = §&!5§.§;@§(this.mName).§2#§;
               while(true)
               {
                  this.mX = param4;
                  loop5:
                  for(; _loc6_ || this; while(!(_loc7_ && param2))
                  {
                     this.§8W§ = false;
                     §§goto(addr108);
                     §§goto(addr80);
                  })
                  {
                     this.mY = param5;
                     loop6:
                     while(true)
                     {
                        this.§8!Z§ = param4;
                        while(!_loc7_)
                        {
                           this.§<!?§ = param5;
                           while(true)
                           {
                              this.§,E§ = 0;
                              continue loop5;
                           }
                           addr66:
                           if(!(_loc7_ && this))
                           {
                              this.§;!W§ = 0;
                              addr73:
                              if(_loc6_ || this)
                              {
                                 continue loop6;
                              }
                              loop13:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    addr59:
                                    if(_loc6_ || param3)
                                    {
                                       §§goto(addr66);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§]! § = false;
                                          addr103:
                                          while(true)
                                          {
                                             this.§3S§ = 0;
                                          }
                                          §§goto(addr59);
                                       }
                                       addr108:
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop5;
                                       }
                                       if(!_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc7_)
                                             {
                                                this.§#?§();
                                                continue loop13;
                                             }
                                             §§goto(addr186);
                                          }
                                          break;
                                       }
                                       §§goto(addr125);
                                       addr80:
                                    }
                                    else
                                    {
                                       §§goto(addr103);
                                    }
                                 }
                                 §§goto(addr183);
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
               if(_loc6_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      public function §[D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§8W§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9!A§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§9!A§);
                     addr69:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr70);
      }
      
      public function §>'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§]! §);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr397:
                        while(true)
                        {
                           §§push(this.§8W§);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr368:
                           addr368:
                           if(_loc2_ && this)
                           {
                              continue;
                           }
                        }
                        continue loop0;
                     }
                     addr396:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§=!<§);
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       this.§#5§ = 0;
                                       while(true)
                                       {
                                          this.§!P§ = 0;
                                          while(!(_loc2_ && param1))
                                          {
                                             this.§,E§ = 0;
                                             loop8:
                                             while(_loc3_ || this)
                                             {
                                                this.§[!?§ = 0;
                                                while(true)
                                                {
                                                   this.§=!<§ = 0;
                                                   loop10:
                                                   for(; _loc3_; if(!(_loc3_ || param1))
                                                   {
                                                      continue;
                                                   },this.§,E§ = 0,§§goto(addr50))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Number(Math.min(param1,this.§]!#§)));
                                                         loop12:
                                                         for(; !_loc2_; §§push(this.§]!#§),if(!_loc3_)
                                                         {
                                                            continue;
                                                         },§§push(0),if(_loc2_ && param1)
                                                         {
                                                            continue loop4;
                                                         },if(§§pop() <= §§pop())
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               this.mX = this.§-J§.mX;
                                                            }
                                                            §§goto(addr127);
                                                         },§§goto(addr29))
                                                         {
                                                            param1 = §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.mX);
                                                               if(_loc3_ || this)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(this.§-J§.mX);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(§§pop() - this.mX);
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           addr297:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr295:
                                                                              §§push(§§pop() / this.§]!#§);
                                                                           }
                                                                           §§pop().mX = §§pop() + §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.mY);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    §§push(this.§-J§.mY);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() - this.mY);
                                                                                       if(_loc3_ || param1)
                                                                                       {
                                                                                          addr258:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §§push(this.§]!#§);
                                                                                          }
                                                                                          §§pop().mY = §§pop() + §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.mY);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   addr216:
                                                                                                   §§push(§§pop() / 50);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      addr203:
                                                                                                      §§push(this.§]!#§);
                                                                                                      if(!(_loc2_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() / §>!G§);
                                                                                                      }
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                   §§pop().mY = §§pop() - §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§,E§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            §§push(360 - this.§,E§);
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr172:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§]!#§);
                                                                                                               }
                                                                                                               §§pop().§,E§ = §§pop() + §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§]!#§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - param1);
                                                                                                                  }
                                                                                                                  §§pop().§]!#§ = §§pop();
                                                                                                                  addr143:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               addr174:
                                                                                                            }
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr172);
                                                                                                   }
                                                                                                   addr217:
                                                                                                }
                                                                                                §§goto(addr203);
                                                                                             }
                                                                                             §§goto(addr216);
                                                                                          }
                                                                                          addr260:
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                              }
                                                                              §§goto(addr258);
                                                                              addr91:
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 this.§8W§ = true;
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§goto(addr260);
                                                                                    addr50:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ && param1)
                                                                                       {
                                                                                          continue loop24;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§goto(addr217);
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop10;
                                                                                 addr71:
                                                                              }
                                                                           }
                                                                           addr298:
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                          §§goto(addr397);
                                       }
                                    }
                                 }
                                 §§goto(addr299);
                              }
                           }
                        }
                     }
                     break;
                     §§goto(addr368);
                  }
                  return;
               }
               §§goto(addr396);
            }
         }
         §§goto(addr309);
      }
      
      public function §&!?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§]! § = true;
         }
         while(true)
         {
            this.§]!#§ = §>!G§;
            loop1:
            while(_loc2_)
            {
               this.§+^§(§=!5§.§"w§);
               for(; this.§!P§ != 0; do
               {
                  this.§!P§ = 0;
               }
               while(!_loc2_);
               ,if(_loc2_)
               {
                  break;
               })
               {
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        §§push(this);
                        §§push(this.mY);
                        if(_loc2_)
                        {
                           §§push(§§pop() + this.§!P§);
                        }
                        §§pop().mY = §§pop();
                        continue;
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
      }
      
      public function §'!Y§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc4_ && param1))
         {
            §§push(this.§8W§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§;!W§);
                           loop4:
                           while(true)
                           {
                              §§push(0);
                              addr364:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 addr365:
                                 while(_loc3_)
                                 {
                                 }
                                 continue loop1;
                              }
                              addr321:
                              if(_loc4_ && this)
                              {
                                 continue;
                              }
                              §§push(0);
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§#5§);
                                          loop30:
                                          while(!_loc4_)
                                          {
                                             §§push(0);
                                             loop13:
                                             while(§§pop() <= §§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!isNaN(this.§=j§))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§-J§);
                                                               addr285:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§8@§);
                                                                  addr286:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().objects);
                                                                     addr287:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§+m§(this.mX,this.§=j§));
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc4_ && this)
                                                                           {
                                                                              break;
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
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                            addr283:
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(§§pop() >= 0)
                                                               {
                                                                  §§push(this.§-J§);
                                                                  loop24:
                                                                  while(_loc3_)
                                                                  {
                                                                     §§push(§§pop().§8@§);
                                                                     loop25:
                                                                     while(!(_loc4_ && this))
                                                                     {
                                                                        §§push(§§pop().objects);
                                                                        loop26:
                                                                        for(; !(_loc4_ && this); §§push(§§pop().objects),if(_loc4_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        },§§goto(addr66))
                                                                        {
                                                                           §§push(_loc2_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§'!P§(§§pop()));
                                                                              addr152:
                                                                              addr66:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§2!X§);
                                                                                 addr153:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(this.§-J§);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().§8@§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop26;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc3_ || this))
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break loop13;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   this.§0!5§ = false;
                                                                                                   addr191:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         this.§;!W§ = -1;
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr191);
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr26);
                                                                                                         }
                                                                                                         §§goto(addr283);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§-J§.§8@§.§null §.§;U§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§=j§);
                                                                                                         }
                                                                                                         §§pop().§ #§(§§pop());
                                                                                                         addr406:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§;!W§ = -1;
                                                                                                            addr359:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr345:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§;!W§);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - param1);
                                                                                                                  }
                                                                                                                  §§pop().§;!W§ = §§pop();
                                                                                                                  addr354:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§;!W§);
                                                                                                                     if(_loc4_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     §§goto(addr321);
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr271:
                                                                                                   this.§;!W§ = -1;
                                                                                                   break loop16;
                                                                                                }
                                                                                                §§goto(addr359);
                                                                                             }
                                                                                             §§goto(addr354);
                                                                                          }
                                                                                          §§goto(addr191);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                                 §§goto(addr365);
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(!(_loc3_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop().§'!P§(§§pop()));
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop().§5!@§());
                                                                                 if(!(_loc4_ && param1))
                                                                                 {
                                                                                    if(_loc4_ && _loc2_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       this.§;!W§ = 500;
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr103:
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   this.§;!W§ = 2000;
                                                                                                   addr45:
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      addr93:
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         this.§0!5§ = false;
                                                                                                         §§goto(addr103);
                                                                                                      }
                                                                                                      break loop23;
                                                                                                   }
                                                                                                   §§goto(addr26);
                                                                                                }
                                                                                                addr221:
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   break loop16;
                                                                                                }
                                                                                                if(!(_loc4_ && _loc2_))
                                                                                                {
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      return;
                                                                                                   }
                                                                                                   addr344:
                                                                                                   continue loop12;
                                                                                                }
                                                                                                continue loop16;
                                                                                             }
                                                                                             §§goto(addr122);
                                                                                          }
                                                                                          §§goto(addr26);
                                                                                       }
                                                                                       §§goto(addr45);
                                                                                    }
                                                                                    §§goto(addr93);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr153);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr152);
                                                                              }
                                                                              §§goto(addr153);
                                                                           }
                                                                        }
                                                                        §§goto(addr287);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§push(this);
                                                         §§push(param1);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() / 100);
                                                         }
                                                         continue loop0;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         addr127:
                                                         §§goto(addr26);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr406);
                                                      }
                                                   }
                                                }
                                             }
                                             this.§;!W§ = this.§#5§;
                                             §§goto(addr344);
                                          }
                                          addr378:
                                          while(true)
                                          {
                                             if(§§pop() > this.§-J§.§8@§.§null §.§;U§)
                                             {
                                                §§goto(addr384);
                                             }
                                             §§goto(addr345);
                                          }
                                       }
                                    }
                                    §§goto(addr26);
                                 }
                                 §§goto(addr364);
                              }
                              §§goto(addr339);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || param1)
                        {
                           §§goto(addr378);
                           §§push(this.§=j§);
                        }
                        §§goto(addr406);
                     }
                     addr26:
                     return;
                  }
               }
            }
         }
         §§goto(addr406);
      }
      
      public function § #§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.mY);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().mY = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§=j§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§=j§ = §§pop();
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     §§push(this.§=j§);
                     if(_loc3_)
                     {
                        §§push(this.§-J§);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop().§8@§);
                           if(!_loc2_)
                           {
                              §§push(§§pop().§null §);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop().§;U§);
                                 if(_loc3_)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       while(true)
                                       {
                                          this.§[6§();
                                          if(_loc3_ || param1)
                                          {
                                             §§push(false);
                                             if(_loc3_ || param1)
                                             {
                                                return §§pop();
                                             }
                                             break;
                                          }
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(_loc2_ && this)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.mY);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().mY = §§pop();
                                                      loop5:
                                                      while(_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§=j§);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().§=j§ = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            this.§[6§();
                                                            while(true)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               addr142:
                                                               while(true)
                                                               {
                                                                  §§push(this.§=j§);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-J§);
                                                                        addr153:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().§8@§);
                                                                           addr154:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§null §);
                                                                              addr155:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§;U§);
                                                                                 addr156:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr151:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop1;
                                                   }
                                                   §§push(true);
                                                }
                                                continue;
                                                break;
                                             }
                                             §§goto(addr83);
                                          }
                                          §§goto(addr66);
                                       }
                                       return §§pop();
                                    }
                                    §§goto(addr142);
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr151);
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      public function §#?§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§>c§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§!S§ = §&!5§.§;@§(this.mName).shape;
         if(_loc5_)
         {
            §§push(_loc1_.§^6§());
            loop0:
            while(true)
            {
               §§push(§!S§.§=§);
               addr173:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               while(true)
               {
                  this.§+!8§ = _loc1_.§-w§()[0];
                  while(true)
                  {
                     this.§"!I§ = _loc1_.§?l§;
                     while(true)
                     {
                        §§goto(addr95);
                     }
                  }
               }
            }
         }
         while(true)
         {
            addr95:
            while(true)
            {
               this.§]3§ = this.§-J§.§8@§.§"B§.§2!'§(this.mName);
               while(!_loc4_)
               {
                  continue loop4;
                  if(_loc5_ || this)
                  {
                     §§goto(addr33);
                  }
               }
               addr152:
               while(true)
               {
                  this.§"!I§ = 1.5;
                  addr119:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        continue loop3;
                     }
                  }
               }
            }
            addr62:
            addr33:
            return;
         }
      }
      
      public function §2`§(param1:§>c§) : void
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
               _loc2_ = this.§-J§.§5q§.§#G§.§83§();
               if(_loc5_ || _loc3_)
               {
                  addr69:
                  §§push(this.§<^§);
                  if(!_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        if(!_loc4_)
                        {
                           this.§<^§ = new §>?§(_loc2_);
                           if(_loc5_)
                           {
                              this.§9!A§.addChild(this.§<^§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§<^§);
                                       loop29:
                                       while(true)
                                       {
                                          §§push(this.§<^§);
                                          loop30:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             if(!(_loc4_ && this))
                                             {
                                                §§push(2);
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                }
                                                addr244:
                                             }
                                             loop32:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§push(this.§<^§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.§<^§);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(-§§pop().height);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop32;
                                                                     }
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           loop16:
                                                                           while(!_loc5_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§<^§);
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          §§push(_loc3_);
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             if(_loc4_ && _loc3_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             addr165:
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                addr172:
                                                                                                §§pop().scaleX = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      loop6:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<^§);
                                                                                                         addr252:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.pivotY);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(-§§pop());
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         addr295:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(-§§pop());
                                                                                                            addr296:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§+!8§);
                                                                                                               addr298:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr299:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§9!%§.§catch§);
                                                                                                                     addr301:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        addr302:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           continue loop6;
                                                                                                                        }
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
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      addr219:
                                                                                                   }
                                                                                                   §§goto(addr172);
                                                                                                }
                                                                                                loop2:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§<^§);
                                                                                                   if(!(_loc5_ || param1))
                                                                                                   {
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                   if(_loc4_ && _loc2_)
                                                                                                   {
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      §§pop().scaleY = §§pop();
                                                                                                      while(_loc5_ || param1)
                                                                                                      {
                                                                                                         this.§[6§();
                                                                                                         if(!(_loc5_ || _loc3_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(!(_loc4_ && param1))
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         §§goto(addr173);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<^§);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr295);
                                                                                                   }
                                                                                                }
                                                                                                addr173:
                                                                                                return;
                                                                                                addr179:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§+!8§);
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§push(§9!%§.§catch§);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  addr285:
                                                                                                                  §§push(§§pop() - §§pop() / §§pop());
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               §§goto(addr301);
                                                                                                            }
                                                                                                            §§goto(addr299);
                                                                                                         }
                                                                                                         §§goto(addr302);
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr165);
                                                                                             }
                                                                                             §§goto(addr303);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           §§goto(addr219);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr244);
                                                                        }
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  continue loop32;
                                                               }
                                                               continue loop30;
                                                            }
                                                            addr319:
                                                            while(true)
                                                            {
                                                               §§pop().texture = _loc2_;
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      continue loop30;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                          }
                                       }
                                       addr232:
                                    }
                                    §§goto(addr291);
                                 }
                              }
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr291);
                     }
                     else
                     {
                        §§push(this.§<^§);
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr232);
               }
               §§goto(addr291);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc5_ || _loc3_)
               {
                  §§push(param1.scale);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr69);
         }
         §§goto(addr32);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(!(_loc6_ && param1))
         {
            this.§'!Y§(param1);
            loop0:
            while(true)
            {
               §§push(this.§]! §);
               addr151:
               while(true)
               {
                  if(§§pop())
                  {
                     addr152:
                     while(true)
                     {
                        this.§#5§ = 0;
                        addr155:
                        while(true)
                        {
                           §§push(false);
                           addr136:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr137:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr152:
                  }
                  while(this.mName != "BIRD_SARDINE")
                  {
                     continue loop0;
                  }
                  addr26:
                  return;
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §,!-§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§3S§);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr162:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§3S§);
                        if(_loc2_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§3S§ = §§pop();
                        addr170:
                        while(true)
                        {
                           §§push(this.§3S§);
                           addr141:
                           while(true)
                           {
                              §§push(0);
                           }
                        }
                     }
                     addr162:
                  }
                  else
                  {
                     §§push(this.§'!%§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() <= §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr39:
                                                if(!(_loc3_ && param1))
                                                {
                                                   this.§@$§();
                                                }
                                                if(_loc2_ || _loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                   }
                                                   §§goto(addr19);
                                                }
                                                else
                                                {
                                                   loop8:
                                                   for(; !(_loc3_ && _loc3_); §§goto(addr39))
                                                   {
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr119:
                                                            §§push(Boolean(this.§-J§.mSlingShotState));
                                                            if(_loc2_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr95:
                                                            addr136:
                                                            addr95:
                                                            while(_loc2_ || _loc2_)
                                                            {
                                                               §§pop();
                                                               continue loop8;
                                                               §§goto(addr119);
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop2;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   addr145:
                                                   this.§+!;§();
                                                }
                                                addr120:
                                             }
                                             addr19:
                                             return;
                                          }
                                          addr37:
                                       }
                                       §§goto(addr95);
                                    }
                                    continue;
                                    addr90:
                                 }
                                 §§goto(addr136);
                              }
                           }
                        }
                        break;
                     }
                  }
                  while(true)
                  {
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               if(§§pop() <= §§pop())
               {
                  §§goto(addr145);
               }
               §§goto(addr120);
            }
         }
         §§goto(addr162);
      }
      
      public function §+!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§3S§ = 0;
         }
         do
         {
            this.§2`§(this.§]3§.getFrame(0));
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §@$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               do
               {
                  this.§3S§ = §@x§;
                  while(_loc2_ || _loc1_)
                  {
                     this.§2`§(this.§]3§.getSubAnimation("blink").getFrame(0));
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc1_ && _loc2_);
               
               return;
            }
         }
      }
      
      public function §0p§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§'!%§);
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
                     §§push(this.§'!%§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§'!%§ = §§pop();
                     while(true)
                     {
                        §§push(this.§'!%§);
                        addr109:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           §§push(0);
                        }
                     }
                     return;
                     addr77:
                     addr147:
                  }
                  else
                  {
                     §§push(this.§3S§);
                     loop2:
                     for(; !_loc3_; while(true)
                     {
                        §§push(Math.random() * §1!"§);
                        if(_loc3_)
                        {
                           break;
                        }
                        §§goto(addr35);
                        §§goto(addr104);
                     })
                     {
                        §§push(0);
                        if(_loc2_ || param1)
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §§push(§§pop() <= §§pop());
                           if(_loc2_ || _loc2_)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                          if(_loc2_)
                                          {
                                             this.§+^§();
                                             addr74:
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             addr117:
                                             if(_loc3_ && _loc2_)
                                             {
                                                §§goto(addr139);
                                             }
                                             §§goto(addr77);
                                          }
                                          if(!_loc3_)
                                          {
                                             this.§3?§();
                                             §§goto(addr117);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr74);
                                    }
                                    §§push(§§pop() < param1);
                                    addr35:
                                    break;
                                    if(_loc2_ || this)
                                    {
                                       continue;
                                    }
                                    addr104:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop2;
                                    }
                                    addr104:
                                 }
                                 §§goto(addr139);
                              }
                           }
                           §§goto(addr104);
                        }
                        if(§§pop() <= §§pop())
                        {
                           §§goto(addr113);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr112);
               }
            }
         }
         §§goto(addr139);
      }
      
      public function §3?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§'!%§ = 0;
            do
            {
               this.§2`§(this.§]3§.getFrame(0));
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function §+^§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§'!%§);
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
                              this.§3?§();
                              addr238:
                              while(true)
                              {
                              }
                              addr94:
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              §@m§.§??§(param1,this.§&!;§);
                              addr106:
                              if(!_loc4_)
                              {
                                 while(_loc4_)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop0;
                                    }
                                    §§push(this.§]! §);
                                    if(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                       addr127:
                                    }
                                    loop17:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                §§pop();
                                                addr138:
                                                addr143:
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         continue loop18;
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop18;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   break loop17;
                                                }
                                             }
                                          }
                                          §§goto(addr83);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr127);
                                       }
                                       §§goto(addr145);
                                    }
                                 }
                                 while(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr142);
                                    §§push(this.§8W§);
                                 }
                                 §§goto(addr177);
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr243);
                              }
                              §§goto(addr25);
                           }
                        }
                        while(true)
                        {
                           §§push(this.§3S§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc3_)
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              §§goto(addr218);
                           }
                           §§goto(addr189);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr243:
            return;
         }
         §§goto(addr218);
      }
      
      public function §-!Y§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§#5§);
            if(!(_loc6_ && param1))
            {
               §§push(0);
               if(_loc7_ || param1)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(this);
                        §§push(this.§#5§);
                        if(_loc7_ || param2)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§#5§ = §§pop();
                        if(_loc7_ || param2)
                        {
                           §§push(this.§#5§);
                           if(_loc7_ || this)
                           {
                              §§push(0);
                              if(!(_loc6_ && param1))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§;'§);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!_loc6_)
                                       {
                                          _loc4_.§;'§ = _loc5_;
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(this);
                                          §§push(this.§[!?§);
                                          if(_loc7_ || param2)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§[!?§ = §§pop();
                                          §§push(this.§8W§);
                                          loop43:
                                          while(true)
                                          {
                                             addr792:
                                             §§push(!§§pop());
                                             if(!§§pop())
                                             {
                                                addr781:
                                                loop17:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr794:
                                                   while(true)
                                                   {
                                                      §§push(this.§;'§);
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(2);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            loop18:
                                                            while(!§§pop())
                                                            {
                                                               §§push(this.§8W§);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  addr682:
                                                                  §§push(!§§pop());
                                                                  §§push(!§§pop());
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        addr690:
                                                                        if(_loc7_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              continue loop43;
                                                                           }
                                                                           §§pop();
                                                                           loop49:
                                                                           while(true)
                                                                           {
                                                                              §§push(param2);
                                                                              addr654:
                                                                              while(true)
                                                                              {
                                                                                 addr655:
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(!(_loc7_ || param2))
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    this.§#5§ = 0;
                                                                                    addr644:
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       this.§!P§ = 0;
                                                                                       this.§,E§ = 0;
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             continue loop49;
                                                                                          }
                                                                                          this.§[!?§ = 0;
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§[6§();
                                                                                                addr352:
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   §§goto(addr119);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr620:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§%,§.§#8§(_loc3_));
                                                                                                   addr586:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr587:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr588:
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc7_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§>!K§);
                                                                                                                     }
                                                                                                                     §§pop().§!P§ = §§pop();
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(360);
                                                                                                                        §§push(§%,§);
                                                                                                                        §§push(this.§<#§);
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§#5§);
                                                                                                                           if(_loc7_ || this)
                                                                                                                           {
                                                                                                                              addr403:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(_loc7_ || this)
                                                                                                                              {
                                                                                                                                 §§push(this.§<#§);
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop().§#8§(§§pop()));
                                                                                                                              if(_loc7_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§=!<§);
                                                                                                                              }
                                                                                                                              §§pop().§,E§ = §§pop();
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr403);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr594:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop21:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§<#§ = this.§#5§;
                                                                                                                        break loop20;
                                                                                                                     }
                                                                                                                     addr738:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§#5§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * (Math.abs(this.§>!K§) / 2));
                                                                                                                        }
                                                                                                                        §§pop().§#5§ = §§pop();
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  this.§,E§ = 0;
                                                                                                                  addr705:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§=!<§ = 0;
                                                                                                                     addr700:
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  addr718:
                                                                                                                  addr705:
                                                                                                               }
                                                                                                            }
                                                                                                            break loop20;
                                                                                                         }
                                                                                                         §§goto(addr667);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ && _loc3_)
                                                                                                {
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr739:
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§>!K§ = this.§[!?§;
                                                                                                         addr744:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc6_ && param1))
                                                                                                            {
                                                                                                               break loop23;
                                                                                                            }
                                                                                                            break loop18;
                                                                                                         }
                                                                                                      }
                                                                                                      this.§#5§ = §74§;
                                                                                                      addr759:
                                                                                                      §§goto(addr738);
                                                                                                      addr759:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§[!?§ = -1;
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr718);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr630:
                                                                                       addr637:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 this.§>a§(2.25);
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr667:
                                                                                 §§goto(addr595);
                                                                                 continue loop49;
                                                                              }
                                                                              addr786:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§[!?§);
                                                                                 addr755:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    addr756:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       addr757:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr759);
                                                                           }
                                                                           §§goto(addr739);
                                                                        }
                                                                     }
                                                                     §§goto(addr662);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           §§goto(addr786);
                                                                        }
                                                                        addr785:
                                                                     }
                                                                     §§goto(addr757);
                                                                  }
                                                                  addr784:
                                                               }
                                                               §§goto(addr785);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§;'§);
                                                               break loop17;
                                                            }
                                                            addr777:
                                                         }
                                                         while(true)
                                                         {
                                                            addr783:
                                                            §§goto(addr784);
                                                         }
                                                         addr782:
                                                      }
                                                      break loop17;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr782);
                                                }
                                                addr781:
                                             }
                                             §§goto(addr777);
                                          }
                                          addr818:
                                       }
                                       §§goto(addr594);
                                    }
                                    §§goto(addr759);
                                 }
                                 else
                                 {
                                    §§push(this.§#5§);
                                    if(_loc7_)
                                    {
                                       §§push(this.§<#§);
                                       if(_loc7_)
                                       {
                                          §§push(2);
                                          loop42:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             addr607:
                                             loop0:
                                             while(§§pop() < §§pop())
                                             {
                                                §§push(this.§<#§);
                                                while(true)
                                                {
                                                   §§push(2);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc7_ || this)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(this.§#5§);
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(this.§<#§);
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(2);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop42;
                                                                                 }
                                                                                 addr543:
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    while(_loc7_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       break loop33;
                                                                                    }
                                                                                    addr619:
                                                                                    _loc3_ = Number(§§pop());
                                                                                    addr618:
                                                                                    §§goto(addr620);
                                                                                    addr551:
                                                                                 }
                                                                                 addr615:
                                                                                 §§push(§§pop() - §§pop());
                                                                                 §§push(this.§<#§);
                                                                                 §§push(2);
                                                                              }
                                                                              addr617:
                                                                              §§goto(addr618);
                                                                              §§push(§§pop() / (§§pop() / §§pop()));
                                                                           }
                                                                           §§goto(addr615);
                                                                        }
                                                                        §§goto(addr543);
                                                                     }
                                                                     §§goto(addr586);
                                                                  }
                                                                  §§goto(addr587);
                                                               }
                                                               break;
                                                            }
                                                            addr504:
                                                         }
                                                         §§goto(addr543);
                                                      }
                                                      loop37:
                                                      while(!_loc6_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            break loop0;
                                                         }
                                                         if(_loc7_ || this)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§%,§.§#8§(_loc3_,false));
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(!(_loc7_ || _loc3_))
                                                                  {
                                                                     continue loop37;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr481:
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§>!K§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    §§push(this.§>!K§);
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§pop().§!P§ = §§pop();
                                                                              addr444:
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr738);
                                                                                 }
                                                                                 §§goto(addr705);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr630);
                                                                              }
                                                                           }
                                                                           §§goto(addr794);
                                                                        }
                                                                        §§goto(addr755);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr551);
                                                                     }
                                                                  }
                                                                  addr476:
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            addr566:
                                                         }
                                                         §§goto(addr744);
                                                      }
                                                      addr610:
                                                      §§goto(addr543);
                                                      §§push(this.§#5§);
                                                      addr554:
                                                   }
                                                   break;
                                                }
                                                §§goto(addr756);
                                             }
                                             §§goto(addr610);
                                          }
                                       }
                                       §§goto(addr543);
                                    }
                                    §§goto(addr619);
                                 }
                              }
                              §§goto(addr756);
                           }
                           else
                           {
                              addr303:
                              §§push(param1);
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop1:
                                          for(; !_loc6_; while(_loc7_ || param2)
                                          {
                                             §§pop();
                                             §§goto(addr274);
                                             §§goto(addr201);
                                          })
                                          {
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop());
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop4:
                                                               while(!_loc6_)
                                                               {
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     §§push(this.§8W§);
                                                                     loop5:
                                                                     while(!_loc6_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        loop6:
                                                                        for(; _loc7_; if(!(_loc7_ || param2))
                                                                        {
                                                                           continue;
                                                                        },if(!_loc6_)
                                                                        {
                                                                           §§goto(addr140);
                                                                           §§push(!§§pop());
                                                                        },§§goto(addr655))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         addr156:
                                                                                                         if(_loc7_ || param2)
                                                                                                         {
                                                                                                            this.§>a§();
                                                                                                         }
                                                                                                         if(_loc7_ || param2)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr637);
                                                                                                               }
                                                                                                               §§goto(addr360);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc7_ || param2)
                                                                                                                     {
                                                                                                                        §§push(this.§]! §);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              §§push(!§§pop());
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     §§goto(addr759);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr444);
                                                                                                               addr274:
                                                                                                            }
                                                                                                            §§goto(addr595);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop13:
                                                                                                            for(; !_loc6_; §§goto(addr156))
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!(_loc6_ && this))
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc7_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(this.§0!5§);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 addr201:
                                                                                                                                 addr201:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ || param2))
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr778);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr818);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr700);
                                                                                                                        }
                                                                                                                        §§goto(addr664);
                                                                                                                     }
                                                                                                                     §§goto(addr644);
                                                                                                                  }
                                                                                                                  §§goto(addr588);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr481);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr403);
                                                                                                         }
                                                                                                      }
                                                                                                      addr119:
                                                                                                      return;
                                                                                                      addr154:
                                                                                                   }
                                                                                                   §§goto(addr201);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§goto(addr682);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              §§goto(addr792);
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr682);
                                                                  }
                                                                  §§goto(addr595);
                                                               }
                                                               §§goto(addr352);
                                                            }
                                                         }
                                                         §§goto(addr254);
                                                      }
                                                   }
                                                   §§goto(addr792);
                                                }
                                                §§goto(addr673);
                                             }
                                             §§goto(addr690);
                                          }
                                          §§goto(addr654);
                                       }
                                       else
                                       {
                                          §§goto(addr607);
                                       }
                                    }
                                    §§goto(addr617);
                                 }
                                 §§goto(addr504);
                              }
                           }
                           §§goto(addr543);
                        }
                        §§goto(addr705);
                     }
                     §§goto(addr664);
                  }
                  else
                  {
                     §§push(Math.random() * §8I§);
                     if(_loc7_)
                     {
                        if(!(_loc6_ && this))
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr303);
                           }
                           §§goto(addr619);
                        }
                        §§goto(addr489);
                     }
                  }
                  §§goto(addr476);
               }
               §§goto(addr756);
            }
            §§goto(addr543);
         }
         §§goto(addr566);
      }
      
      public function §>a§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.mName);
            loop0:
            while(§§pop() != "BIRD_SARDINE")
            {
               loop1:
               while(true)
               {
                  this.§;'§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§#5§ = §74§;
                     loop3:
                     while(true)
                     {
                        this.§!P§ = 0;
                        loop4:
                        for(; _loc3_; if(!(_loc3_ || _loc3_))
                        {
                           continue;
                        },§§goto(addr25))
                        {
                           §§push(this);
                           §§push(0.75);
                           if(!_loc2_)
                           {
                              §§push(Math.random() * 1.5);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(!_loc2_)
                                    {
                                       addr294:
                                       §§push(§§pop() * param1);
                                    }
                                 }
                                 §§pop().§>!K§ = §§pop();
                                 while(true)
                                 {
                                    this.§[!?§ = this.§>!K§;
                                    while(_loc3_)
                                    {
                                       §§push(this);
                                       §§push(this.§#5§);
                                       if(_loc3_ || this)
                                       {
                                          §§push(§§pop() * (Math.abs(this.§>!K§) / 3));
                                       }
                                       §§pop().§#5§ = §§pop();
                                       loop7:
                                       while(!(_loc2_ && _loc3_))
                                       {
                                          this.§<#§ = this.§#5§;
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.mName);
                                             loop9:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(§§pop() == "BIRD_WHITE");
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               addr197:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               continue loop3;
                                                               addr197:
                                                            }
                                                            else
                                                            {
                                                               addr165:
                                                            }
                                                            loop14:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(this.§#5§ >= 350)
                                                                  {
                                                                     §§push(this);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        if(Math.random() > 0.5)
                                                                        {
                                                                           addr99:
                                                                           §§push(1);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr112:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§pop().§=!<§ = §§pop();
                                                                           while(_loc3_)
                                                                           {
                                                                              §§push(this);
                                                                              if(!(_loc2_ && this))
                                                                              {
                                                                                 if(Math.random() > 0.5)
                                                                                 {
                                                                                    addr43:
                                                                                    §§push(this.§=!<§);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc2_ && _loc2_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(Number(0));
                                                                                 }
                                                                                 §§pop().§=!<§ = §§pop();
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr167:
                                                                                    this.§=!<§ = 0;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr124:
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                       this.§=!<§ = 0;
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                                 addr220:
                                                                                 addr198:
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          break loop10;
                                                                                       }
                                                                                       §§push(this.mName);
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                              }
                                                                              §§goto(addr43);
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 §§goto(addr25);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        §§push(-1);
                                                                        §§goto(addr112);
                                                                     }
                                                                     §§goto(addr99);
                                                                  }
                                                                  §§goto(addr124);
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            addr25:
                                                            return;
                                                            §§goto(addr198);
                                                         }
                                                         continue;
                                                         addr192:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr219);
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 addr296:
                              }
                           }
                           §§goto(addr294);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr296);
      }
      
      public function §[6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9!A§);
            loop0:
            while(true)
            {
               §§push(this.mX);
               addr123:
               while(true)
               {
                  §§push(§9!%§.§catch§);
                  addr125:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr126:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr127:
                        while(true)
                        {
                           §§push(this.§9!A§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §7c§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§0!5§ = true;
            while(true)
            {
               this.§8W§ = false;
            }
            addr176:
         }
         loop1:
         while(true)
         {
            this.§]! § = false;
            while(true)
            {
               this.§;'§ = 0;
               addr152:
               while(true)
               {
                  this.§;!W§ = 0;
                  continue loop1;
               }
               addr128:
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               §§push(this);
               §§push(this.mY);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§&§);
                  if(_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc1_ || _loc2_)
                     {
                        addr110:
                        §§push(§§pop() + this.radius);
                     }
                     §§pop().§=j§ = §§pop();
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           this.§#5§ = 0;
                           loop7:
                           do
                           {
                              this.§!P§ = 0;
                              addr62:
                              addr121:
                              loop8:
                              while(!(_loc2_ && _loc1_))
                              {
                                 this.§,E§ = 0;
                                 do
                                 {
                                    this.§[!?§ = 0;
                                    while(!(_loc2_ && _loc2_))
                                    {
                                       this.§=!<§ = 0;
                                       if(!_loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr29);
                                    }
                                    continue loop8;
                                 }
                                 while(_loc2_);
                                 
                                 continue loop7;
                              }
                              while(_loc1_ || _loc2_)
                              {
                                 §§goto(addr128);
                                 §§goto(addr62);
                              }
                              continue loop1;
                           }
                           while(!(_loc1_ || this));
                           
                           if(!_loc2_)
                           {
                              return;
                           }
                           continue;
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr152);
                  }
               }
               §§goto(addr110);
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§"!I§);
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc4_ || _loc3_)
               {
                  addr81:
                  §§push(true);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr85:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr85);
         }
         §§goto(addr81);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.mX);
            loop0:
            while(true)
            {
               §§push(param3);
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
                              addr147:
                              while(true)
                              {
                                 §§push(this.mX);
                                 addr112:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(param4);
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                    }
                                 }
                              }
                           }
                           addr146:
                        }
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(_loc5_ || param2)
                                    {
                                       §§pop();
                                       loop9:
                                       while(_loc5_)
                                       {
                                          §§push(this.mY);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(param1);
                                             addr59:
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!(_loc5_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_ || this)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc6_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr51);
                                                         }
                                                      }
                                                      continue loop3;
                                                      addr91:
                                                   }
                                                   §§goto(addr146);
                                                }
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      addr43:
                                                      continue loop8;
                                                   }
                                                   §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      continue loop9;
                                                      if(_loc6_ && this)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   continue loop10;
                                                   addr51:
                                                   return §§pop();
                                                }
                                                §§goto(addr115);
                                             }
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr147);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr91);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.mX);
            loop0:
            while(true)
            {
               §§push(param1);
               addr169:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§push(!§§pop());
                  }
                  addr188:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop11:
                                 while(true)
                                 {
                                    this.mX = param1;
                                    loop12:
                                    while(true)
                                    {
                                       this.mY = param2;
                                       loop13:
                                       for(; !_loc4_; if(_loc5_ || param1)
                                       {
                                          this.§[6§();
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_ || param1)
                                             {
                                                continue loop7;
                                             }
                                             §§goto(addr155);
                                          }
                                          addr27:
                                          return;
                                          addr82:
                                       })
                                       {
                                          §§push(this);
                                          §§push(this.mY);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop() + this.§&§);
                                          }
                                          §§pop().§=j§ = §§pop();
                                          loop14:
                                          while(true)
                                          {
                                             if(_loc5_ || param1)
                                             {
                                                this.§;!W§ = 100;
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop14;
                                                   addr54:
                                                   if(!(_loc5_ || param1))
                                                   {
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§-J§.§;M§();
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop13;
                                             }
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop2;
                                             }
                                             addr190:
                                             while(true)
                                             {
                                                §§pop();
                                                break loop9;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr165:
                                       while(true)
                                       {
                                          continue loop11;
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr155);
                              }
                              if(!(_loc5_ || param2))
                              {
                                 continue;
                              }
                              if(!_loc4_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          §§goto(addr54);
                                       }
                                       §§goto(addr82);
                                    }
                                    §§goto(addr64);
                                 }
                                 §§goto(addr27);
                              }
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                        }
                     }
                     §§goto(addr190);
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §7`§() : §>?§
      {
         return this.§<^§;
      }
      
      public function get §2G§() : Number
      {
         return this.§#5§;
      }
      
      public function get §!y§() : Number
      {
         return this.§;!W§;
      }
      
      public function set §!y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;!W§ = param1;
         }
      }
      
      public function get §^I§() : Number
      {
         return this.§"6§;
      }
      
      public function get §6A§() : Boolean
      {
         return this.§8W§;
      }
      
      public function get radius() : Number
      {
         return this.§"!I§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§9!A§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §^I§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"6§ = param1;
         }
      }
      
      public function get §1;§() : Number
      {
         return this.§%§;
      }
      
      public function set §1;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§%§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§7<§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§7<§ = param1;
         }
      }
   }
}
