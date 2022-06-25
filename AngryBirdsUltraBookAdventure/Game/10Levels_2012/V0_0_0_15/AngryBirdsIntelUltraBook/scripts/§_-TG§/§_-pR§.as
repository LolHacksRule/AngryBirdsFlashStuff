package §_-TG§
{
   import §_-0BH§.§_-0a§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-0DG§.§_-sQ§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-Yp§.b2Vec2;
   import §_-lt§.§_-eZ§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   
   public class §_-pR§
   {
      
      public static const §_-AA§:String = "ChannelSlingshot";
      
      public static const §_-0DR§:Number = 900;
      
      public static const §_-Og§:Number = 200;
      
      public static const §_-ZG§:Number = 200;
      
      public static const §_-El§:Number = 1500;
      
      public static const §_-VU§:Number = 5000;
      
      public static const §_-yp§:Number = 1000;
      
      public static const §_-E7§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-AA§ = "ChannelSlingshot";
            while(true)
            {
               §_-0DR§ = 900;
               addr107:
               while(true)
               {
                  §_-Og§ = 200;
                  addr102:
                  while(true)
                  {
                     §_-ZG§ = 200;
                     addr97:
                     while(true)
                     {
                        §_-El§ = 1500;
                     }
                  }
                  addr58:
                  if(!(_loc1_ && _loc2_))
                  {
                     return;
                     addr65:
                  }
               }
            }
            addr111:
         }
         loop4:
         while(true)
         {
            §_-VU§ = 5000;
            while(true)
            {
               §_-yp§ = 1000;
               while(true)
               {
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr111);
               }
               §§goto(addr107);
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  continue loop4;
               }
               if(!_loc1_)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr102);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr65);
      }
      
      protected var mName:String;
      
      protected var §_-c§:Number;
      
      protected var §_-l1§:Number;
      
      protected var §_-Hf§:Number;
      
      protected var §_-0Bx§:Number;
      
      private var §_-DJ§:§_-a2§;
      
      protected var §_-0Cn§:Number;
      
      protected var §_-xx§:Number = 1;
      
      private var §_-FQ§:Sprite;
      
      protected var §_-0BJ§:§_-J§;
      
      private var §_-0DD§:§_-09b§;
      
      protected var §_-0E3§:§_-E0§;
      
      private var §_-0D4§:Number;
      
      private var §_-093§:Boolean = false;
      
      private var §_-07W§:Boolean = false;
      
      protected var §_-FY§:Boolean = false;
      
      private var §_-03W§:Number;
      
      private var §_-ik§:Number = 0;
      
      private var §_-MT§:Number = 0;
      
      private var §_-1D§:Number = 0;
      
      private var §_-Rb§:Number = 1000;
      
      private var §_-xY§:Number;
      
      private var §_-v2§:Number;
      
      private var §_-x9§:int;
      
      private var §_-Ck§:Number = 0;
      
      protected var §_-Rl§:Number;
      
      protected var §_-0En§:Number;
      
      private var §_-JZ§:Number = 1;
      
      private var §_-03X§:Number = 0;
      
      private var §_-0-d§:b2Vec2;
      
      private var §_-XE§:Number = 1;
      
      public function §_-pR§(param1:§_-E0§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super();
            loop0:
            while(true)
            {
               this.§_-0E3§ = param1;
               loop1:
               while(true)
               {
                  this.§_-FQ§ = param2;
                  loop2:
                  while(true)
                  {
                     this.mName = param3;
                     loop3:
                     while(true)
                     {
                        this.§_-DJ§ = §_-09t§.§_-yf§(this.mName).§_-jf§;
                        addr94:
                        if(!(_loc6_ || this))
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue loop2;
                        }
                        this.§_-xt§();
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                                 addr44:
                                 if(_loc6_ || param1)
                                 {
                                    addr51:
                                    if(!(_loc7_ && param1))
                                    {
                                       addr58:
                                       if(!(_loc7_ && this))
                                       {
                                          addr65:
                                          if(_loc7_ && this)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       addr147:
                                       while(true)
                                       {
                                          this.§_-Hf§ = param4;
                                          addr142:
                                          loop7:
                                          while(true)
                                          {
                                             this.§_-0Bx§ = param5;
                                             addr77:
                                             while(true)
                                             {
                                                if(!(_loc6_ || param3))
                                                {
                                                   continue loop7;
                                                }
                                                §§goto(addr94);
                                                addr29:
                                                if(!(_loc7_ && param3))
                                                {
                                                   return;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr58);
                                       }
                                    }
                                    while(!(_loc7_ && param3))
                                    {
                                       continue loop1;
                                       §§goto(addr51);
                                    }
                                    continue loop0;
                                    addr123:
                                 }
                                 addr118:
                                 while(true)
                                 {
                                    this.§_-093§ = false;
                                    addr113:
                                    while(true)
                                    {
                                       this.§_-07W§ = false;
                                       addr108:
                                       while(true)
                                       {
                                          this.§_-ik§ = 0;
                                          §§goto(addr77);
                                       }
                                    }
                                    §§goto(addr44);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr113);
                           }
                           §§goto(addr108);
                        }
                        while(true)
                        {
                           this.§_-c§ = param4;
                           continue loop0;
                           §§goto(addr65);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      public function §_-0A4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-093§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-FQ§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§_-FQ§);
                     addr70:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§_-FQ§ = null;
                        }
                        while(_loc1_ && _loc2_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr68:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr68);
      }
      
      public function §_-U§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§_-07W§);
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
                           §§push(this.§_-xx§);
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
                                       this.§_-1D§ = 0;
                                       loop8:
                                       while(true)
                                       {
                                          this.§_-Ck§ = 0;
                                          loop9:
                                          while(true)
                                          {
                                             this.§_-0Cn§ = 0;
                                             while(_loc2_ || this)
                                             {
                                                this.§_-v2§ = 0;
                                                while(true)
                                                {
                                                   this.§_-xx§ = 0;
                                                   addr315:
                                                   while(!_loc3_)
                                                   {
                                                   }
                                                   continue loop9;
                                                }
                                                loop17:
                                                while(_loc2_ || param1)
                                                {
                                                   §§push(this);
                                                   §§push(this.§_-l1§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc2_ || param1)
                                                      {
                                                         §§push(§§pop() / 50);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§push(this.§_-03W§);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop() / §_-0DR§);
                                                            }
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                      }
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§pop().§_-l1§ = §§pop();
                                                   loop18:
                                                   while(_loc2_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§_-0Cn§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(param1);
                                                         if(_loc2_ || this)
                                                         {
                                                            §§push(360 - this.§_-0Cn§);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               addr144:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(this.§_-03W§);
                                                               }
                                                               §§pop().§_-0Cn§ = §§pop() + §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§_-03W§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop() - param1);
                                                                        }
                                                                        §§pop().§_-03W§ = §§pop();
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§_-03W§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(0);
                                                                              if(!_loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(§§pop() <= §§pop())
                                                                              {
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    this.§_-c§ = this.§_-0E3§.§_-c§;
                                                                                 }
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§_-l1§ = this.§_-0E3§.§_-l1§;
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ || this))
                                                                                       {
                                                                                          continue loop21;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop4;
                                                                                       }
                                                                                       this.§_-07W§ = false;
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§_-093§ = true;
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      this.§_-0Cn§ = 0;
                                                                                                      loop25:
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§_-Hr§();
                                                                                                               if(!(_loc3_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               return;
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                            continue;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr322);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop17;
                                                                                          }
                                                                                          addr285:
                                                                                          while(_loc2_ || this)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§_-l1§);
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc2_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.§_-0E3§.§_-l1§);
                                                                                                   if(!(_loc3_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop() - this.§_-l1§);
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         addr232:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            addr242:
                                                                                                            §§push(§§pop() / this.§_-03W§);
                                                                                                         }
                                                                                                         §§pop().§_-l1§ = §§pop() + §§pop();
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr242);
                                                                                                   }
                                                                                                   §§goto(addr232);
                                                                                                }
                                                                                                §§goto(addr242);
                                                                                             }
                                                                                             §§goto(addr232);
                                                                                          }
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§_-093§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             if(_loc2_ || _loc3_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr390:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                              §§goto(addr23);
                                                                           }
                                                                           addr300:
                                                                           while(_loc2_ || this)
                                                                           {
                                                                              param1 = §§pop();
                                                                              break loop19;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               while(_loc2_)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§_-c§);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(this.§_-0E3§.§_-c§);
                                                                        if(!_loc3_)
                                                                        {
                                                                           §§push(§§pop() - this.§_-c§);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr283:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(this.§_-03W§);
                                                                              }
                                                                              §§pop().§_-c§ = §§pop() + §§pop();
                                                                              §§goto(addr285);
                                                                           }
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr283);
                                                               }
                                                               continue loop8;
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                      }
                                                      §§goto(addr144);
                                                   }
                                                   §§goto(addr315);
                                                }
                                             }
                                             §§goto(addr381);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr300);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr381);
                  }
                  addr379:
               }
               §§goto(addr390);
            }
         }
         addr381:
      }
      
      public function §_-dI§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-07W§ = true;
         }
         loop0:
         while(true)
         {
            this.§_-03W§ = §_-0DR§;
            loop1:
            while(true)
            {
               this.§_-G5§(§_-a2§.§_-jI§);
               loop2:
               while(this.§_-Ck§ != 0)
               {
                  if(!_loc1_)
                  {
                     if(!_loc2_)
                     {
                        continue loop1;
                     }
                     §§push(this);
                     §§push(this.§_-l1§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() + this.§_-Ck§);
                     }
                     §§pop().§_-l1§ = §§pop();
                  }
                  while(_loc2_)
                  {
                     this.§_-Ck§ = 0;
                     if(!_loc1_)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break loop2;
                        }
                        continue loop2;
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
      }
      
      public function §_-aT§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-093§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-0En§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() > this.§_-0E3§.§_-6A§.§_-Uv§.§_-GV§)
                                 {
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§_-0E3§.§_-6A§.§_-Uv§.§_-GV§);
                                       if(!_loc4_)
                                       {
                                          §§push(§§pop() - this.§_-0En§);
                                       }
                                       §§pop().§_-0Ct§(§§pop());
                                       addr426:
                                       while(true)
                                       {
                                          this.§_-Rl§ = -1;
                                          addr386:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr414:
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§_-Rl§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§_-Rl§ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(this.§_-Rl§);
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(0);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§_-1D§);
                                                      addr349:
                                                      while(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push(0);
                                                      }
                                                      continue loop4;
                                                      loop14:
                                                      while(!(_loc4_ && param1))
                                                      {
                                                         if(!isNaN(this.§_-0En§))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§_-0E3§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§_-6A§);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().objects);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§_-1X§(this.§_-c§,this.§_-0En§));
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    addr243:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(§§pop() < 0)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(this.§_-0E3§);
                                                                                          loop22:
                                                                                          while(_loc3_ || this)
                                                                                          {
                                                                                             §§push(§§pop().§_-6A§);
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().objects);
                                                                                                addr194:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   addr195:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§_-086§(§§pop()));
                                                                                                      addr196:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§_-0Cj§);
                                                                                                         addr197:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr200);
                                                                                                               }
                                                                                                               §§push(this.§_-0E3§);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            addr432:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break loop9;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() / 100);
                                                                                       }
                                                                                       §§push(§§pop().§_-0Ct§(§§pop()));
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§goto(addr414);
                                                                                 }
                                                                              }
                                                                              addr305:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        continue loop14;
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr364);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                }
                                                §§goto(addr200);
                                             }
                                             while(_loc3_)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   §§goto(addr307);
                                                }
                                                §§goto(addr360);
                                             }
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                             addr393:
                                          }
                                          §§goto(addr349);
                                       }
                                       break;
                                       if(!(_loc3_ || this))
                                       {
                                          continue;
                                       }
                                       §§goto(addr200);
                                    }
                                    while(true)
                                    {
                                       §§push(this.§_-Rl§);
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr393);
                                       §§push(0);
                                    }
                                 }
                              }
                           }
                        }
                        addr200:
                        if(!(_loc4_ && param1))
                        {
                           this.§_-FY§ = false;
                           addr220:
                           if(_loc4_)
                           {
                              continue loop21;
                           }
                           if(_loc3_)
                           {
                              this.§_-Rl§ = -1;
                              addr179:
                           }
                           else
                           {
                              §§goto(addr426);
                           }
                        }
                        else
                        {
                           addr231:
                           if(_loc3_)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr386);
                                 }
                                 else
                                 {
                                    addr242:
                                 }
                              }
                              else
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    addr360:
                                    this.§_-Rl§ = this.§_-1D§;
                                    return;
                                    addr364:
                                 }
                                 addr327:
                                 while(true)
                                 {
                                    break loop18;
                                    §§goto(addr327);
                                 }
                              }
                           }
                           else
                           {
                              addr276:
                              this.§_-Rl§ = -1;
                              addr279:
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr432);
               }
            }
         }
         §§goto(addr242);
      }
      
      public function §_-0Ct§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this);
            §§push(this.§_-l1§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-l1§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§_-0En§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§_-0En§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§_-0En§);
                  if(_loc3_)
                  {
                     §§push(this.§_-0E3§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop().§_-6A§);
                        if(!_loc2_)
                        {
                           §§push(§§pop().§_-Uv§);
                           if(!_loc2_)
                           {
                              §§push(§§pop().§_-GV§);
                              if(!(_loc2_ && this))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§_-Hr§();
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    if(_loc3_ || this)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§push(false);
                                             if(!_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr56);
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§_-l1§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§_-l1§ = §§pop();
                                             addr105:
                                             loop4:
                                             while(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§_-0En§);
                                                   if(_loc3_ || this)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§_-0En§ = §§pop();
                                                   continue loop4;
                                                }
                                             }
                                             addr177:
                                             continue loop1;
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                continue loop3;
                                             }
                                          }
                                          addr178:
                                       }
                                       while(!(_loc3_ || param1))
                                       {
                                          §§goto(addr105);
                                       }
                                       this.§_-Hr§();
                                       break;
                                    }
                                 }
                                 continue;
                                 break;
                              }
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§goto(addr177);
                                    §§push(Number(§§pop()));
                                 }
                                 §§goto(addr177);
                              }
                              addr158:
                              §§goto(addr178);
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr157:
                           }
                           §§goto(addr158);
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr156:
                        }
                        §§goto(addr157);
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr155:
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr177);
               }
               addr56:
               return §§pop();
            }
         }
         §§goto(addr107);
      }
      
      public function §_-xt§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-vz§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§_-sQ§ = §_-09t§.§_-yf§(this.mName).shape;
         if(!_loc4_)
         {
            §§push(_loc1_.§_-0AK§());
            loop0:
            while(true)
            {
               §§push(§_-sQ§.§_-WD§);
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(_loc1_.§_-0AK§());
                     if(_loc5_)
                     {
                        §§push(§_-sQ§.§_-2b§);
                        if(!_loc4_)
                        {
                           if(§§pop() == §§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 this.§_-0-d§ = new b2Vec2(0,0);
                                 loop8:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§_-0D4§ = 1.5;
                                       addr160:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(_loc5_ || _loc1_)
                                             {
                                                addr109:
                                                break loop1;
                                             }
                                             continue loop7;
                                          }
                                          continue loop8;
                                          §§goto(addr140);
                                       }
                                       addr140:
                                       while(true)
                                       {
                                       }
                                       addr160:
                                       addr100:
                                    }
                                    else
                                    {
                                       §§goto(addr160);
                                    }
                                    this.§_-0D4§ = _loc1_.§_-ux§;
                                    addr146:
                                    while(true)
                                    {
                                       break loop1;
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  if(_loc5_)
                  {
                     this.§_-0-d§ = _loc1_.§_-J2§()[0];
                  }
                  §§goto(addr160);
               }
               while(true)
               {
                  this.§_-0BJ§ = this.§_-0E3§.§_-6A§.animationManager.getAnimation(this.mName);
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(this.§_-0BJ§)
                        {
                           this.§_-00Q§(this.§_-0BJ§.getFrame(0));
                           if(_loc5_)
                           {
                              if(!(_loc5_ || this))
                              {
                                 addr77:
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§goto(addr33);
                              }
                              §§goto(addr100);
                           }
                           addr33:
                           return;
                           addr82:
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr109);
               }
            }
         }
         this.§_-00Q§(null);
         §§goto(addr82);
      }
      
      public function §_-00Q§(param1:§_-vz§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(!(_loc5_ && _loc2_))
         {
            if(!param1)
            {
               addr31:
               _loc2_ = this.§_-0E3§.§_-0AM§.textureManager.§_-Fl§();
               if(_loc4_)
               {
                  addr58:
                  §§push(this.§_-0DD§);
                  if(!_loc5_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§_-0DD§ = new §_-09b§(_loc2_);
                           if(_loc4_)
                           {
                              this.§_-FQ§.addChild(this.§_-0DD§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§_-0DD§);
                                       loop2:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this.§_-0DD§);
                                                loop3:
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
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().x = §§pop();
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-0DD§);
                                                                        addr157:
                                                                        addr295:
                                                                        loop25:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           §§push(this.§_-0DD§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(-§§pop().height);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(2);
                                                                                    if(!(_loc4_ || param1))
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr189:
                                                                                    §§pop().y = §§pop() / §§pop();
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§_-0DD§);
                                                                                          addr118:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr119:
                                                                                             while(_loc4_ || _loc3_)
                                                                                             {
                                                                                                §§pop().scaleX = §§pop();
                                                                                                loop24:
                                                                                                while(_loc4_ || this)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§_-Hr§();
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                             §§goto(addr189);
                                                                                          }
                                                                                          addr288:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§_-0-d§);
                                                                                             addr290:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr291:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§_-00u§.§_-lY§);
                                                                                                   addr293:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      addr294:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         break loop25;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr115:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr115);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          §§push(this.§_-0DD§);
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                §§push(param1.pivotX);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                                addr287:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().texture = _loc2_;
                                                                                                   break loop10;
                                                                                                }
                                                                                                addr303:
                                                                                             }
                                                                                          }
                                                                                          addr268:
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                    addr255:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr288);
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-0-d§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       if(_loc4_ || _loc2_)
                                                                                       {
                                                                                          §§push(§_-00u§.§_-lY§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr251:
                                                                                             §§push(§§pop() / §§pop());
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                   §§goto(addr255);
                                                                                                }
                                                                                                addr254:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr294);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                       §§goto(addr291);
                                                                                    }
                                                                                    §§goto(addr251);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr290);
                                                                           }
                                                                           §§goto(addr189);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                        }
                                                                     }
                                                                     addr213:
                                                                  }
                                                                  while(!_loc5_)
                                                                  {
                                                                     §§push(this.§_-0DD§);
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.pivotY);
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§goto(addr227);
                                                                           §§push(-§§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr287);
                                                                        }
                                                                        §§goto(addr288);
                                                                     }
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            §§goto(addr295);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr268);
                                          }
                                          §§goto(addr217);
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                              }
                              addr311:
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        §§push(this.§_-0DD§);
                     }
                     §§goto(addr303);
                  }
                  §§goto(addr108);
               }
               §§goto(addr311);
            }
            else
            {
               _loc2_ = param1.texture;
               if(!_loc5_)
               {
                  §§push(param1.scale);
                  if(_loc4_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr58);
         }
         §§goto(addr31);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = true;
         if(!_loc5_)
         {
            this.§_-aT§(param1);
            loop0:
            while(true)
            {
               §§push(this.§_-07W§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§_-1D§ = 0;
                        addr151:
                        while(true)
                        {
                           §§push(false);
                           addr142:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr143:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr148:
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        loop4:
                        while(!_loc5_)
                        {
                           this.§_-08B§(param1);
                           while(_loc6_ || this)
                           {
                              if(_loc6_)
                              {
                                 this.§_-FA§(param1);
                                 loop6:
                                 for(; _loc6_; while(true)
                                 {
                                    if(_loc5_ && param3)
                                    {
                                       continue loop6;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(param3);
                                    if(_loc6_)
                                    {
                                       §§push(true);
                                       if(!(_loc5_ && param2))
                                       {
                                          addr39:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc5_ && this))
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr87);
                                                }
                                                §§goto(addr52);
                                             }
                                             §§goto(addr90);
                                          }
                                          §§goto(addr92);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr39);
                                 },§§goto(addr142))
                                 {
                                    §§push(_loc4_);
                                    while(!_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          addr91:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(§§pop())
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(!(_loc6_ || param3))
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      this.§_-1i§(param1,param2);
                                                   }
                                                   break;
                                                }
                                                addr22:
                                                return;
                                                addr52:
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop6;
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue;
                              }
                              §§goto(addr148);
                           }
                           §§goto(addr151);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr22);
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      public function §_-08B§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(this.§_-ik§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§_-MT§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(!_loc2_)
                        {
                           break;
                        }
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
                                    if(_loc3_ && _loc3_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       continue loop3;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr37:
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             this.§_-JL§();
                                          }
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc2_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!(_loc2_ || _loc3_))
                                                   {
                                                      addr175:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-ik§);
                                                         continue loop0;
                                                      }
                                                      addr175:
                                                   }
                                                }
                                                else
                                                {
                                                   addr162:
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc2_ || param1))
                                                   {
                                                      §§push(this);
                                                      §§push(this.§_-ik§);
                                                      if(_loc2_)
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr167:
                                                   }
                                                   continue loop2;
                                                   §§pop().§_-ik§ = §§pop();
                                                   break;
                                                }
                                                §§goto(addr175);
                                                addr126:
                                             }
                                             §§goto(addr175);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(this.§_-0E3§.mSlingShotState));
                                                if(_loc2_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop3;
                                                §§goto(addr37);
                                             }
                                             addr113:
                                          }
                                       }
                                       return;
                                    }
                                 }
                                 continue;
                                 addr95:
                              }
                              while(true)
                              {
                                 §§pop();
                              }
                              §§goto(addr126);
                           }
                        }
                     }
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     addr155:
                  }
                  §§goto(addr167);
               }
               if(§§pop() <= §§pop())
               {
                  if(!_loc3_)
                  {
                     this.§_-tJ§();
                  }
               }
               §§goto(addr162);
            }
         }
         §§goto(addr175);
      }
      
      public function §_-tJ§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-ik§ = 0;
         }
         do
         {
            this.§_-00Q§(this.§_-0BJ§.getFrame(0));
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §_-JL§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(_loc1_)
               {
                  return;
               }
               while(true)
               {
               }
               addr59:
            }
            loop1:
            while(true)
            {
               this.§_-ik§ = §_-Og§;
               do
               {
                  if(_loc1_)
                  {
                     continue;
                  }
                  continue loop1;
               }
               while(this.§_-00Q§(this.§_-0BJ§.getSubAnimation("blink").getFrame(0)), !_loc1_);
               
            }
         }
      }
      
      public function §_-FA§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-MT§);
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§_-ik§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(_loc2_ || _loc3_)
                     {
                        if(!(_loc2_ || param1))
                        {
                           break;
                        }
                        §§push(§§pop() <= §§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr93:
                                 addr129:
                                 while(_loc2_ || _loc3_)
                                 {
                                    continue loop2;
                                 }
                              }
                              addr92:
                           }
                           else
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_ || this)
                                    {
                                       this.§_-G5§();
                                    }
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    §§goto(addr93);
                                 }
                              }
                              addr45:
                           }
                           §§goto(addr19);
                        }
                        addr19:
                        return;
                     }
                     addr105:
                     if(§§pop() <= §§pop())
                     {
                        if(_loc2_ || param1)
                        {
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break loop1;
                              }
                              this.§_-mE§();
                              §§goto(addr129);
                           }
                           addr104:
                           §§goto(addr105);
                           §§push(this.§_-MT§);
                           §§push(0);
                           addr147:
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr129);
                  }
               }
               §§push(this);
               §§push(this.§_-MT§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§_-MT§ = §§pop();
               §§goto(addr147);
            }
         }
         §§goto(addr129);
      }
      
      public function §_-mE§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-MT§ = 0;
            do
            {
               this.§_-00Q§(this.§_-0BJ§.getFrame(0));
            }
            while(!_loc1_);
            
         }
      }
      
      public function §_-G5§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§_-MT§);
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
                              this.§_-mE§();
                              addr238:
                              while(true)
                              {
                              }
                           }
                           addr236:
                        }
                        while(true)
                        {
                           §§push(this.§_-ik§);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!(_loc4_ || param2))
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 this.§_-tJ§();
                                 addr230:
                                 addr183:
                                 while(true)
                                 {
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop5;
                                    }
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(§_-a2§.§_-l8§);
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       addr201:
                                    }
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          addr172:
                                          while(true)
                                          {
                                             this.§_-MT§ = §_-ZG§;
                                             loop11:
                                             while(true)
                                             {
                                                this.§_-00Q§(this.§_-0BJ§.getSubAnimation("yell").getFrame(0));
                                                loop12:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(this.§_-093§);
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            if(!(_loc3_ && param2))
                                                            {
                                                               §§push(§§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break loop8;
                                                                           }
                                                                           if(!(_loc4_ || param2))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr243);
                                                                           }
                                                                           §§push(this.§_-07W§);
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr119:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_ && param1)
                                                                                             {
                                                                                                continue loop19;
                                                                                             }
                                                                                             §§push(param2);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                          }
                                                                                          continue loop19;
                                                                                       }
                                                                                       addr118:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop12;
                                                                                       }
                                                                                       §_-eZ§.§_-7C§(param1,this.§_-DJ§,§_-AA§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!(_loc3_ && param2))
                                                                                       {
                                                                                          §§goto(addr25);
                                                                                       }
                                                                                       §§goto(addr119);
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr25:
                                                                                       return;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                           }
                                                                           §§goto(addr118);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     addr140:
                                                                  }
                                                                  §§goto(addr103);
                                                               }
                                                            }
                                                            §§goto(addr140);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr238);
                                             }
                                             continue loop9;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr230);
                              }
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§goto(addr183);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr201);
                              §§goto(addr230);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr243:
            return;
         }
         §§goto(addr238);
      }
      
      public function §_-1i§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_)
         {
            §§push(this.§_-1D§);
            if(!_loc7_)
            {
               §§push(0);
               if(!(_loc7_ && param1))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc7_)
                     {
                        §§push(this);
                        §§push(this.§_-1D§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§_-1D§ = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           addr50:
                           §§push(this.§_-1D§);
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§_-x9§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          _loc4_.§_-x9§ = _loc5_;
                                       }
                                       if(_loc6_)
                                       {
                                          §§push(this);
                                          §§push(this.§_-v2§);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§_-v2§ = §§pop();
                                          loop58:
                                          while(true)
                                          {
                                             addr799:
                                             §§push(!this.§_-093§);
                                             loop41:
                                             while(true)
                                             {
                                                addr801:
                                                if(§§pop())
                                                {
                                                   loop42:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr803:
                                                      loop32:
                                                      while(true)
                                                      {
                                                         §§push(this.§_-x9§);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(2);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() < §§pop());
                                                               while(true)
                                                               {
                                                                  addr770:
                                                                  if(§§pop())
                                                                  {
                                                                     addr771:
                                                                     §§push(this.§_-x9§);
                                                                     while(true)
                                                                     {
                                                                        §§push(1);
                                                                        addr774:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           addr775:
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ && param1)
                                                                              {
                                                                                 continue loop42;
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 addr794:
                                                                                 §§pop();
                                                                                 §§push(this.§_-v2§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    addr748:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                    }
                                                                                 }
                                                                                 addr747:
                                                                                 addr795:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr750:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§_-v2§ = -1;
                                                                                          addr754:
                                                                                       }
                                                                                       addr751:
                                                                                    }
                                                                                    addr738:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§_-xY§ = this.§_-v2§;
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§_-1D§ = §_-E7§;
                                                                                          addr737:
                                                                                          loop29:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§_-1D§);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() * (Math.abs(this.§_-xY§) / 2));
                                                                                             }
                                                                                             §§pop().§_-1D§ = §§pop();
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§_-Rb§ = this.§_-1D§;
                                                                                                addr717:
                                                                                                this.§_-0Cn§ = 0;
                                                                                                loop31:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§_-xx§ = 0;
                                                                                                   addr706:
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-Hr§();
                                                                                                            addr322:
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  loop26:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ || this))
                                                                                                                        {
                                                                                                                           continue loop30;
                                                                                                                        }
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§_-xY§);
                                                                                                                        if(_loc6_ || param2)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              §§push(this.§_-xY§);
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 §§push(-§§pop());
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§pop().§_-Ck§ = §§pop();
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr332);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr751);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr677:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue loop58;
                                                                                                                                    }
                                                                                                                                    this.§_-Bq§(2.25);
                                                                                                                                 }
                                                                                                                                 addr677:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           loop27:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§_-0a§.§_-0Ay§(_loc3_,false));
                                                                                                                              addr439:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          addr446:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§_-1D§);
                                                                                                                                             addr596:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                addr597:
                                                                                                                                                loop62:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§_-Rb§);
                                                                                                                                                   if(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      addr601:
                                                                                                                                                      §§push(2);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         §§goto(addr601);
                                                                                                                                                      }
                                                                                                                                                      addr602:
                                                                                                                                                   }
                                                                                                                                                   addr603:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                      {
                                                                                                                                                         addr612:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            addr613:
                                                                                                                                                            if(!_loc6_)
                                                                                                                                                            {
                                                                                                                                                               continue loop29;
                                                                                                                                                            }
                                                                                                                                                            §§push(§_-0a§.§_-0Ay§(_loc3_));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop62;
                                                                                                                                                               }
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop62;
                                                                                                                                                         addr612:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr612);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr594:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       §§goto(addr564);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc7_ && this))
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       §§goto(addr612);
                                                                                                                                    }
                                                                                                                                    addr525:
                                                                                                                                 }
                                                                                                                                 §§goto(addr612);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr332);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc7_ && param1)
                                                                                                                           {
                                                                                                                              continue loop38;
                                                                                                                           }
                                                                                                                           if(_loc7_ && _loc3_)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           this.§_-0Cn§ = 0;
                                                                                                                        }
                                                                                                                        addr639:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               if(_loc6_ || param2)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(!(_loc7_ && param2))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * this.§_-xY§);
                                                                                                                     }
                                                                                                                     §§pop().§_-Ck§ = §§pop();
                                                                                                                     addr548:
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        addr332:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(360);
                                                                                                                           §§push(§_-0a§);
                                                                                                                           §§push(this.§_-Rb§);
                                                                                                                           if(!(_loc7_ && param1))
                                                                                                                           {
                                                                                                                              §§push(this.§_-1D§);
                                                                                                                              if(!(_loc7_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 §§push(this.§_-Rb§);
                                                                                                                              }
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        addr332:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§_-v2§ = 0;
                                                                                                                        }
                                                                                                                        addr634:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_ || this)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop23;
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr564:
                                                                                                               §§goto(addr634);
                                                                                                            }
                                                                                                         }
                                                                                                         addr324:
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr88);
                                                                                                         }
                                                                                                         addr660:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-Ck§ = 0;
                                                                                                            §§goto(addr639);
                                                                                                            §§goto(addr324);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr773:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§_-093§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           addr698:
                                                                           §§push(!§§pop());
                                                                           if(!§§pop())
                                                                           {
                                                                              do
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(param2);
                                                                              }
                                                                              while(!_loc6_);
                                                                              
                                                                              if(_loc7_ && param1)
                                                                              {
                                                                                 continue loop41;
                                                                              }
                                                                              addr672:
                                                                              §§push(Boolean(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          this.§_-1D§ = 0;
                                                                                          §§goto(addr660);
                                                                                       }
                                                                                       §§goto(addr677);
                                                                                    }
                                                                                    addr675:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr750);
                                                                                 }
                                                                                 §§goto(addr738);
                                                                                 §§goto(addr672);
                                                                              }
                                                                           }
                                                                           §§goto(addr675);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr775);
                                                                        }
                                                                     }
                                                                     §§goto(addr698);
                                                                  }
                                                                  §§goto(addr677);
                                                                  §§goto(addr801);
                                                               }
                                                               continue loop42;
                                                               addr769:
                                                            }
                                                            §§goto(addr774);
                                                         }
                                                         §§goto(addr773);
                                                      }
                                                   }
                                                }
                                                §§goto(addr769);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          addr163:
                                       }
                                       §§goto(addr88);
                                    }
                                    §§goto(addr706);
                                 }
                                 else
                                 {
                                    §§push(this.§_-1D§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(this.§_-Rb§);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   §§push(this.§_-Rb§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(2);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§push(this.§_-1D§);
                                                               if(_loc6_ || param2)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr596);
                                                               }
                                                               else
                                                               {
                                                                  addr510:
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     §§push(2);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr522:
                                                                        §§push(§§pop() / (§§pop() / §§pop()));
                                                                        if(_loc6_)
                                                                        {
                                                                           addr524:
                                                                           §§push(Number(§§pop()));
                                                                           break;
                                                                        }
                                                                        §§goto(addr747);
                                                                     }
                                                                     §§goto(addr602);
                                                                  }
                                                               }
                                                               §§goto(addr603);
                                                            }
                                                            §§goto(addr555);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr748);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr594);
                                                §§push(this.§_-Rb§);
                                                §§goto(addr748);
                                             }
                                             §§goto(addr525);
                                          }
                                          §§goto(addr601);
                                       }
                                       §§goto(addr596);
                                    }
                                 }
                                 §§goto(addr612);
                              }
                              §§goto(addr748);
                           }
                           §§goto(addr524);
                        }
                        §§goto(addr706);
                     }
                     §§goto(addr50);
                  }
                  else
                  {
                     §§push(Math.random() * §_-yp§);
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              §§push(param1);
                              if(!(_loc7_ && param2))
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(§§pop() < §§pop());
                                    loop1:
                                    for(; _loc6_ || this; while(_loc6_ || this)
                                    {
                                       §§pop();
                                       §§goto(addr233);
                                    })
                                    {
                                       §§push(§§pop());
                                       loop2:
                                       while(_loc6_ || param2)
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             if(§§pop())
                                             {
                                                loop3:
                                                while(!_loc7_)
                                                {
                                                   §§pop();
                                                   loop4:
                                                   for(; _loc6_ || _loc3_; if(!(_loc6_ || param2))
                                                   {
                                                      continue;
                                                   },if(!_loc7_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            this.§_-Bq§();
                                                            §§goto(addr163);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr717);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr592);
                                                      §§goto(addr737);
                                                   },§§goto(addr613))
                                                   {
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            §§push(this.§_-093§);
                                                            loop5:
                                                            for(; _loc6_; while(_loc6_ || param2)
                                                            {
                                                               §§pop();
                                                               §§goto(addr204);
                                                               §§goto(addr112);
                                                            })
                                                            {
                                                               §§push(!§§pop());
                                                               loop6:
                                                               while(_loc6_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    loop16:
                                                                                    while(§§pop())
                                                                                    {
                                                                                       if(_loc6_ || this)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr141:
                                                                                             if(!(_loc7_ && param2))
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr233:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§_-07W§);
                                                                                                         addr167:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                            addr168:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ || param2))
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               §§goto(addr794);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr242:
                                                                                                   }
                                                                                                   §§goto(addr795);
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr141);
                                                                                             }
                                                                                             §§goto(addr322);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(_loc6_)
                                                                                             {
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   §§push(this.§_-FY§);
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr112:
                                                                                                         §§push(!§§pop());
                                                                                                         if(!(_loc6_ || param1))
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               §§goto(addr799);
                                                                                                            }
                                                                                                            §§goto(addr663);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr167);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr168);
                                                                                                   }
                                                                                                   §§goto(addr112);
                                                                                                }
                                                                                                §§goto(addr754);
                                                                                             }
                                                                                             §§goto(addr548);
                                                                                             addr204:
                                                                                          }
                                                                                          §§goto(addr754);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr163);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr88);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr793);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr770);
                                                            }
                                                            continue loop3;
                                                         }
                                                         §§goto(addr771);
                                                      }
                                                      §§goto(addr663);
                                                   }
                                                   §§goto(addr415);
                                                }
                                                §§goto(addr698);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr801);
                                       }
                                       §§goto(addr698);
                                    }
                                    §§goto(addr673);
                                 }
                                 else
                                 {
                                    §§goto(addr510);
                                 }
                              }
                           }
                           §§goto(addr522);
                        }
                        §§goto(addr439);
                     }
                  }
                  §§goto(addr446);
               }
               §§goto(addr748);
            }
            §§goto(addr597);
         }
         §§goto(addr242);
      }
      
      public function §_-Bq§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mName);
            while(true)
            {
               §§push("BIRD_SARDINE");
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§_-x9§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§_-1D§ = §_-E7§;
                        loop4:
                        while(true)
                        {
                           this.§_-Ck§ = 0;
                           addr326:
                           while(!(_loc3_ && _loc3_))
                           {
                              §§push(this);
                              §§push(0.75);
                              if(_loc2_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       addr320:
                                       §§push(-§§pop());
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(param1);
                                       }
                                       §§pop().§_-xY§ = §§pop();
                                       while(true)
                                       {
                                          this.§_-v2§ = this.§_-xY§;
                                          addr280:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§_-1D§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§§pop() * (Math.abs(this.§_-xY§) / 3));
                                             }
                                             §§pop().§_-1D§ = §§pop();
                                             continue loop4;
                                             addr187:
                                             if(_loc2_ || this)
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   addr19:
                                                   return;
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                       addr321:
                                    }
                                    §§goto(addr320);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr320);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr247);
      }
      
      public function §_-Hr§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§_-FQ§);
            while(true)
            {
               §§push(this.§_-c§);
               addr143:
               while(true)
               {
                  §§push(§_-00u§.§_-lY§);
                  addr145:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr146:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
               }
            }
            addr141:
         }
         loop4:
         while(true)
         {
            §§push(this.§_-FQ§);
            loop5:
            while(true)
            {
               if(_loc1_)
               {
                  §§push(this.§_-l1§);
                  while(true)
                  {
                     §§push(this.§_-Ck§);
                     if(!(_loc2_ && this))
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              addr129:
                              §§push(§_-00u§.§_-lY§);
                              if(_loc2_ && _loc1_)
                              {
                                 break;
                              }
                              §§push(§§pop() / §§pop());
                              while(true)
                              {
                                 §§pop().y = §§pop();
                                 continue loop5;
                                 addr71:
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§pop().rotation = §§pop();
                                    if(_loc1_)
                                    {
                                       if(_loc1_ || _loc1_)
                                       {
                                          return;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr143);
                              }
                              addr137:
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr129);
                     addr42:
                     if(!(_loc1_ || this))
                     {
                        continue;
                     }
                     §§push(§§pop() / 180);
                     if(!(_loc2_ && _loc1_))
                     {
                        addr58:
                        §§push(§§pop() * Math.PI);
                     }
                     §§goto(addr71);
                  }
               }
               else
               {
                  §§goto(addr141);
               }
               §§goto(addr145);
            }
         }
      }
      
      public function §_-D4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-FY§ = true;
            while(true)
            {
               this.§_-093§ = false;
               while(_loc2_)
               {
                  this.§_-07W§ = false;
                  while(_loc2_)
                  {
                     this.§_-x9§ = 0;
                     while(true)
                     {
                        this.§_-Rl§ = 0;
                        loop4:
                        while(true)
                        {
                           this.§_-1D§ = 0;
                           while(true)
                           {
                              this.§_-1D§ = 0;
                              while(_loc2_)
                              {
                                 this.§_-Ck§ = 0;
                                 while(!(_loc1_ && this))
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     while(true)
                     {
                        this.§_-0Cn§ = 0;
                        for(; _loc2_; while(_loc2_ || this)
                        {
                           this.§_-xx§ = 0;
                           if(_loc2_)
                           {
                              return;
                           }
                        })
                        {
                           if(_loc2_)
                           {
                              this.§_-v2§ = 0;
                              continue;
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr66);
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§_-c§) * (param1 - this.§_-c§) + (param2 - this.§_-l1§) * (param2 - this.§_-l1§));
         if(!(_loc4_ && param2))
         {
            §§push(_loc3_);
            §§push(this.§_-0D4§);
            if(!_loc4_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!(_loc4_ && this))
               {
                  addr82:
                  §§push(true);
                  if(_loc5_ || param1)
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
            §§goto(addr91);
         }
         §§goto(addr82);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            §§push(this.§_-c§);
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
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§_-c§);
                                 while(true)
                                 {
                                    §§push(param4);
                                    loop7:
                                    while(!_loc6_)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       if(_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   addr136:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      while(!_loc6_)
                                                      {
                                                         §§push(this.§_-l1§);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            addr71:
                                                            while(!(_loc6_ && param1))
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  if(!(_loc5_ || param2))
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  if(_loc6_ && param2)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     §§goto(addr53);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc6_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr136:
                                                }
                                                §§goto(addr88);
                                             }
                                          }
                                          addr133:
                                       }
                                       §§goto(addr136);
                                    }
                                    continue loop1;
                                    if(!(_loc5_ || param2))
                                    {
                                       continue;
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(param2);
                                    if(_loc5_)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       if(_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§goto(addr136);
                                          }
                                          if(!(_loc6_ && param1))
                                          {
                                             addr53:
                                             return §§pop();
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr105);
                                    }
                                    §§goto(addr71);
                                 }
                              }
                           }
                        }
                        §§goto(addr133);
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(_loc5_ || param2)
         {
            §§push(this.§_-c§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr143:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr144:
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     addr145:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop14:
                                 while(true)
                                 {
                                    §§push(true);
                                    addr129:
                                    loop6:
                                    while(!_loc4_)
                                    {
                                       if(_loc4_ && param2)
                                       {
                                          continue loop2;
                                       }
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          addr58:
                                          if(_loc5_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop14;
                                             }
                                             §§push(_loc3_);
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             if(§§pop())
                                             {
                                                addr36:
                                                if(_loc5_)
                                                {
                                                   this.§_-0E3§.§_-Lo§();
                                                }
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                   loop10:
                                                   while(_loc5_ || this)
                                                   {
                                                      this.§_-Hr§();
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§goto(addr58);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§_-l1§ = param2;
                                                               }
                                                               addr94:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§_-Rl§ = 100;
                                                            continue loop10;
                                                         }
                                                         §§goto(addr36);
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr54);
                                             }
                                          }
                                          continue;
                                          addr27:
                                          return;
                                       }
                                    }
                                    addr147:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop0;
                                    }
                                 }
                                 addr128:
                              }
                              while(true)
                              {
                                 this.§_-c§ = param1;
                                 §§goto(addr94);
                              }
                           }
                           addr126:
                        }
                        §§goto(addr147);
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
      
      public function §_-BJ§() : §_-09b§
      {
         return this.§_-0DD§;
      }
      
      public function get §import§() : Number
      {
         return this.§_-1D§;
      }
      
      public function get §_-DV§() : Number
      {
         return this.§_-Rl§;
      }
      
      public function set §_-DV§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Rl§ = param1;
         }
      }
      
      public function get §_-IX§() : Number
      {
         return this.§_-JZ§;
      }
      
      public function get §_-1l§() : Boolean
      {
         return this.§_-093§;
      }
      
      public function get radius() : Number
      {
         return this.§_-0D4§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §_-IX§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-JZ§ = param1;
         }
      }
      
      public function get §_-PV§() : Number
      {
         return this.§_-03X§;
      }
      
      public function set §_-PV§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-03X§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§_-XE§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-XE§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§_-c§;
      }
      
      public function get y() : Number
      {
         return this.§_-l1§;
      }
      
      public function get §_-vT§() : Number
      {
         return this.§_-Hf§;
      }
      
      public function get §_-05n§() : Number
      {
         return this.§_-0Bx§;
      }
   }
}
