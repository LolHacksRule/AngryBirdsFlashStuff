package §5!V§
{
   import §&"5§.§+2§;
   import §&"5§.§6!L§;
   import §+!o§.§]"5§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §,a§.§^7§;
   import §2"=§.b2Vec2;
   import §7R§.Texture;
   import §=!M§.§-!4§;
   import §default§.§=!Z§;
   import §default§.Sprite;
   
   public class §>n§
   {
      
      public static const §]=§:String = "ChannelSlingshot";
      
      public static const §`!6§:Number = 900;
      
      public static const §?!§:Number = 200;
      
      public static const §-Q§:Number = 200;
      
      public static const §9U§:Number = 1500;
      
      public static const §!0§:Number = 5000;
      
      public static const §#!f§:Number = 1000;
      
      public static const §!G§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]=§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §`!6§ = 900;
               loop1:
               while(true)
               {
                  §?!§ = 200;
                  while(_loc1_)
                  {
                     §-Q§ = 200;
                     loop3:
                     while(!(_loc2_ && §>n§))
                     {
                        while(true)
                        {
                           §9U§ = 1500;
                           loop5:
                           for(; !_loc2_; if(!(_loc1_ || §>n§))
                           {
                              continue;
                           },§§goto(addr55))
                           {
                              §!0§ = 5000;
                              loop6:
                              while(true)
                              {
                                 §#!f§ = 1000;
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                    addr55:
                                    §!G§ = 1000;
                                    if(_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr79);
      }
      
      protected var mName:String;
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §%!e§:Number;
      
      protected var §5!d§:Number;
      
      private var §#!,§:§+"&§;
      
      protected var §]$§:Number;
      
      protected var §]"9§:Number = 1;
      
      private var §!&§:Sprite;
      
      protected var §<!1§:§+2§;
      
      private var §2u§:§=!Z§;
      
      protected var §9!i§:§[!6§;
      
      private var §@!j§:Number;
      
      private var §,y§:Boolean = false;
      
      private var §6r§:Boolean = false;
      
      protected var §#@§:Boolean = false;
      
      private var §4B§:Number;
      
      private var §4C§:Number = 0;
      
      private var §;H§:Number = 0;
      
      private var §4R§:Number = 0;
      
      private var §+_§:Number = 1000;
      
      private var §&!C§:Number;
      
      private var § !S§:Number;
      
      private var §^"5§:int;
      
      private var §';§:Number = 0;
      
      protected var §+%§:Number;
      
      protected var §@p§:Number;
      
      private var § !R§:Number = 1;
      
      private var §8'§:Number = 0;
      
      private var §<!<§:b2Vec2;
      
      private var §?a§:Number = 1;
      
      public function §>n§(param1:§[!6§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§9!i§ = param1;
               addr168:
               addr74:
               while(true)
               {
                  this.§!&§ = param2;
               }
               if(!_loc6_)
               {
                  continue;
               }
               this.§4C§ = 0;
               loop12:
               while(true)
               {
                  if(!(_loc7_ && this))
                  {
                     if(_loc6_)
                     {
                        addr51:
                        loop8:
                        for(; _loc6_ || param1; §§goto(addr51))
                        {
                           this.§]$§ = 0;
                           while(true)
                           {
                              this.§,y§ = false;
                              loop10:
                              while(true)
                              {
                                 if(!(_loc7_ && param3))
                                 {
                                    this.§6r§ = false;
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop10;
                                       }
                                       if(_loc7_ && param3)
                                       {
                                          break;
                                       }
                                       §§goto(addr74);
                                       continue loop12;
                                    }
                                    while(!_loc7_)
                                    {
                                       this.§5!d§ = param5;
                                       continue loop8;
                                       §§goto(addr67);
                                    }
                                    while(!_loc7_)
                                    {
                                       this.mX = param4;
                                       break loop12;
                                    }
                                    while(true)
                                    {
                                       this.mName = param3;
                                       break loop8;
                                    }
                                    addr120:
                                    addr141:
                                    addr65:
                                    addr163:
                                 }
                                 addr127:
                                 while(true)
                                 {
                                    this.§%!e§ = param4;
                                    §§goto(addr120);
                                    continue loop10;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        if(!(_loc7_ && param1))
                        {
                           if(!_loc7_)
                           {
                              this.§!!?§();
                              while(!_loc7_)
                              {
                                 this.§+%§ = 0;
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       return;
                                    }
                                    continue loop12;
                                 }
                              }
                              §§goto(addr168);
                           }
                           break;
                        }
                        while(true)
                        {
                           this.§#!,§ = §<!m§.§"!F§(this.mName).§3k§;
                           §§goto(addr141);
                           §§goto(addr108);
                        }
                        addr108:
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr65);
               }
               while(true)
               {
                  this.mY = param5;
                  §§goto(addr127);
               }
            }
         }
         §§goto(addr163);
      }
      
      public function §<"4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§,y§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§!&§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr75:
                     this.§!&§.dispose();
                  }
                  do
                  {
                     this.§!&§ = null;
                  }
                  while(_loc1_ && _loc2_);
                  
                  addr50:
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr50);
      }
      
      public function §'"7§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§6r§);
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
                        addr441:
                        while(true)
                        {
                           §§push(this.§,y§);
                           if(!_loc3_)
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
                           if(_loc3_ && _loc2_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(§§pop())
                  {
                     if(_loc3_ && _loc2_)
                     {
                        addr434:
                        break;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        return;
                     }
                     §§goto(addr441);
                  }
                  §§push(this.§]"9§);
                  loop20:
                  while(true)
                  {
                     §§push(0);
                     loop14:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           loop15:
                           while(true)
                           {
                              this.§4R§ = 0;
                              loop16:
                              while(true)
                              {
                                 this.§';§ = 0;
                                 loop17:
                                 while(true)
                                 {
                                    this.§]$§ = 0;
                                    while(!_loc3_)
                                    {
                                       this.§ !S§ = 0;
                                       while(true)
                                       {
                                          this.§]"9§ = 0;
                                          continue loop17;
                                       }
                                       loop22:
                                       for(; !(_loc3_ && _loc2_); loop25:
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop22;
                                          }
                                          §§push(this);
                                          §§push(this.mY);
                                          if(!_loc3_)
                                          {
                                             §§push(param1);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop() / 50);
                                                if(_loc2_ || this)
                                                {
                                                   §§push(this.§4B§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() / §`!6§);
                                                   }
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().mY = §§pop();
                                          loop11:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§]$§);
                                             if(_loc2_)
                                             {
                                                §§push(param1);
                                                if(_loc2_ || param1)
                                                {
                                                   §§push(360 - this.§]$§);
                                                   if(_loc2_ || this)
                                                   {
                                                      addr189:
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr187:
                                                         §§push(§§pop() / this.§4B§);
                                                      }
                                                      §§pop().§]$§ = §§pop() + §§pop();
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§4B§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().§4B§ = §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc3_ && this)
                                                            {
                                                               continue loop12;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               §§push(this.§4B§);
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  §§push(0);
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     break;
                                                                  }
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     this.§@O§();
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        addr33:
                                                                        if(_loc2_ || param1)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        addr110:
                                                                        while(_loc2_ || _loc3_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(_loc2_ || param1)
                                                                              {
                                                                                 this.§]$§ = 0;
                                                                                 break loop10;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop25;
                                                                           §§goto(addr33);
                                                                        }
                                                                        loop6:
                                                                        while(true)
                                                                        {
                                                                           this.§6r§ = false;
                                                                           addr94:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc2_ || this))
                                                                              {
                                                                                 break loop13;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§goto(addr321);
                                                                              }
                                                                              this.§,y§ = true;
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                        addr73:
                                                                     }
                                                                     break;
                                                                  }
                                                                  for(; _loc2_ || _loc2_; §§goto(addr23))
                                                                  {
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr132:
                                                                     addr132:
                                                                     while(true)
                                                                     {
                                                                        this.mY = this.§9!i§.mY;
                                                                        §§goto(addr110);
                                                                     }
                                                                  }
                                                                  addr23:
                                                                  §§goto(addr94);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     param1 = §§pop();
                                                                     continue loop22;
                                                                  }
                                                                  addr343:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr368);
                                                            }
                                                         }
                                                         this.mX = this.§9!i§.mX;
                                                         §§goto(addr132);
                                                      }
                                                   }
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr189);
                                          }
                                          addr283:
                                       })
                                       {
                                          §§push(this);
                                          §§push(this.mX);
                                          if(_loc2_ || param1)
                                          {
                                             §§push(param1);
                                             if(_loc2_ || param1)
                                             {
                                                §§push(this.§9!i§.mX);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() - this.mX);
                                                   if(_loc2_)
                                                   {
                                                      addr313:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr318:
                                                         §§push(§§pop() / this.§4B§);
                                                      }
                                                      §§pop().mX = §§pop() + §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(_loc2_ || this)
                                                         {
                                                            §§push(this);
                                                            §§push(this.mY);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               §§push(param1);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §§push(this.§9!i§.mY);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(§§pop() - this.mY);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr274:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           §§push(this.§4B§);
                                                                        }
                                                                        §§pop().mY = §§pop() + §§pop();
                                                                        continue loop22;
                                                                     }
                                                                     §§goto(addr274);
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr434);
                                                         }
                                                      }
                                                      addr321:
                                                   }
                                                   §§goto(addr318);
                                                }
                                                §§goto(addr313);
                                             }
                                             §§goto(addr318);
                                          }
                                          §§goto(addr313);
                                       }
                                    }
                                    continue loop16;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr343);
                        }
                        continue loop20;
                     }
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      public function §7f§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6r§ = true;
         }
         loop0:
         while(true)
         {
            this.§4B§ = §`!6§;
            loop1:
            while(true)
            {
               this.§+i§(§+"&§.§[U§);
               while(true)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!_loc2_)
                     {
                        if(this.§';§ != 0)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue;
                              }
                              §§push(this);
                              §§push(this.mY);
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§§pop() + this.§';§);
                              }
                              §§pop().mY = §§pop();
                           }
                           this.§';§ = 0;
                           addr73:
                           if(_loc2_ && _loc1_)
                           {
                              §§goto(addr73);
                           }
                           break;
                        }
                        break;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      public function §'N§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_)
         {
            §§push(this.§,y§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop29:
                     while(true)
                     {
                        §§pop();
                        loop30:
                        while(true)
                        {
                           §§push(this.§+%§);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(0);
                              loop31:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 addr378:
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.§@p§);
                                             addr382:
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop() > this.§9!i§.§9q§.borders.mBorderGround_B2)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§9!i§.§9q§.borders.mBorderGround_B2);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§pop() - this.§@p§);
                                                      }
                                                      §§pop().§`@§(§§pop());
                                                      while(true)
                                                      {
                                                         this.§+%§ = -1;
                                                         addr365:
                                                         while(true)
                                                         {
                                                         }
                                                         addr190:
                                                         if(_loc4_ || param1)
                                                         {
                                                            addr22:
                                                            return;
                                                            addr145:
                                                         }
                                                      }
                                                   }
                                                   addr388:
                                                }
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§+%§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§+%§ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§+%§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(0);
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               while(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§push(this.§4R§);
                                                                  while(_loc4_ || param1)
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop3;
                                                               addr305:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue loop31;
                                                            }
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               loop12:
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
                                                                        if(!isNaN(this.§@p§))
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§9!i§);
                                                                              addr260:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§9q§);
                                                                                 addr261:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().objects);
                                                                                    addr262:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().§%! §(this.mX,this.§@p§));
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(!(_loc4_ || _loc2_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       addr282:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          addr283:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr258:
                                                                        }
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(_loc4_)
                                                                           {
                                                                              if(§§pop() >= 0)
                                                                              {
                                                                                 §§push(this.§9!i§);
                                                                                 loop22:
                                                                                 for(; !(_loc3_ && this); §§push(this.§9!i§),if(_loc3_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 },§§push(§§pop().§9q§),if(_loc4_)
                                                                                 {
                                                                                    §§goto(addr82);
                                                                                 },§§goto(addr158))
                                                                                 {
                                                                                    §§push(§§pop().§9q§);
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop().objects);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          addr162:
                                                                                          addr82:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().getObject(§§pop()));
                                                                                             addr163:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().§4" §);
                                                                                                addr164:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(_loc3_ && param1)
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            this.§#@§ = false;
                                                                                                         }
                                                                                                         addr179:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            this.§+%§ = -1;
                                                                                                            addr140:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr179);
                                                                                                            }
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               break loop9;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         break loop21;
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   addr226:
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop29;
                                                                                                }
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                          §§push(§§pop().objects);
                                                                                          if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().getObject(§§pop()));
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   §§push(§§pop().§#";§());
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  this.§#@§ = false;
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr305);
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr258);
                                                                                                            }
                                                                                                         }
                                                                                                         addr128:
                                                                                                         if(_loc4_ || _loc3_)
                                                                                                         {
                                                                                                            this.§+%§ = 2000;
                                                                                                            addr55:
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§goto(addr128);
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_ || _loc3_)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                               addr188:
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§goto(addr190);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr251:
                                                                                                               }
                                                                                                               §§goto(addr145);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr140);
                                                                                                            }
                                                                                                         }
                                                                                                         addr341:
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         if(!(_loc3_ && this))
                                                                                                         {
                                                                                                            return;
                                                                                                            addr350:
                                                                                                         }
                                                                                                         §§goto(addr388);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         this.§+%§ = 500;
                                                                                                         if(_loc4_ || param1)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            if(!(_loc3_ && param1))
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop9;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr330:
                                                                                                               if(_loc3_ && _loc2_)
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               this.§+%§ = this.§4R§;
                                                                                                               §§goto(addr341);
                                                                                                            }
                                                                                                            §§goto(addr365);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr55);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr55);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr164);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr163);
                                                                                                }
                                                                                                §§goto(addr164);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr162);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr262);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 §§goto(addr260);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr282);
                                                                        }
                                                                        §§push(this);
                                                                        §§push(param1);
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() / 100);
                                                                        }
                                                                        §§goto(addr226);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr330);
                                                         }
                                                         continue loop31;
                                                      }
                                                      §§goto(addr314);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr22);
                                    }
                                    continue loop31;
                                 }
                              }
                           }
                           §§goto(addr382);
                        }
                     }
                     addr423:
                  }
                  §§goto(addr378);
               }
               §§goto(addr423);
            }
         }
         §§goto(addr350);
      }
      
      public function §`@§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this);
            §§push(this.mY);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().mY = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§@p§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§@p§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§@p§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(this.§9!i§);
                     if(!_loc2_)
                     {
                        §§push(§§pop().§9q§);
                        if(_loc3_)
                        {
                           §§push(§§pop().borders);
                           if(!(_loc2_ && param1))
                           {
                              §§push(§§pop().mBorderGround_B2);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§@O§();
                                       if(_loc3_ || param1)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                §§push(false);
                                                if(!(_loc2_ && param1))
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr59);
                                             }
                                             while(_loc2_)
                                             {
                                                §§push(this);
                                                §§push(this.§@p§);
                                                continue loop1;
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§@p§ = §§pop();
                                             }
                                             this.§@O§();
                                             break loop1;
                                          }
                                          break loop1;
                                       }
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       addr67:
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§goto(addr115);
                                       }
                                    }
                                    addr98:
                                 }
                                 while(!_loc2_)
                                 {
                                    §§push(this.§@p§);
                                    if(!(_loc2_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§9!i§);
                                          addr163:
                                          while(true)
                                          {
                                             §§push(§§pop().§9q§);
                                             addr164:
                                             while(true)
                                             {
                                                §§push(§§pop().borders);
                                                addr165:
                                                while(true)
                                                {
                                                   §§push(§§pop().mBorderGround_B2);
                                                   addr166:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(_loc3_ || param1)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         addr174:
                                                      }
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr161:
                                    }
                                    §§goto(addr174);
                                 }
                                 continue loop0;
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr161);
               }
               addr59:
               return §§pop();
            }
         }
         §§goto(addr67);
      }
      
      public function §!!?§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§6!L§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§^7§ = §<!m§.§"!F§(this.mName).shape;
         if(!_loc5_)
         {
            §§push(_loc1_.§7!U§());
            loop0:
            while(true)
            {
               §§push(§^7§.§+!h§);
               addr170:
               addr77:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
                  if(_loc4_)
                  {
                     this.§<!<§ = _loc1_.§#!g§()[0];
                  }
                  this.§@!j§ = _loc1_.§7!T§;
               }
               loop4:
               while(true)
               {
                  this.§<!1§ = this.§9!i§.§9q§.§<"%§.§@7§(this.mName);
                  do
                  {
                     if(!(_loc4_ || this))
                     {
                        continue loop4;
                     }
                     if(!this.§<!1§)
                     {
                        if(_loc4_)
                        {
                           this.§?"9§(null);
                        }
                        continue;
                     }
                     this.§?"9§(this.§<!1§.getFrame(0));
                     if(_loc5_ && this)
                     {
                        continue;
                     }
                     addr52:
                     if(_loc4_ || _loc1_)
                     {
                        §§goto(addr32);
                     }
                     else
                     {
                        addr159:
                     }
                     while(!(_loc5_ && _loc1_))
                     {
                        continue loop4;
                        §§goto(addr52);
                     }
                     while(true)
                     {
                        this.§@!j§ = 1.5;
                        §§goto(addr109);
                     }
                     addr109:
                  }
                  while(_loc5_ && this);
                  
                  addr32:
                  return;
               }
            }
         }
         §§goto(addr165);
      }
      
      public function §?"9§(param1:§6!L§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc5_)
         {
            if(!param1)
            {
               addr27:
               _loc2_ = this.§9!i§.§4+§.§7!J§.§4!A§();
               if(_loc5_ || _loc3_)
               {
                  addr54:
                  §§push(this.§2u§);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           this.§2u§ = new §=!Z§(_loc2_);
                           if(_loc5_ || _loc3_)
                           {
                              this.§!&§.addChild(this.§2u§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§2u§);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§2u§);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             if(_loc5_)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   §§push(2);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr218:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         addr219:
                                                         loop16:
                                                         while(!(_loc4_ && param1))
                                                         {
                                                            §§push(this.§2u§);
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§push(this.§2u§);
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(-§§pop().height);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           break loop15;
                                                                        }
                                                                        §§push(2);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr196:
                                                                           §§pop().y = §§pop() / §§pop();
                                                                           addr197:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§2u§);
                                                                              continue loop2;
                                                                              §§goto(addr197);
                                                                           }
                                                                           continue loop1;
                                                                           addr132:
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     addr272:
                                                                     while(true)
                                                                     {
                                                                        §§pop().y = §§pop();
                                                                        break loop16;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr292:
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        §§push(§!w§.§4!-§);
                                                                        addr294:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           addr295:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              addr296:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop().texture = _loc2_;
                                                                     continue loop1;
                                                                  }
                                                                  addr319:
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr291);
                                                            }
                                                         }
                                                         addr273:
                                                         while(!(_loc4_ && param1))
                                                         {
                                                            §§goto(addr132);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§<!<§);
                                                      if(!(_loc4_ && this))
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc5_ || this)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(§!w§.§4!-§);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr264:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     §§goto(addr272);
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr294);
                                                               }
                                                               §§goto(addr295);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr292);
                                                            }
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr291);
                                                      }
                                                      addr234:
                                                   }
                                                }
                                                §§goto(addr291);
                                             }
                                             §§goto(addr218);
                                          }
                                       }
                                    }
                                    §§goto(addr284);
                                 }
                              }
                           }
                           §§goto(addr284);
                        }
                        §§goto(addr131);
                     }
                     else
                     {
                        §§push(this.§2u§);
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr230);
               }
               §§goto(addr284);
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
            §§goto(addr54);
         }
         §§goto(addr27);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(!_loc6_)
         {
            this.§'N§(param1);
            loop0:
            while(true)
            {
               §§push(this.§6r§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§4R§ = 0;
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr147:
                              while(true)
                              {
                              }
                              loop10:
                              while(!(_loc6_ && this))
                              {
                                 §§push(§§pop());
                                 loop11:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§pop();
                                          addr120:
                                          addr50:
                                          while(true)
                                          {
                                             if(_loc5_ || param3)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(param3);
                                                   if(_loc6_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc5_ || param3)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop14;
                                                }
                                                §§goto(addr147);
                                             }
                                             addr143:
                                             while(true)
                                             {
                                                this.§4"§(param1);
                                                addr134:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      continue loop10;
                                                   }
                                                   continue loop14;
                                                }
                                                continue loop1;
                                             }
                                             continue loop14;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop10;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   break loop11;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr134);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc6_ && param3))
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§goto(addr21);
                                                      }
                                                      continue loop3;
                                                   }
                                                   addr140:
                                                   while(true)
                                                   {
                                                      this.§;!H§(param1);
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr21);
                                                }
                                             }
                                             addr71:
                                          }
                                          §§goto(addr120);
                                       }
                                       §§goto(addr21);
                                    }
                                    continue loop10;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        §§goto(addr140);
                     }
                     addr21:
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§`J§(param1,param2);
            §§goto(addr71);
         }
      }
      
      public function §;!H§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§4C§);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc2_ && param1))
                     {
                        §§push(this);
                        §§push(this.§4C§);
                        if(!(_loc2_ && param1))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§4C§ = §§pop();
                     }
                     while(true)
                     {
                        §§push(this.§4C§);
                        addr130:
                        while(true)
                        {
                           §§push(0);
                        }
                     }
                     addr176:
                  }
                  else
                  {
                     §§push(this.§;H§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop() <= §§pop());
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(§§pop())
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§-"$§();
                                                         addr67:
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               loop10:
                                                               while(_loc3_ || _loc2_)
                                                               {
                                                                  addr108:
                                                                  §§push(Boolean(this.§9!i§.mSlingShotState));
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr100:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop10;
                                                                     §§goto(addr108);
                                                                  }
                                                               }
                                                               addr109:
                                                               break loop11;
                                                               addr141:
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break loop11;
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                      }
                                                      addr65:
                                                   }
                                                   this.§5!w§();
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr67);
                                             }
                                             return;
                                             addr47:
                                          }
                                          §§goto(addr100);
                                       }
                                       continue loop4;
                                    }
                                    addr95:
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                        }
                        break;
                     }
                  }
                  while(true)
                  {
                     if(_loc3_ || this)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               if(§§pop() <= §§pop())
               {
                  §§goto(addr139);
               }
               §§goto(addr109);
            }
         }
         §§goto(addr65);
      }
      
      public function §5!w§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4C§ = 0;
         }
         do
         {
            this.§?"9§(this.§<!1§.getFrame(0));
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §-"$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               do
               {
                  this.§4C§ = §?!§;
                  do
                  {
                     this.§?"9§(this.§<!1§.getSubAnimation("blink").getFrame(0));
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(!_loc1_);
               
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §4"§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§;H§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr145:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§;H§);
                        if(_loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§;H§ = §§pop();
                        addr153:
                        while(true)
                        {
                           §§push(this.§;H§);
                        }
                     }
                     addr145:
                  }
                  else
                  {
                     §§push(this.§4C§);
                     loop2:
                     for(; !(_loc2_ && _loc3_); §§push(Math.random() * §!0§),if(_loc2_ && _loc3_)
                     {
                        continue;
                     },§§push(§§pop() < param1),if(_loc3_)
                     {
                        §§goto(addr40);
                     },§§goto(addr94))
                     {
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() <= §§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr95:
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc2_ && this)
                                          {
                                             §§goto(addr145);
                                          }
                                       }
                                       else
                                       {
                                          addr123:
                                       }
                                       continue loop2;
                                    }
                                 }
                                 addr94:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§+i§();
                                             break loop3;
                                          }
                                          §§goto(addr95);
                                       }
                                       break loop3;
                                    }
                                 }
                                 addr47:
                              }
                              addr20:
                              addr40:
                              return;
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr47);
                           }
                           §§goto(addr20);
                        }
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 this.§["9§();
                                 §§goto(addr123);
                              }
                              §§goto(addr153);
                           }
                        }
                        §§goto(addr123);
                     }
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§goto(addr104);
                     §§push(0);
                     §§goto(addr153);
                  }
                  §§goto(addr123);
               }
            }
         }
         §§goto(addr145);
      }
      
      public function §["9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;H§ = 0;
         }
         do
         {
            this.§?"9§(this.§<!1§.getFrame(0));
         }
         while(_loc1_ && this);
         
      }
      
      public function §+i§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§;H§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(_loc3_ || this)
                           {
                              this.§["9§();
                           }
                           while(true)
                           {
                              loop15:
                              while(_loc3_ || param1)
                              {
                                 §§push(this.§6r§);
                                 loop16:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop17:
                                    while(_loc3_ || param2)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_)
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
                                                      if(_loc3_)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop16;
                                                         }
                                                         addr77:
                                                         if(!_loc3_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     addr92:
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        §]"5§.§1!%§(param1,this.§#!,§);
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(§+"&§.§6!z§);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                        }
                                                                        addr185:
                                                                        while(true)
                                                                        {
                                                                           param1 = §§pop();
                                                                        }
                                                                        §§goto(addr92);
                                                                     }
                                                                     addr180:
                                                                  }
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     addr164:
                                                                     while(true)
                                                                     {
                                                                        this.§;H§ = §-Q§;
                                                                        addr168:
                                                                        while(true)
                                                                        {
                                                                           this.§?"9§(this.§<!1§.getSubAnimation("yell").getFrame(0));
                                                                           addr163:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§,y§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 break loop17;
                                                                                 addr69:
                                                                                 if(_loc4_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr77);
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §]"5§.§1!%§(param1,this.§#!,§,§]=§);
                                                            if(!(_loc3_ || this))
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr24);
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop20;
                                                         }
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               addr24:
                                                               return;
                                                               addr108:
                                                            }
                                                            else
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  addr169:
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        if(§§pop() < 0)
                                                                        {
                                                                           §§goto(addr180);
                                                                        }
                                                                        §§goto(addr164);
                                                                     }
                                                                     §§goto(addr185);
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               addr222:
                                                            }
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   continue loop17;
                                                }
                                             }
                                             §§goto(addr79);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop15;
                                             }
                                             addr145:
                                          }
                                          else
                                          {
                                             §§goto(addr130);
                                          }
                                       }
                                       addr130:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr144);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§push(this.§4C§);
                           if(!(_loc3_ || param1))
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc4_ && param2)
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    §§goto(addr252);
                                 }
                                 this.§5!w§();
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr169);
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr252:
            return;
         }
         §§goto(addr108);
      }
      
      public function §`J§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_ || param2)
         {
            §§push(this.§4R§);
            if(_loc7_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(this);
                        §§push(this.§4R§);
                        if(_loc7_ || param1)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§4R§ = §§pop();
                        if(!(_loc6_ && this))
                        {
                           §§push(this.§4R§);
                           if(!(_loc6_ && param1))
                           {
                              §§push(0);
                              if(_loc7_ || param2)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§^"5§);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_ || param2)
                                       {
                                          _loc4_.§^"5§ = _loc5_;
                                       }
                                       if(_loc7_ || this)
                                       {
                                          §§push(this);
                                          §§push(this.§ !S§);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§ !S§ = §§pop();
                                          loop58:
                                          while(true)
                                          {
                                             addr820:
                                             §§push(!this.§,y§);
                                             loop24:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop25:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr824:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(this.§^"5§);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§push(2);
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§^"5§);
                                                                           addr795:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              addr796:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr697:
                                                                     §§push(!this.§,y§);
                                                                     while(true)
                                                                     {
                                                                        addr699:
                                                                        if(§§pop())
                                                                        {
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr701:
                                                                              if(_loc7_ || param2)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr685:
                                                                                 addr685:
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    this.§4R§ = 0;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          this.§';§ = 0;
                                                                                          addr653:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   this.§]$§ = 0;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§ !S§ = 0;
                                                                                                      addr641:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr643:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§01§(2.25);
                                                                                                               addr689:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     continue loop58;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr686:
                                                                                                         }
                                                                                                         loop16:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr368:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§@O§();
                                                                                                               addr371:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_ || param2)
                                                                                                                  {
                                                                                                                     break loop16;
                                                                                                                  }
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        this.§+_§ = this.§4R§;
                                                                                                                        addr728:
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           this.§]$§ = 0;
                                                                                                                           addr718:
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr753:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§&!C§ = this.§ !S§;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr769:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§4R§ = §!G§;
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr793);
                                                                                                                     }
                                                                                                                     §§goto(addr753);
                                                                                                                  }
                                                                                                                  this.§]"9§ = 0;
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr114);
                                                                                                      }
                                                                                                   }
                                                                                                   addr648:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§ !S§);
                                                                                                   addr762:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-1);
                                                                                                      addr763:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() < §§pop());
                                                                                                         addr764:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr765:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               break loop15;
                                                                                                            }
                                                                                                            §§goto(addr753);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr816:
                                                                                             }
                                                                                             §§goto(addr752);
                                                                                          }
                                                                                          addr653:
                                                                                       }
                                                                                       §§goto(addr689);
                                                                                    }
                                                                                    addr669:
                                                                                 }
                                                                                 §§goto(addr686);
                                                                              }
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§ !S§ = -1;
                                                                              §§goto(addr769);
                                                                           }
                                                                        }
                                                                        §§goto(addr685);
                                                                        §§goto(addr697);
                                                                     }
                                                                     addr791:
                                                                     addr698:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr798:
                                                                     §§push(§§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr801:
                                                                        if(!(_loc7_ || _loc3_))
                                                                        {
                                                                           continue loop26;
                                                                        }
                                                                        if(!(_loc7_ || param2))
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        §§pop();
                                                                        §§goto(addr816);
                                                                     }
                                                                     §§goto(addr764);
                                                                  }
                                                                  continue loop26;
                                                                  addr797:
                                                               }
                                                               §§goto(addr796);
                                                            }
                                                            §§goto(addr795);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr791);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr824);
                                    }
                                    else
                                    {
                                       addr379:
                                       §§push(this);
                                       §§push(360);
                                       §§push(§-!4§);
                                       §§push(this.§+_§);
                                       if(_loc7_ || param2)
                                       {
                                          §§push(this.§4R§);
                                          if(!_loc6_)
                                          {
                                             addr417:
                                             §§push(§§pop() - §§pop());
                                             if(_loc7_ || param2)
                                             {
                                                §§push(this.§+_§);
                                             }
                                             §§push(§§pop() * §§pop().§66§(§§pop()));
                                             if(_loc7_)
                                             {
                                                §§push(§§pop() * this.§]"9§);
                                             }
                                             §§pop().§]$§ = §§pop();
                                             if(_loc7_)
                                             {
                                                §§goto(addr368);
                                             }
                                             §§goto(addr653);
                                          }
                                          §§push(§§pop() / §§pop());
                                       }
                                       §§goto(addr417);
                                       addr460:
                                    }
                                    §§goto(addr653);
                                 }
                                 else
                                 {
                                    §§push(this.§4R§);
                                    if(_loc7_ || param1)
                                    {
                                       addr614:
                                       §§push(this.§+_§);
                                       §§push(2);
                                       loop34:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          loop35:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                addr617:
                                                §§push(this.§+_§);
                                                while(true)
                                                {
                                                   §§push(this.§4R§);
                                                }
                                                addr619:
                                             }
                                             else
                                             {
                                                §§push(this.§+_§);
                                                if(!_loc6_)
                                                {
                                                   §§push(2);
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr491:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§4R§);
                                                               addr501:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  loop40:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+_§);
                                                                     addr504:
                                                                     while(_loc7_ || param2)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop34;
                                                                              }
                                                                              §§push(§§pop() / §§pop());
                                                                              loop44:
                                                                              while(_loc7_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop35;
                                                                                 }
                                                                                 §§push(§§pop() / §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          addr541:
                                                                                          §§push(Number(§§pop()));
                                                                                          loop55:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr542:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_ && _loc3_)
                                                                                                {
                                                                                                   break loop55;
                                                                                                }
                                                                                                §§push(§-!4§.§66§(_loc3_,false));
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   continue loop40;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr641);
                                                                                          addr541:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr622:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§+_§);
                                                                                             break loop44;
                                                                                          }
                                                                                          addr622:
                                                                                       }
                                                                                    }
                                                                                    loop45:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr596:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§&!C§);
                                                                                                   }
                                                                                                   §§pop().§';§ = §§pop();
                                                                                                   addr564:
                                                                                                   §§goto(addr379);
                                                                                                   addr564:
                                                                                                }
                                                                                                §§goto(addr669);
                                                                                             }
                                                                                             §§goto(addr648);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr619);
                                                                                          }
                                                                                       }
                                                                                       addr628:
                                                                                       loop67:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          addr629:
                                                                                          while(_loc7_ || param2)
                                                                                          {
                                                                                             §§push(§-!4§.§66§(_loc3_));
                                                                                             if(!(_loc7_ || _loc3_))
                                                                                             {
                                                                                                continue loop45;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   continue loop45;
                                                                                                }
                                                                                                §§goto(addr762);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop67;
                                                                                                }
                                                                                                addr627:
                                                                                             }
                                                                                          }
                                                                                          break loop45;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr713);
                                                                                 }
                                                                                 §§goto(addr541);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(2);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              break loop35;
                                                                           }
                                                                           addr625:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr622);
                                                                        }
                                                                     }
                                                                     break loop35;
                                                                  }
                                                               }
                                                            }
                                                            addr499:
                                                         }
                                                         §§goto(addr541);
                                                      }
                                                      addr491:
                                                   }
                                                   §§goto(addr763);
                                                }
                                                §§goto(addr499);
                                             }
                                             §§goto(addr621);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr627);
                                             §§goto(addr625);
                                          }
                                       }
                                       addr615:
                                    }
                                    §§goto(addr622);
                                 }
                              }
                              §§goto(addr491);
                           }
                           else
                           {
                              addr345:
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop0:
                                          for(; _loc7_ || this; if(!(_loc7_ || _loc3_))
                                          {
                                             continue;
                                          },if(!_loc6_)
                                          {
                                             §§goto(addr140);
                                             §§push(!§§pop());
                                          },§§goto(addr820))
                                          {
                                             §§push(§§pop());
                                             loop1:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop2:
                                                   while(!_loc6_)
                                                   {
                                                      §§pop();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(this.§,y§);
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§push(!§§pop());
                                                            while(true)
                                                            {
                                                            }
                                                            addr295:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            continue loop1;
                                                            addr231:
                                                            if(_loc6_ && param2)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc7_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop9:
                                                                              while(_loc7_ || param2)
                                                                              {
                                                                                 §§pop();
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(!(_loc6_ && _loc3_))
                                                                                       {
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(this.§#@§);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             addr140:
                                                                                             addr140:
                                                                                             if(_loc7_ || this)
                                                                                             {
                                                                                                addr147:
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc6_ && this)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc6_ && this))
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         addr190:
                                                                                                         if(_loc7_ || this)
                                                                                                         {
                                                                                                            if(_loc7_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param1))
                                                                                                               {
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§goto(addr114);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr629);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr596);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr542);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr379);
                                                                                                         }
                                                                                                         §§goto(addr371);
                                                                                                      }
                                                                                                      addr114:
                                                                                                      return;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr306:
                                                                                                      while(_loc7_)
                                                                                                      {
                                                                                                         if(_loc7_ || param1)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§push(this.§6r§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        §§goto(addr231);
                                                                                                                     }
                                                                                                                     §§goto(addr801);
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr140);
                                                                                                               }
                                                                                                               §§goto(addr685);
                                                                                                               addr219:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr617);
                                                                                                            }
                                                                                                            §§goto(addr713);
                                                                                                         }
                                                                                                         §§goto(addr564);
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                      §§goto(addr147);
                                                                                                   }
                                                                                                   addr305:
                                                                                                }
                                                                                                §§goto(addr564);
                                                                                             }
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr728);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr306);
                                                                                 }
                                                                                 §§goto(addr475);
                                                                              }
                                                                              §§goto(addr697);
                                                                           }
                                                                           §§goto(addr161);
                                                                        }
                                                                        §§goto(addr798);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr699);
                                                               addr240:
                                                            }
                                                            §§goto(addr797);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr765);
                                                }
                                                §§goto(addr295);
                                             }
                                          }
                                          §§goto(addr698);
                                       }
                                       else
                                       {
                                          §§goto(addr614);
                                       }
                                    }
                                    §§goto(addr501);
                                 }
                                 §§goto(addr504);
                              }
                           }
                           §§goto(addr519);
                        }
                        §§goto(addr188);
                     }
                     §§goto(addr643);
                  }
                  else
                  {
                     §§push(Math.random() * §#!f§);
                     if(_loc7_ || param2)
                     {
                        if(!(_loc6_ && param2))
                        {
                           if(_loc7_ || param2)
                           {
                              §§goto(addr345);
                           }
                           §§goto(addr541);
                        }
                        §§goto(addr466);
                     }
                  }
                  §§goto(addr467);
               }
               §§goto(addr491);
            }
            §§goto(addr628);
         }
         §§goto(addr617);
      }
      
      public function §01§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.mName);
            while(§§pop() != "BIRD_SARDINE")
            {
               while(true)
               {
                  this.§^"5§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§4R§ = §!G§;
                     addr352:
                     while(true)
                     {
                        this.§';§ = 0;
                        continue loop2;
                     }
                  }
               }
               while(!(_loc3_ && param1))
               {
                  §§goto(addr248);
                  §§push(§§pop() == "BIRD_WHITE");
                  §§goto(addr206);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §@O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§!&§);
            while(true)
            {
               §§push(this.mX);
               addr138:
               while(true)
               {
                  §§push(§!w§.§4!-§);
                  addr140:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr141:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
               }
               addr28:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§push(this.§]$§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() / 180);
                  if(_loc1_ || this)
                  {
                     addr53:
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_)
                        {
                           addr75:
                           §§push(§§pop() * Math.PI);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§pop().rotation = §§pop();
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§!&§);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(this.mY);
                                                addr107:
                                                while(true)
                                                {
                                                   §§push(this.§';§);
                                                   if(!_loc2_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         §§push(§!w§.§4!-§);
                                                      }
                                                      addr112:
                                                   }
                                                   while(_loc1_ || this)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      while(true)
                                                      {
                                                         §§pop().y = §§pop();
                                                         continue loop5;
                                                         §§goto(addr53);
                                                      }
                                                   }
                                                   §§goto(addr140);
                                                }
                                             }
                                          }
                                          addr142:
                                       }
                                       return;
                                    }
                                    §§goto(addr123);
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr141);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr107);
                     }
                     §§goto(addr122);
                  }
               }
               §§goto(addr75);
            }
         }
         §§goto(addr142);
      }
      
      public function §%"?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#@§ = true;
            loop0:
            while(true)
            {
               this.§,y§ = false;
               loop1:
               while(true)
               {
                  this.§6r§ = false;
                  while(true)
                  {
                     this.§^"5§ = 0;
                     addr112:
                     while(true)
                     {
                        this.§+%§ = 0;
                        addr107:
                        while(true)
                        {
                           this.§4R§ = 0;
                        }
                     }
                     addr85:
                     if(_loc1_ || this)
                     {
                        this.§]$§ = 0;
                        loop8:
                        while(true)
                        {
                           if(_loc1_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              this.§ !S§ = 0;
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(!_loc1_)
                                    {
                                       break loop8;
                                    }
                                    continue;
                                 }
                                 addr81:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       §§goto(addr85);
                                    }
                                    addr102:
                                    while(true)
                                    {
                                       this.§4R§ = 0;
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr107);
                           }
                           while(true)
                           {
                              this.§';§ = 0;
                              §§goto(addr81);
                              continue loop8;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.mX) * (param1 - this.mX) + (param2 - this.mY) * (param2 - this.mY));
         if(_loc4_ || this)
         {
            §§push(_loc3_);
            §§push(this.§@!j§);
            if(_loc4_ || param1)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc5_)
               {
                  addr71:
                  §§push(true);
                  if(_loc4_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr90:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr90);
         }
         §§goto(addr71);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
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
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr142:
                           loop12:
                           while(true)
                           {
                              §§pop();
                              addr143:
                              while(true)
                              {
                                 §§push(this.mX);
                                 addr101:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(param4);
                                       while(true)
                                       {
                                          if(!(_loc6_ || param2))
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() <= §§pop());
                                       }
                                       continue loop12;
                                       addr104:
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr142:
                        }
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              while(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.mY);
                                          loop8:
                                          for(; _loc6_; §§push(this.mY),if(!_loc6_)
                                          {
                                             continue;
                                          },§§goto(addr25))
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(§§pop() >= §§pop());
                                                   if(!_loc5_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr87:
                                                   addr87:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc5_ && param1)
                                                         {
                                                            break;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop7;
                                                   }
                                                   §§goto(addr143);
                                                }
                                                §§push(param2);
                                                addr25:
                                                break;
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() <= §§pop());
                                                if(_loc6_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§goto(addr45);
                                                   }
                                                   §§goto(addr142);
                                                }
                                                else
                                                {
                                                   §§goto(addr87);
                                                }
                                             }
                                             §§goto(addr104);
                                          }
                                          §§goto(addr101);
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
                                    if(§§pop())
                                    {
                                       §§goto(addr87);
                                    }
                                    addr45:
                                    return §§pop();
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr142);
               }
            }
         }
         §§goto(addr143);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = false;
         if(_loc4_ || param1)
         {
            §§push(this.mX);
            loop0:
            while(true)
            {
               §§push(param1);
               addr165:
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
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §§push(true);
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                             addr51:
                                             if(_loc5_ && param1)
                                             {
                                                continue;
                                             }
                                             this.§9!i§.§&8§();
                                             addr61:
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                addr68:
                                                if(_loc4_ || this)
                                                {
                                                   addr75:
                                                   if(_loc4_)
                                                   {
                                                      return;
                                                   }
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§+%§ = 100;
                                                         addr96:
                                                         addr122:
                                                         while(!(_loc5_ && _loc3_))
                                                         {
                                                            this.§@O§();
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(_loc5_)
                                                               {
                                                                  break loop9;
                                                               }
                                                               if(_loc4_ || param2)
                                                               {
                                                                  continue loop2;
                                                               }
                                                               addr137:
                                                               while(true)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(!(_loc4_ || param2))
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§goto(addr61);
                                                            }
                                                            §§goto(addr68);
                                                         }
                                                         while(true)
                                                         {
                                                            this.mY = param2;
                                                            continue loop9;
                                                            §§goto(addr96);
                                                         }
                                                      }
                                                   }
                                                   continue loop5;
                                                   addr26:
                                                }
                                                §§goto(addr96);
                                             }
                                             §§goto(addr91);
                                          }
                                       }
                                       else
                                       {
                                          addr171:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                          addr171:
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              while(true)
                              {
                                 this.mX = param1;
                                 §§goto(addr122);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr171);
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §'!x§() : §=!Z§
      {
         return this.§2u§;
      }
      
      public function get §<t§() : Number
      {
         return this.§4R§;
      }
      
      public function get §<]§() : Number
      {
         return this.§+%§;
      }
      
      public function set §<]§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+%§ = param1;
         }
      }
      
      public function get §<"$§() : Number
      {
         return this.§ !R§;
      }
      
      public function get §"_§() : Boolean
      {
         return this.§,y§;
      }
      
      public function get radius() : Number
      {
         return this.§@!j§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<"$§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !R§ = param1;
         }
      }
      
      public function get §[1§() : Number
      {
         return this.§8'§;
      }
      
      public function set §[1§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8'§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§?a§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§?a§ = param1;
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
      
      public function get §0E§() : Number
      {
         return this.§%!e§;
      }
      
      public function get §1z§() : Number
      {
         return this.§5!d§;
      }
   }
}
