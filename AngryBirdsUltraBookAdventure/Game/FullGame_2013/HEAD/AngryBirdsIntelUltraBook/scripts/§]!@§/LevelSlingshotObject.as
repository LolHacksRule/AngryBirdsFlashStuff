package §]!@§
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §,!7§.§ H§;
   import §,!7§.Animation;
   import §6!!§.LevelObject;
   import §6!J§.Texture;
   import §<u§.§!t§;
   import §>!8§.b2Vec2;
   import §package§.LevelItemManager;
   import §package§.LevelItemShape;
   import §package§.LevelItemSoundResource;
   
   public class LevelSlingshotObject
   {
      
      public static const §@!R§:String = "ChannelSlingshot";
      
      public static const §4!d§:Number = 900;
      
      public static const §;B§:Number = 200;
      
      public static const §!%§:Number = 200;
      
      public static const §0G§:Number = 1500;
      
      public static const §@+§:Number = 5000;
      
      public static const §?!6§:Number = 1000;
      
      public static const §`"§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || LevelSlingshotObject)
         {
            §@!R§ = "ChannelSlingshot";
            while(true)
            {
               §4!d§ = 900;
               addr111:
               while(true)
               {
                  §;B§ = 200;
               }
               loop6:
               while(_loc1_ || _loc1_)
               {
                  §`"§ = 1000;
                  if(_loc2_)
                  {
                     continue;
                  }
                  addr34:
                  if(!(_loc2_ && _loc2_))
                  {
                     addr41:
                     if(!_loc2_)
                     {
                        return;
                     }
                     loop4:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §@+§ = 5000;
                           while(true)
                           {
                              if(!(_loc2_ && LevelSlingshotObject))
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 §?!6§ = 1000;
                                 continue loop6;
                              }
                              addr106:
                              while(true)
                              {
                                 §!%§ = 200;
                                 break loop4;
                              }
                              §§goto(addr34);
                           }
                           §§goto(addr111);
                           addr70:
                        }
                        break;
                        §§goto(addr41);
                     }
                     while(true)
                     {
                        §0G§ = 1500;
                        §§goto(addr94);
                     }
                     addr94:
                  }
                  §§goto(addr70);
               }
            }
         }
         §§goto(addr106);
      }
      
      protected var mName:String;
      
      protected var §1X§:Number;
      
      protected var §`J§:Number;
      
      protected var §;f§:Number;
      
      protected var §7>§:Number;
      
      private var §=K§:LevelItemSoundResource;
      
      protected var §&Z§:Number;
      
      protected var §6&§:Number = 1;
      
      private var §"!,§:Sprite;
      
      protected var §;]§:Animation;
      
      private var §'!Q§:§0!b§;
      
      protected var §%!c§:LevelSlingshot;
      
      private var §2J§:Number;
      
      private var §?!D§:Boolean = false;
      
      private var §'u§:Boolean = false;
      
      protected var §4L§:Boolean = false;
      
      private var §7O§:Number;
      
      private var §@f§:Number = 0;
      
      private var §!!8§:Number = 0;
      
      private var §&!Q§:Number = 0;
      
      private var §+,§:Number = 1000;
      
      private var §3!#§:Number;
      
      private var §5!0§:Number;
      
      private var §`!1§:int;
      
      private var §@!Z§:Number = 0;
      
      protected var §5`§:Number;
      
      protected var §?!K§:Number;
      
      private var §?!9§:Number = 1;
      
      private var §]v§:Number = 0;
      
      private var §6,§:b2Vec2;
      
      private var §?C§:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§%!c§ = param1;
               loop1:
               while(true)
               {
                  this.§"!,§ = param2;
                  while(true)
                  {
                     this.mName = param3;
                     loop3:
                     while(true)
                     {
                        this.§=K§ = LevelItemManager.§-`§(this.mName).§%!K§;
                        while(true)
                        {
                           this.§1X§ = param4;
                           loop5:
                           for(; _loc6_; while(_loc6_ || param3)
                           {
                              continue loop3;
                              §§goto(addr96);
                           })
                           {
                              this.§`J§ = param5;
                              loop6:
                              while(true)
                              {
                                 this.§;f§ = param4;
                                 while(true)
                                 {
                                    this.§7>§ = param5;
                                    while(!_loc7_)
                                    {
                                       this.§&Z§ = 0;
                                       continue loop5;
                                       if(!(_loc7_ && param2))
                                       {
                                          continue loop1;
                                       }
                                    }
                                    continue loop0;
                                    loop14:
                                    while(!(_loc7_ && param1))
                                    {
                                       this.§5`§ = 0;
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       addr34:
                                       if(!(_loc6_ || param1))
                                       {
                                          addr84:
                                          while(_loc6_ || this)
                                          {
                                             this.§&`§();
                                             continue loop14;
                                             §§goto(addr34);
                                          }
                                          while(!_loc7_)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                this.§@f§ = 0;
                                                §§goto(addr72);
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          addr72:
                                          continue loop6;
                                          addr84:
                                       }
                                       §§goto(addr41);
                                    }
                                 }
                              }
                           }
                        }
                        if(_loc7_ && param2)
                        {
                           continue;
                        }
                        this.§?!D§ = false;
                        §§goto(addr108);
                     }
                     if(!(_loc7_ && param3))
                     {
                        while(true)
                        {
                           this.§'u§ = false;
                           §§goto(addr84);
                        }
                        return;
                        addr55:
                        addr122:
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function §3g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§?!D§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§"!,§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr56:
                     this.§"!,§.dispose();
                  }
                  do
                  {
                     this.§"!,§ = null;
                  }
                  while(_loc1_ && _loc1_);
                  
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      public function §,!S§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§'u§);
            if(_loc3_)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr393:
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  addr401:
                  §§push(Boolean(§§pop()));
                  if(_loc3_ || _loc2_)
                  {
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc3_ || param1)
                           {
                              break;
                           }
                           loop5:
                           while(true)
                           {
                              loop26:
                              while(true)
                              {
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue loop5;
                                 }
                                 this.§&Z§ = 0;
                                 while(true)
                                 {
                                    this.§5!0§ = 0;
                                    loop28:
                                    while(true)
                                    {
                                       this.§6&§ = 0;
                                       loop29:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Number(Math.min(param1,this.§7O§)));
                                             loop11:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§1X§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§%!c§.§1X§);
                                                         if(!_loc2_)
                                                         {
                                                            §§push(§§pop() - this.§1X§);
                                                            if(!_loc2_)
                                                            {
                                                               addr325:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§push(this.§7O§);
                                                               }
                                                               §§pop().§1X§ = §§pop() + §§pop();
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  §§push(this);
                                                                  §§push(this.§`J§);
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                        §§push(this.§%!c§.§`J§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(§§pop() - this.§`J§);
                                                                           if(_loc3_)
                                                                           {
                                                                              addr292:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 §§push(this.§7O§);
                                                                              }
                                                                              §§pop().§`J§ = §§pop() + §§pop();
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§`J§);
                                                                                 if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc3_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() / 50);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§push(this.§7O§);
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             §§push(§§pop() / §4!d§);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§pop().§`J§ = §§pop();
                                                                                 loop15:
                                                                                 while(!_loc2_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§&Z§);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§push(360 - this.§&Z§);
                                                                                             if(_loc3_ || this)
                                                                                             {
                                                                                                addr183:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc3_ || _loc2_)
                                                                                                {
                                                                                                   addr181:
                                                                                                   §§push(§§pop() / this.§7O§);
                                                                                                }
                                                                                                §§pop().§&Z§ = §§pop() + §§pop();
                                                                                                continue loop13;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr181);
                                                                                       }
                                                                                       §§goto(addr183);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr435:
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§?!D§);
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr386:
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                §§goto(addr393);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                continue loop3;
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             addr445:
                                                                                          }
                                                                                          §§goto(addr401);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§goto(addr445);
                                                                                       }
                                                                                       addr435:
                                                                                    }
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc2_ && _loc3_))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             this.§1X§ = this.§%!c§.§1X§;
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§`J§ = this.§%!c§.§`J§;
                                                                                                loop20:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§'u§ = false;
                                                                                                   loop21:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      this.§?!D§ = true;
                                                                                                      loop22:
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         this.§&Z§ = 0;
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                            addr24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§@!F§();
                                                                                                               if(_loc2_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  return;
                                                                                                               }
                                                                                                               addr377:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§&!Q§ = 0;
                                                                                                                  break loop18;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§push(this.§7O§);
                                                                                                         if(_loc2_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(_loc2_ && _loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(!(_loc2_ && param1))
                                                                                                         {
                                                                                                            if(§§pop() <= §§pop())
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§goto(addr24);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() == §§pop())
                                                                                                               {
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                            }
                                                                                                            addr376:
                                                                                                         }
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr376);
                                                                                                         §§goto(addr108);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop29;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§@!Z§ = 0;
                                                                                       continue loop26;
                                                                                    }
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                           }
                                                                           §§goto(addr292);
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr292);
                                                               }
                                                               continue loop26;
                                                            }
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                   }
                                                   §§goto(addr325);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           addr428:
                        }
                        while(true)
                        {
                           §§goto(addr375);
                           §§goto(addr428);
                        }
                     }
                     return;
                  }
                  §§goto(addr435);
               }
            }
            §§goto(addr435);
         }
         §§goto(addr380);
      }
      
      public function §?8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§'u§ = true;
            loop0:
            while(true)
            {
               this.§7O§ = §4!d§;
               while(true)
               {
                  this.§!!;§(LevelItemSoundResource.§<!>§);
                  continue loop0;
                  addr42:
                  if(!(_loc1_ && this))
                  {
                     addr25:
                     return;
                     addr59:
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §5k§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!_loc3_)
         {
            §§push(this.§?!D§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(!(_loc3_ && this))
               {
                  §§push(Boolean(§§pop()));
               }
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§5`§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop6:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop37:
                                             while(true)
                                             {
                                                §§push(this.§?!K§);
                                                addr393:
                                                loop7:
                                                while(true)
                                                {
                                                   if(§§pop() > this.§%!c§.§`s§.§!![§.§-!J§)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§%!c§.§`s§.§!![§.§-!J§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() - this.§?!K§);
                                                         }
                                                         §§push(§§pop().§3;§(§§pop()));
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr422:
                                                            while(true)
                                                            {
                                                               this.§5`§ = -1;
                                                               addr373:
                                                               while(true)
                                                               {
                                                                  §§goto(addr349);
                                                               }
                                                            }
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§%!c§);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§`s§);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().objects);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().§[&§(this.§1X§,this.§?!K§));
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          addr191:
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(§§pop() >= 0)
                                                                                                   {
                                                                                                      §§push(this.§%!c§);
                                                                                                      loop28:
                                                                                                      while(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().§`s§);
                                                                                                         while(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            §§push(§§pop().objects);
                                                                                                            while(_loc4_)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().§98§(§§pop()));
                                                                                                                  addr169:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().§9!]§);
                                                                                                                     addr170:
                                                                                                                     loop33:
                                                                                                                     while(_loc4_)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this.§%!c§);
                                                                                                                              if(!(_loc4_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue loop28;
                                                                                                                              }
                                                                                                                              §§goto(addr67);
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              this.§4L§ = false;
                                                                                                                              this.§5`§ = -1;
                                                                                                                              addr134:
                                                                                                                              if(_loc4_ || param1)
                                                                                                                              {
                                                                                                                                 addr141:
                                                                                                                                 if(_loc3_ && param1)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop8;
                                                                                                                                       }
                                                                                                                                       §§push(this.§5`§);
                                                                                                                                       if(!(_loc3_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc4_ || param1))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          if(!(_loc4_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop4;
                                                                                                                                          }
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr22);
                                                                                                                                          }
                                                                                                                                          while(_loc4_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(this.§&!Q§);
                                                                                                                                          }
                                                                                                                                          §§goto(addr422);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                       §§goto(addr141);
                                                                                                                                    }
                                                                                                                                    continue loop7;
                                                                                                                                    addr366:
                                                                                                                                 }
                                                                                                                                 §§goto(addr22);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr349);
                                                                                                                              }
                                                                                                                              addr181:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§5`§ = this.§&!Q§;
                                                                                                                                       §§goto(addr349);
                                                                                                                                    }
                                                                                                                                    addr345:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr149:
                                                                                                                                 }
                                                                                                                                 §§goto(addr22);
                                                                                                                              }
                                                                                                                              addr250:
                                                                                                                           }
                                                                                                                           addr349:
                                                                                                                           while(!(_loc4_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           return;
                                                                                                                           addr94:
                                                                                                                           §§push(§§pop().§5_§());
                                                                                                                           if(_loc3_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              this.§5`§ = 500;
                                                                                                                              if(!(_loc3_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr300:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop27;
                                                                                                                                          §§goto(addr300);
                                                                                                                                       }
                                                                                                                                       addr293:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr109:
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop21;
                                                                                                                                       }
                                                                                                                                       this.§4L§ = false;
                                                                                                                                       addr118:
                                                                                                                                       if(_loc4_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc4_)
                                                                                                                                          {
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                this.§5`§ = 2000;
                                                                                                                                                addr48:
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr118);
                                                                                                                                                }
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr22);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr204:
                                                                                                                                                      if(_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() / 100);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().§3;§(§§pop()));
                                                                                                                                                            break loop33;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr327);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr134);
                                                                                                                                                }
                                                                                                                                                §§goto(addr373);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ || this)
                                                                                                                                                {
                                                                                                                                                   this.§5`§ = -1;
                                                                                                                                                   §§goto(addr250);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   addr297:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr240:
                                                                                                                                          }
                                                                                                                                          §§goto(addr176);
                                                                                                                                       }
                                                                                                                                       §§goto(addr181);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          continue loop37;
                                                                                                                                       }
                                                                                                                                       §§goto(addr149);
                                                                                                                                    }
                                                                                                                                    addr188:
                                                                                                                                 }
                                                                                                                                 §§goto(addr22);
                                                                                                                              }
                                                                                                                              §§goto(addr48);
                                                                                                                           }
                                                                                                                           §§goto(addr109);
                                                                                                                        }
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr240);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           this.§5`§ = 0;
                                                                                                                           §§goto(addr188);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§push(§§pop().objects);
                                                                                                               if(_loc3_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc2_);
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop().§98§(§§pop()));
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr94);
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
                                                                                                            §§push(§§pop().§`s§);
                                                                                                            continue loop24;
                                                                                                            if(!(_loc4_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr75);
                                                                                                         }
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   §§goto(addr204);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop25;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             break loop24;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr291:
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr297);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr191);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§5`§);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() - param1);
                                                      }
                                                      §§pop().§5`§ = §§pop();
                                                      §§goto(addr366);
                                                   }
                                                }
                                             }
                                          }
                                          addr22:
                                          return;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr393);
                        }
                     }
                  }
                  §§goto(addr389);
               }
            }
         }
         §§goto(addr223);
      }
      
      public function §3;§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§`J§);
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§`J§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§?!K§);
               if(_loc2_ || param1)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§?!K§ = §§pop();
               loop1:
               do
               {
                  §§push(this.§?!K§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(this.§%!c§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop().§`s§);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop().§!![§);
                           if(!_loc3_)
                           {
                              §§push(§§pop().§-!J§);
                              if(_loc2_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§@!F§();
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(false);
                                                if(!_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr54:
                                                return §§pop();
                                                addr51:
                                             }
                                             loop3:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop2;
                                                }
                                                this.§@!F§();
                                                addr118:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§?!K§);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§?!K§ = §§pop();
                                                   continue loop3;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          while(_loc3_ && _loc2_)
                                          {
                                             §§goto(addr118);
                                          }
                                          continue loop1;
                                       }
                                       if(_loc2_ || param1)
                                       {
                                          continue;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr170:
                                 §§push(this.§?!K§);
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr166:
                                    §§push(this.§%!c§.§`s§.§!![§.§-!J§);
                                 }
                                 param1 = §§pop();
                                 continue loop0;
                              }
                              §§push(§§pop() - §§pop());
                              if(!_loc2_)
                              {
                              }
                              §§goto(addr170);
                           }
                        }
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr170);
               }
               while(!(_loc2_ || _loc2_));
               
               §§goto(addr54);
            }
         }
         §§goto(addr51);
      }
      
      public function §&`§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§ H§ = null;
         var _loc3_:Texture = null;
         var _loc1_:LevelItemShape = LevelItemManager.§-`§(this.mName).shape;
         if(_loc5_ || _loc3_)
         {
            §§push(_loc1_.§1]§());
            loop0:
            while(true)
            {
               §§push(LevelItemShape.§1<§);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(_loc1_.§1]§());
                  if(!_loc4_)
                  {
                     §§push(LevelItemShape.§!!&§);
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(§§pop() == §§pop())
                     {
                        while(true)
                        {
                           if(_loc5_)
                           {
                              this.§6,§ = new b2Vec2(0,0);
                              while(true)
                              {
                                 this.§2J§ = 1.5;
                                 while(true)
                                 {
                                    §§goto(addr93);
                                 }
                              }
                           }
                           while(true)
                           {
                           }
                        }
                     }
                     addr93:
                  }
                  continue loop0;
                  loop6:
                  while(true)
                  {
                     this.§;]§ = this.§%!c§.§`s§.animationManager.getAnimation(this.mName);
                     while(true)
                     {
                        if(!_loc5_)
                        {
                           break loop1;
                        }
                        if(!this.§;]§)
                        {
                           addr86:
                           break;
                        }
                        this.§[5§(this.§;]§.getFrame(0));
                        if(!_loc4_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 break loop6;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop6;
                     }
                     if(!_loc4_)
                     {
                        this.§[5§(null);
                        §§goto(addr86);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§2J§ = _loc1_.§,<§;
                        }
                        addr161:
                     }
                  }
                  return;
               }
            }
         }
         while(true)
         {
            this.§6,§ = _loc1_.§?!0§()[0];
            §§goto(addr161);
         }
      }
      
      public function §[5§(param1:§ H§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(!(_loc4_ && this))
         {
            if(!param1)
            {
               addr33:
               _loc2_ = this.§%!c§.levelMain.textureManager.§&R§();
               if(_loc5_)
               {
                  addr60:
                  §§push(this.§'!Q§);
                  if(!(_loc4_ && _loc2_))
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc4_ && param1))
                        {
                           this.§'!Q§ = new §0!b§(_loc2_);
                           if(_loc5_ || _loc3_)
                           {
                              this.§"!,§.addChild(this.§'!Q§);
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§'!Q§);
                                       while(true)
                                       {
                                          §§push(this.§'!Q§);
                                          loop13:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             loop14:
                                             while(true)
                                             {
                                                §§push(2);
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().x = §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(this.§'!Q§);
                                                            while(true)
                                                            {
                                                               §§push(this.§'!Q§);
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               §§push(-§§pop().height);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§push(2);
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           continue loop17;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§6,§);
                                                                           addr340:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr346:
                                                                                 §§push(LevelMain.§@!d§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 addr346:
                                                                              }
                                                                              addr347:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                           }
                                                                        }
                                                                        addr338:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'!Q§);
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.pivotY);
                                                                              if(!(_loc5_ || _loc3_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(-§§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§6,§);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       §§push(LevelMain.§@!d§);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr346);
                                                                                       }
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       addr318:
                                                                                       while(true)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§'!Q§);
                                                                                             continue loop8;
                                                                                             addr262:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr338);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr317);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr291);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr323);
                                 }
                              }
                              addr363:
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr363);
                     }
                     else
                     {
                        §§push(this.§'!Q§);
                     }
                     §§goto(addr354);
                  }
                  §§goto(addr137);
               }
               §§goto(addr323);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc5_)
               {
                  §§push(param1.scale);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr60);
         }
         §§goto(addr33);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(true);
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            this.§5k§(param1);
            loop0:
            while(true)
            {
               §§push(this.§'u§);
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || param2)
                     {
                        this.§&!Q§ = 0;
                     }
                  }
                  else
                  {
                     loop6:
                     while(true)
                     {
                        if(this.mName != "BIRD_SARDINE")
                        {
                           loop7:
                           while(true)
                           {
                              this.§8%§(param1);
                              loop8:
                              while(_loc6_)
                              {
                                 this.§^!?§(param1);
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc5_ && param2))
                                       {
                                          addr102:
                                          §§push(§§pop());
                                          if(_loc6_ || this)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(_loc5_ && param1)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               continue loop8;
                                                            }
                                                            addr25:
                                                         }
                                                         else
                                                         {
                                                            addr25:
                                                            addr113:
                                                         }
                                                         continue loop9;
                                                         return;
                                                      }
                                                      addr79:
                                                      §§goto(addr25);
                                                   }
                                                   §§goto(addr25);
                                                }
                                                addr56:
                                             }
                                             §§goto(addr25);
                                          }
                                          addr111:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr113);
                                       }
                                       addr112:
                                    }
                                    §§goto(addr102);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr25);
                        while(true)
                        {
                           continue loop6;
                        }
                     }
                  }
                  §§goto(addr186);
                  while(!(_loc5_ && this))
                  {
                     §§goto(addr170);
                     §§push(Boolean(§§pop()));
                     §§goto(addr49);
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §8%§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@f§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§!!8§);
                     loop2:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§push(0);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(§§pop() <= §§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc2_)
                                                {
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc2_ || param1))
                                                {
                                                   continue loop6;
                                                }
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(!_loc3_)
                                                   {
                                                      §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§%!c§.mSlingShotState));
                                                         if(!(_loc3_ && this))
                                                         {
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               addr42:
                                                               if(_loc2_ || param1)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              this.§5!S§();
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr206:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§@f§);
                                                                                    break loop2;
                                                                                 }
                                                                                 addr206:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr186:
                                                                              addr183:
                                                                              addr188:
                                                                           }
                                                                           this.§^>§();
                                                                           continue loop13;
                                                                           break;
                                                                        }
                                                                        continue loop13;
                                                                     }
                                                                     addr19:
                                                                     return;
                                                                     addr51:
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr105:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  break loop13;
                                                                  §§goto(addr42);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         continue loop12;
                                                      }
                                                      while(_loc2_ || _loc3_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr158);
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr51);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                 }
                              }
                           }
                           addr180:
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(§§pop() <= §§pop())
                           {
                              §§goto(addr183);
                           }
                           §§goto(addr186);
                        }
                        §§push(Math.random() * §0G§);
                        break;
                        if(!(_loc2_ || this))
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr105);
                        §§push(§§pop() < param1);
                     }
                     while(true)
                     {
                        §§goto(addr180);
                        §§goto(addr206);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr193);
               }
            }
         }
         §§goto(addr188);
      }
      
      public function §5!S§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§@f§ = 0;
            do
            {
               this.§[5§(this.§;]§.getFrame(0));
            }
            while(!_loc1_);
            
         }
      }
      
      public function §^>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  this.§@f§ = §;B§;
                  while(!(_loc2_ && this))
                  {
                     this.§[5§(this.§;]§.getSubAnimation("blink").getFrame(0));
                     if(_loc1_ || _loc1_)
                     {
                        if(_loc1_ || _loc1_)
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
         §§goto(addr91);
      }
      
      public function §^!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§!!8§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§@f§);
                     loop2:
                     for(; _loc3_; §§push(Math.random() * §@+§),if(_loc2_ && _loc2_)
                     {
                        continue;
                     },§§push(§§pop() < param1),if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr50);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr115);
                     },§§goto(addr51))
                     {
                        §§push(0);
                        if(_loc3_)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§§pop() <= §§pop());
                              if(!(_loc2_ && param1))
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!_loc2_)
                                 {
                                    §§goto(addr105);
                                 }
                                 §§goto(addr115);
                              }
                              addr105:
                              §§push(§§pop());
                              if(!(_loc2_ && this))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                           }
                           continue loop1;
                           if(§§pop())
                           {
                              addr115:
                              while(true)
                              {
                                 §§pop();
                                 addr116:
                                 addr67:
                                 while(true)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       continue loop2;
                                    }
                                    addr136:
                                    addr136:
                                    if(_loc3_ || _loc3_)
                                    {
                                       this.§#7§();
                                       addr156:
                                       break;
                                    }
                                    addr176:
                                    while(true)
                                    {
                                       §§push(this.§!!8§);
                                       break loop2;
                                       §§goto(addr136);
                                    }
                                 }
                              }
                              addr115:
                           }
                           else
                           {
                              while(true)
                              {
                                 addr51:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§!!;§();
                                             §§goto(addr59);
                                          }
                                          §§goto(addr156);
                                       }
                                       addr59:
                                       if(!(_loc2_ && this))
                                       {
                                          §§goto(addr25);
                                       }
                                       §§goto(addr116);
                                       §§goto(addr25);
                                    }
                                 }
                              }
                              addr50:
                           }
                           addr25:
                           return;
                        }
                        addr135:
                        if(§§pop() <= §§pop())
                        {
                           §§goto(addr136);
                        }
                        §§goto(addr67);
                     }
                     continue loop0;
                  }
                  if(!_loc2_)
                  {
                     §§push(this);
                     §§push(this.§!!8§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§!!8§ = §§pop();
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §#7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§!!8§ = 0;
            do
            {
               this.§[5§(this.§;]§.getFrame(0));
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §!!;§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               if(_loc3_)
               {
                  return;
               }
               while(true)
               {
               }
               addr254:
            }
            while(true)
            {
               §§push(this.§!!8§);
               loop2:
               while(true)
               {
                  §§push(0);
                  addr242:
                  while(true)
                  {
                     if(§§pop() <= §§pop())
                     {
                        continue loop2;
                     }
                     while(true)
                     {
                        this.§#7§();
                     }
                  }
               }
               §§goto(addr254);
            }
         }
         §§goto(addr246);
      }
      
      public function §7!^§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_ || param1)
         {
            §§push(this.§&!Q§);
            if(_loc7_ || param2)
            {
               §§push(0);
               if(_loc7_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(this);
                        §§push(this.§&!Q§);
                        if(_loc7_ || _loc3_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§&!Q§ = §§pop();
                        if(_loc7_ || param1)
                        {
                           §§push(this.§&!Q§);
                           if(_loc7_ || param1)
                           {
                              §§push(0);
                              if(!(_loc6_ && param1))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§`!1§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_ || this)
                                       {
                                          _loc4_.§`!1§ = _loc5_;
                                       }
                                       if(_loc7_)
                                       {
                                          §§push(this);
                                          §§push(this.§5!0§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§5!0§ = §§pop();
                                          loop64:
                                          while(true)
                                          {
                                             addr948:
                                             §§push(!this.§?!D§);
                                             loop48:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop49:
                                                while(true)
                                                {
                                                   addr951:
                                                   if(§§pop())
                                                   {
                                                      loop50:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop51:
                                                         while(true)
                                                         {
                                                            §§push(this.§`!1§);
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push(2);
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr914:
                                                                     loop53:
                                                                     while(true)
                                                                     {
                                                                        addr915:
                                                                        if(!§§pop())
                                                                        {
                                                                           addr790:
                                                                           §§push(this.§?!D§);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr793:
                                                                              §§push(Boolean(!§§pop()));
                                                                              loop54:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop50;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr802:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr803:
                                                                                          if(_loc6_ && param2)
                                                                                          {
                                                                                             addr943:
                                                                                             §§pop();
                                                                                             break loop53;
                                                                                          }
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop54;
                                                                                                }
                                                                                                continue loop53;
                                                                                             }
                                                                                             continue loop54;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                this.§&!Q§ = 0;
                                                                                                loop81:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§@!Z§ = 0;
                                                                                                   loop82:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            break loop54;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§&Z§ = 0;
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc6_ && param2))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§5!0§ = 0;
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop35:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§@!F§();
                                                                                                                              addr385:
                                                                                                                              if(_loc7_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr401:
                                                                                                                                    if(_loc7_ || param1)
                                                                                                                                    {
                                                                                                                                       §§goto(addr109);
                                                                                                                                    }
                                                                                                                                    addr680:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(this.§+,§);
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§&!Q§);
                                                                                                                                             addr691:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                addr692:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§+,§);
                                                                                                                                                   addr694:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(2);
                                                                                                                                                      addr695:
                                                                                                                                                      loop22:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr696:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            addr697:
                                                                                                                                                            loop78:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr698:
                                                                                                                                                               loop72:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  loop40:
                                                                                                                                                                  for(; !(_loc6_ && _loc3_); continue loop72)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§!t§.§>j§(_loc3_));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop78;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc7_ || _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                              _loc3_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc6_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                    if(_loc7_ || param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * this.§3!#§);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§pop().§@!Z§ = §§pop();
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc7_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop82;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc7_)
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(360);
                                                                                                                                                                                             §§push(§!t§);
                                                                                                                                                                                             §§push(this.§+,§);
                                                                                                                                                                                             if(!(_loc6_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§&!Q§);
                                                                                                                                                                                                if(_loc7_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr437:
                                                                                                                                                                                                      §§push(§§pop() / this.§+,§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop().§>j§(§§pop()));
                                                                                                                                                                                                   if(_loc7_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * this.§6&§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§&Z§ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop36;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop81;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr524:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc6_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop34;
                                                                                                                                                                                                   addr446:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr437);
                                                                                                                                                                                             addr490:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(!(_loc6_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§6&§ = 0;
                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr916:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§`!1§);
                                                                                                                                                                                                break loop51;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§&Z§ = 0;
                                                                                                                                                                                             §§goto(addr828);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr828:
                                                                                                                                                                                          addr841:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr663);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr663:
                                                                                                                                                                                    continue loop82;
                                                                                                                                                                                    addr635:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr773:
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§7!"§(2.25);
                                                                                                                                                                                    break loop40;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr650:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§+,§ = this.§&!Q§;
                                                                                                                                                                        §§goto(addr841);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        continue loop35;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop64;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop64;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break loop53;
                                                                                                                                       §§goto(addr401);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr635);
                                                                                                                              }
                                                                                                                              §§goto(addr446);
                                                                                                                           }
                                                                                                                           addr613:
                                                                                                                           loop32:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc7_ || param2))
                                                                                                                              {
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              §§push(§!t§.§>j§(_loc3_,false));
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 addr504:
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    addr512:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                §§goto(addr524);
                                                                                                                                             }
                                                                                                                                             §§goto(addr698);
                                                                                                                                          }
                                                                                                                                          §§goto(addr653);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop23:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§&!Q§);
                                                                                                                                             addr569:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                addr570:
                                                                                                                                                loop60:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc6_ && this))
                                                                                                                                                      {
                                                                                                                                                         loop67:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§+,§);
                                                                                                                                                            addr581:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc6_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(2);
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                 if(_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    break loop32;
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop32;
                                                                                                                                                                              }
                                                                                                                                                                              addr670:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(2);
                                                                                                                                                                                 if(!(_loc6_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§+,§);
                                                                                                                                                                                          if(!(_loc7_ || param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop60;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc6_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(2);
                                                                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                continue loop23;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr879:
                                                                                                                                                                                             addr879:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                if(_loc7_ || _loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr888:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr889:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr890:
                                                                                                                                                                                                      this.§5!0§ = -1;
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr893:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§3!#§ = this.§5!0§;
                                                                                                                                                                                                      addr874:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§&!Q§ = §`"§;
                                                                                                                                                                                                         addr868:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this);
                                                                                                                                                                                                            §§push(this.§&!Q§);
                                                                                                                                                                                                            if(_loc7_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * (Math.abs(this.§3!#§) / 2));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().§&!Q§ = §§pop();
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop77;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr692);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr862);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr680);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr679:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr695);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr691);
                                                                                                                                                                        }
                                                                                                                                                                        addr594:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr695);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr694);
                                                                                                                                                               continue loop67;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr579:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr879);
                                                                                                                                                      }
                                                                                                                                                      addr878:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop23;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr650);
                                                                                                                                    }
                                                                                                                                    addr512:
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr512);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              §§goto(addr613);
                                                                                                                              §§goto(addr504);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr730:
                                                                                                               }
                                                                                                               §§goto(addr874);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr893);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr773);
                                                                                          }
                                                                                          addr771:
                                                                                       }
                                                                                    }
                                                                                    addr942:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr943);
                                                                                    }
                                                                                    §§goto(addr888);
                                                                                 }
                                                                                 §§goto(addr802);
                                                                              }
                                                                              continue loop51;
                                                                           }
                                                                           continue loop49;
                                                                        }
                                                                        §§goto(addr916);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr878);
                                                                        §§goto(addr943);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  addr920:
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!(_loc7_ || param1))
                                                                  {
                                                                     continue loop48;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  §§goto(addr942);
                                                               }
                                                               addr919:
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr919);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr914);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr730);
                                    }
                                    §§goto(addr868);
                                 }
                                 else
                                 {
                                    addr668:
                                    §§push(this.§&!Q§);
                                    §§push(this.§+,§);
                                 }
                                 §§goto(addr670);
                              }
                              §§goto(addr879);
                           }
                           §§goto(addr579);
                        }
                        §§goto(addr744);
                     }
                     §§goto(addr538);
                  }
                  else
                  {
                     §§push(Math.random() * §?!6§);
                     if(_loc7_ || param1)
                     {
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              §§push(param1);
                              if(_loc7_ || this)
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop0:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop1:
                                             while(_loc7_ || param1)
                                             {
                                                §§push(§§pop());
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop3:
                                                   while(!_loc6_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop11:
                                                                        for(; !_loc6_; if(!(_loc7_ || param1))
                                                                        {
                                                                           continue;
                                                                        },if(_loc6_ && this)
                                                                        {
                                                                           continue loop1;
                                                                        },if(!_loc6_)
                                                                        {
                                                                           §§goto(addr151);
                                                                           §§push(Boolean(§§pop()));
                                                                        },§§goto(addr803))
                                                                        {
                                                                           §§pop();
                                                                           loop12:
                                                                           while(_loc7_)
                                                                           {
                                                                              §§push(this.§'u§);
                                                                              loop13:
                                                                              while(_loc7_ || this)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr207:
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop14:
                                                                                          while(!_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc7_ || param2)
                                                                                                {
                                                                                                   if(!_loc7_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr235:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop15:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(_loc7_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(this.§4L§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              addr120:
                                                                                                                              if(!(_loc6_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc7_)
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 addr151:
                                                                                                                                 addr151:
                                                                                                                                 if(_loc7_ || this)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc7_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                break loop16;
                                                                                                                                             }
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                this.§7!"§();
                                                                                                                                             }
                                                                                                                                             §§goto(addr811);
                                                                                                                                          }
                                                                                                                                          if(_loc6_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop16;
                                                                                                                                          }
                                                                                                                                          if(!(_loc7_ || _loc3_))
                                                                                                                                          {
                                                                                                                                             §§goto(addr488);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr109:
                                                                                                                                       return;
                                                                                                                                    }
                                                                                                                                    addr158:
                                                                                                                                 }
                                                                                                                                 §§goto(addr764);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       while(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          continue loop9;
                                                                                                                                          §§goto(addr207);
                                                                                                                                       }
                                                                                                                                       §§goto(addr915);
                                                                                                                                       addr282:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                    §§goto(addr120);
                                                                                                                                 }
                                                                                                                                 addr274:
                                                                                                                              }
                                                                                                                              §§goto(addr920);
                                                                                                                           }
                                                                                                                           §§goto(addr151);
                                                                                                                        }
                                                                                                                        §§goto(addr868);
                                                                                                                     }
                                                                                                                     §§goto(addr816);
                                                                                                                  }
                                                                                                                  §§goto(addr385);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§?!D§);
                                                                                                                     break loop13;
                                                                                                                  }
                                                                                                                  addr380:
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         addr236:
                                                                                                      }
                                                                                                      §§goto(addr158);
                                                                                                   }
                                                                                                   §§goto(addr951);
                                                                                                }
                                                                                                §§goto(addr235);
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr793);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(!(_loc6_ && this))
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          addr372:
                                                                                       }
                                                                                       §§goto(addr889);
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 §§goto(addr236);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr890);
                                                                        }
                                                                        §§goto(addr938);
                                                                     }
                                                                     §§goto(addr219);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                            §§goto(addr951);
                                                         }
                                                      }
                                                      §§goto(addr372);
                                                   }
                                                   §§goto(addr802);
                                                }
                                             }
                                             §§goto(addr948);
                                          }
                                       }
                                       §§goto(addr696);
                                    }
                                    §§goto(addr569);
                                 }
                                 §§goto(addr581);
                              }
                              §§goto(addr594);
                           }
                           else
                           {
                              §§goto(addr668);
                           }
                        }
                        §§goto(addr570);
                     }
                  }
                  §§goto(addr512);
               }
               §§goto(addr879);
            }
            §§goto(addr697);
         }
         §§goto(addr811);
      }
      
      public function §7!"§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.mName);
            while(true)
            {
               §§push("BIRD_SARDINE");
               addr377:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§`!1§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§&!Q§ = §`"§;
                        while(true)
                        {
                           this.§@!Z§ = 0;
                           while(true)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§push(Math.random() * 1.5);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc3_)
                                    {
                                       §§push(-§§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr348:
                                          §§push(§§pop() * param1);
                                       }
                                    }
                                    §§pop().§3!#§ = §§pop();
                                    loop6:
                                    for(; _loc2_ || this; while(_loc2_ || _loc2_)
                                    {
                                       this.§+,§ = this.§&!Q§;
                                       while(true)
                                       {
                                          §§push(this.mName);
                                          while(true)
                                          {
                                             §§push("BIRD_WHITE");
                                             addr244:
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc2_ || this)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr258);
                                                }
                                             }
                                          }
                                       }
                                    })
                                    {
                                       while(true)
                                       {
                                          this.§5!0§ = this.§3!#§;
                                          addr296:
                                          while(_loc2_ || param1)
                                          {
                                             §§push(this);
                                             §§push(this.§&!Q§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() * (Math.abs(this.§3!#§) / 3));
                                             }
                                             §§pop().§&!Q§ = §§pop();
                                             continue loop6;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                              §§goto(addr348);
                           }
                           if(_loc3_ && param1)
                           {
                              continue;
                           }
                           this.§6&§ = 0;
                           §§goto(addr203);
                        }
                     }
                  }
               }
               return;
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§push("RED_BIG");
               if(_loc2_)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     if(_loc2_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc2_ || this)
                        {
                           if(!(_loc3_ && param1))
                           {
                              addr165:
                              §§push(Boolean(§§pop()));
                              if(!(_loc3_ && _loc2_))
                              {
                                 §§goto(addr172);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr209);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr377);
                  }
                  §§goto(addr244);
               }
               §§goto(addr208);
            }
         }
         §§goto(addr357);
      }
      
      public function §@!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§"!,§);
            loop0:
            while(true)
            {
               §§push(this.§1X§);
               while(true)
               {
                  §§push(LevelMain.§@!d§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     loop3:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        while(true)
                        {
                           §§push(this.§"!,§);
                           while(_loc1_)
                           {
                              §§push(this.§`J§);
                              while(true)
                              {
                                 §§push(this.§@!Z§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc2_)
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          break;
                                       }
                                       addr109:
                                       §§push(LevelMain.§@!d§);
                                       if(!_loc1_)
                                       {
                                          continue loop2;
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       §§goto(addr113);
                                    }
                                    addr112:
                                 }
                                 §§goto(addr109);
                                 addr49:
                                 if(!(_loc1_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 §§pop().rotation = §§pop();
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    addr113:
                                 }
                                 §§goto(addr74);
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         addr74:
         while(true)
         {
            if(!(_loc2_ && this))
            {
               §§push(this.§"!,§);
               if(!_loc1_)
               {
                  continue loop5;
               }
               §§push(this.§&Z§);
               if(_loc1_)
               {
                  if(_loc1_)
                  {
                     §§push(§§pop() / 180);
                     if(_loc1_ || _loc2_)
                     {
                        addr43:
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                        §§push(§§pop() * Math.PI);
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr112);
               }
               §§goto(addr43);
               continue loop5;
            }
            continue loop4;
         }
      }
      
      public function §`W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4L§ = true;
            loop0:
            while(true)
            {
               this.§?!D§ = false;
               loop1:
               while(true)
               {
                  this.§'u§ = false;
                  while(true)
                  {
                     this.§`!1§ = 0;
                     loop3:
                     for(; _loc1_; if(_loc1_ || _loc2_)
                     {
                        continue loop0;
                     })
                     {
                        this.§5`§ = 0;
                        while(true)
                        {
                           this.§&!Q§ = 0;
                           continue loop1;
                           addr84:
                           if(_loc1_ || this)
                           {
                              loop10:
                              while(true)
                              {
                                 this.§6&§ = 0;
                                 if(_loc1_)
                                 {
                                    addr34:
                                    if(_loc1_ || _loc1_)
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       this.§5!0§ = 0;
                                       §§goto(addr34);
                                    }
                                    addr96:
                                 }
                                 addr60:
                                 addr101:
                                 while(_loc1_ || this)
                                 {
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr84);
                                    continue loop10;
                                 }
                                 addr113:
                                 while(!(_loc2_ && this))
                                 {
                                    this.§&Z§ = 0;
                                    §§goto(addr96);
                                    §§goto(addr60);
                                 }
                                 while(true)
                                 {
                                    this.§@!Z§ = 0;
                                    §§goto(addr101);
                                 }
                              }
                              return;
                              addr55:
                              addr91:
                           }
                        }
                     }
                  }
               }
               if(!(_loc1_ || this))
               {
                  continue;
               }
               §§goto(addr55);
            }
         }
         §§goto(addr91);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.§1X§) * (param1 - this.§1X§) + (param2 - this.§`J§) * (param2 - this.§`J§));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§2J§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!(_loc5_ && this))
               {
                  addr82:
                  §§push(true);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr86:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr86);
         }
         §§goto(addr82);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§1X§);
            loop0:
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr189:
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§1X§);
                                    loop18:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(param4);
                                       loop19:
                                       while(true)
                                       {
                                          if(!(_loc6_ || this))
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() <= §§pop());
                                          if(!(_loc5_ && param3))
                                          {
                                             if(_loc5_ && param2)
                                             {
                                                continue loop2;
                                             }
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop10:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§pop();
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  §§push(this.§`J§);
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr70:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() >= §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     addr123:
                                                                     §§push(this.§`J§);
                                                                     continue loop18;
                                                                     if(_loc5_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     §§push(param2);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() <= §§pop());
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr77:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(!(_loc6_ || this))
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!(_loc6_ || param3))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                                 addr77:
                                                                              }
                                                                           }
                                                                           addr63:
                                                                           return §§pop();
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     §§goto(addr70);
                                                                     §§goto(addr77);
                                                                  }
                                                               }
                                                            }
                                                            addr167:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr77);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr167);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr163);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr189);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(false);
         if(!_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(this.§1X§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr174:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  addr178:
                  loop2:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              addr145:
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop8:
                                    while(!_loc4_)
                                    {
                                       §§push(true);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                   addr77:
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop7;
                                                            }
                                                            continue loop9;
                                                         }
                                                         continue loop10;
                                                      }
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop8;
                                                }
                                                addr184:
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    this.§1X§ = param1;
                                    loop13:
                                    while(true)
                                    {
                                       this.§`J§ = param2;
                                       while(true)
                                       {
                                          this.§5`§ = 100;
                                          addr101:
                                          while(_loc5_)
                                          {
                                             continue loop13;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr184);
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §>!a§() : §0!b§
      {
         return this.§'!Q§;
      }
      
      public function get §-Y§() : Number
      {
         return this.§&!Q§;
      }
      
      public function get §?!C§() : Number
      {
         return this.§5`§;
      }
      
      public function set §?!C§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§5`§ = param1;
         }
      }
      
      public function get §1F§() : Number
      {
         return this.§?!9§;
      }
      
      public function get §'i§() : Boolean
      {
         return this.§?!D§;
      }
      
      public function get radius() : Number
      {
         return this.§2J§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!9§ = param1;
         }
      }
      
      public function get §>#§() : Number
      {
         return this.§]v§;
      }
      
      public function set §>#§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§]v§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§?C§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?C§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§1X§;
      }
      
      public function get y() : Number
      {
         return this.§`J§;
      }
      
      public function get §7[§() : Number
      {
         return this.§;f§;
      }
      
      public function get §#!F§() : Number
      {
         return this.§7>§;
      }
   }
}
