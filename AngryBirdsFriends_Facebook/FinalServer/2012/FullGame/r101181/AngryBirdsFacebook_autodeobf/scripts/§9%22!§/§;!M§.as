package §9"!§
{
   import §#]§.b2Vec2;
   import §%Q§.§6G§;
   import §%Q§.§;!y§;
   import §%Q§.§@d§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import §6!D§.§"A§;
   import §6!D§.§3!K§;
   import §6o§.§>L§;
   import §9"%§.§&!r§;
   
   public class §;!M§
   {
      
      public static const §"M§:String = "ChannelSlingshot";
      
      public static const §3!$§:Number = 900;
      
      public static const § !'§:Number = 200;
      
      public static const §`,§:Number = 200;
      
      public static const §?!c§:Number = 1500;
      
      public static const §4!Y§:Number = 5000;
      
      public static const §%+§:Number = 1000;
      
      public static const § !u§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §"M§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §3!$§ = 900;
               loop1:
               while(true)
               {
                  § !'§ = 200;
                  loop2:
                  while(true)
                  {
                     §`,§ = 200;
                     while(true)
                     {
                        §?!c§ = 1500;
                        while(!(_loc2_ && _loc2_))
                        {
                           if(_loc1_)
                           {
                              §4!Y§ = 5000;
                              while(!(_loc2_ && §;!M§))
                              {
                                 §%+§ = 1000;
                                 continue loop1;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                       addr43:
                                    }
                                    continue loop0;
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      protected var mName:String;
      
      protected var §,!k§:Number;
      
      protected var §!Q§:Number;
      
      protected var §1!E§:Number;
      
      protected var §2!o§:Number;
      
      private var §?"E§:§;!y§;
      
      protected var §@P§:Number;
      
      protected var §#!m§:Number = 1;
      
      private var §3^§:Sprite;
      
      protected var §,s§:§"A§;
      
      private var §#!5§:§0!N§;
      
      protected var §,!-§:§2a§;
      
      private var §^'§:Number;
      
      private var § M§:Boolean = false;
      
      private var §?! §:Boolean = false;
      
      protected var §]!b§:Boolean = false;
      
      private var §]<§:Number;
      
      private var §"t§:Number = 0;
      
      private var §^! §:Number = 0;
      
      private var §'"<§:Number = 0;
      
      private var §var§:Number = 1000;
      
      private var § G§:Number;
      
      private var §6"+§:Number;
      
      private var §?"%§:int;
      
      private var §="5§:Number = 0;
      
      protected var §'V§:Number;
      
      protected var §`!j§:Number;
      
      private var §'2§:Number = 1;
      
      private var §6""§:Number = 0;
      
      private var §^!y§:b2Vec2;
      
      private var §[!q§:Number = 1;
      
      public function §;!M§(param1:§2a§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            super();
            loop0:
            while(true)
            {
               this.§,!-§ = param1;
               loop1:
               while(true)
               {
                  this.§3^§ = param2;
                  loop2:
                  while(true)
                  {
                     this.mName = param3;
                     loop3:
                     while(true)
                     {
                        this.§?"E§ = §6G§.§1!P§(this.mName).§2+§;
                        loop4:
                        while(true)
                        {
                           this.§,!k§ = param4;
                           while(true)
                           {
                              this.§!Q§ = param5;
                              loop6:
                              while(true)
                              {
                                 this.§1!E§ = param4;
                                 loop7:
                                 while(true)
                                 {
                                    this.§2!o§ = param5;
                                    addr125:
                                    while(true)
                                    {
                                       this.§@P§ = 0;
                                       loop9:
                                       while(_loc7_)
                                       {
                                          if(_loc7_)
                                          {
                                             this.§ M§ = false;
                                             while(!_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   this.§?! § = false;
                                                   while(_loc7_ || param1)
                                                   {
                                                      continue loop3;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop0;
                                             }
                                             continue loop4;
                                             addr107:
                                          }
                                          continue loop6;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              addr57:
                              if(!(_loc6_ && param2))
                              {
                                 this.§'V§ = 0;
                                 addr64:
                                 if(_loc6_ && param3)
                                 {
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          §§goto(addr57);
                                       }
                                       §§goto(addr88);
                                       §§goto(addr64);
                                    }
                                    §§goto(addr125);
                                    addr53:
                                 }
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 addr69:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr107);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §#!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ M§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§3^§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr75:
                     this.§3^§.dispose();
                  }
                  do
                  {
                     this.§3^§ = null;
                  }
                  while(!(_loc2_ || this));
                  
                  addr60:
               }
               return;
            }
            §§goto(addr75);
         }
         §§goto(addr60);
      }
      
      public function §9O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§?! §);
            if(_loc2_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr416:
                        while(true)
                        {
                           §§push(this.§ M§);
                           if(!_loc3_)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     addr415:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§#!m§);
                           loop3:
                           while(true)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    while(_loc2_ || param1)
                                    {
                                       this.§'"<§ = 0;
                                       loop6:
                                       while(true)
                                       {
                                          this.§="5§ = 0;
                                          loop7:
                                          while(true)
                                          {
                                             this.§@P§ = 0;
                                             loop8:
                                             while(true)
                                             {
                                                this.§6"+§ = 0;
                                                loop9:
                                                while(true)
                                                {
                                                   this.§#!m§ = 0;
                                                   while(!_loc3_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc3_ && this)
                                                      {
                                                         §§goto(addr406);
                                                      }
                                                      loop20:
                                                      for(; !(_loc3_ && _loc3_); while(_loc2_ || _loc2_)
                                                      {
                                                         this.§?! § = false;
                                                         §§goto(addr73);
                                                      })
                                                      {
                                                         addr151:
                                                         §§push(this.§]<§);
                                                         if(!_loc2_)
                                                         {
                                                            while(!(_loc3_ && _loc3_))
                                                            {
                                                               param1 = §§pop();
                                                               §§goto(addr151);
                                                            }
                                                            continue loop3;
                                                            addr328:
                                                         }
                                                         §§push(0);
                                                         if(_loc3_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop26:
                                                            while(true)
                                                            {
                                                               this.§,!7§();
                                                               if(!_loc2_)
                                                               {
                                                                  addr35:
                                                                  while(!(_loc3_ && _loc2_))
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop20;
                                                                     }
                                                                     if(!(_loc2_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§ M§ = true;
                                                                     §§goto(addr35);
                                                                  }
                                                                  addr35:
                                                                  continue loop6;
                                                                  addr73:
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr47);
                                                            }
                                                            return;
                                                         }
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr113:
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               addr120:
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     this.§,!k§ = this.§,!-§.§,!k§;
                                                                     loop21:
                                                                     while(true)
                                                                     {
                                                                        this.§!Q§ = this.§,!-§.§!Q§;
                                                                        continue loop20;
                                                                        addr47:
                                                                        addr336:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr54:
                                                                              if(!(_loc2_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§,!k§);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(param1);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(this.§,!-§.§,!k§);
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop() - this.§,!k§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr303:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr308:
                                                                                          §§push(§§pop() / this.§]<§);
                                                                                       }
                                                                                       §§pop().§,!k§ = §§pop() + §§pop();
                                                                                       continue loop6;
                                                                                    }
                                                                                    §§goto(addr308);
                                                                                 }
                                                                                 §§goto(addr303);
                                                                              }
                                                                              §§goto(addr308);
                                                                           }
                                                                           §§goto(addr303);
                                                                           §§goto(addr54);
                                                                        }
                                                                     }
                                                                     addr134:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§!Q§);
                                                                        if(_loc2_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              addr222:
                                                                              §§push(§§pop() / 50);
                                                                              if(_loc2_)
                                                                              {
                                                                                 addr214:
                                                                                 §§push(this.§]<§);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() / §3!$§);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§pop().§!Q§ = §§pop() - §§pop();
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§@P§);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc2_ || param1)
                                                                                       {
                                                                                          §§push(360 - this.§@P§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr183:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§]<§);
                                                                                             }
                                                                                             §§pop().§@P§ = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§]<§);
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§]<§ = §§pop();
                                                                                                continue loop20;
                                                                                                §§goto(addr113);
                                                                                             }
                                                                                             addr185:
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr183);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr416);
                                                                                 }
                                                                              }
                                                                              continue loop2;
                                                                              addr223:
                                                                           }
                                                                           §§goto(addr214);
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     addr268:
                                                                  }
                                                               }
                                                               §§goto(addr223);
                                                            }
                                                            §§goto(addr185);
                                                         }
                                                         §§goto(addr134);
                                                         §§goto(addr336);
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr328);
                                 }
                              }
                           }
                        }
                     }
                     addr406:
                     return;
                  }
               }
            }
            §§goto(addr415);
         }
         §§goto(addr336);
      }
      
      public function §5"F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?! § = true;
            loop0:
            while(true)
            {
               this.§]<§ = §3!$§;
               loop1:
               while(true)
               {
                  this.§4!§(§;!y§.§#j§);
                  loop2:
                  for(; this.§="5§ != 0; while(_loc1_)
                  {
                     continue loop1;
                     this.§="5§ = 0;
                     if(_loc1_)
                     {
                        break loop2;
                     }
                  })
                  {
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                  }
                  return;
                  if(!(_loc2_ && _loc2_))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§!Q§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() + this.§="5§);
            }
            §§pop().§!Q§ = §§pop();
            §§goto(addr66);
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || this)
         {
            §§push(this.§ M§);
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
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§`!j§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() > this.§,!-§.§@O§.§?l§.§'I§)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§,!-§.§@O§.§?l§.§'I§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - this.§`!j§);
                                       }
                                       §§pop().applyGravity(§§pop());
                                       addr397:
                                       while(true)
                                       {
                                          this.§'V§ = -1;
                                          addr357:
                                          while(!_loc3_)
                                          {
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§'V§);
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§'V§ = §§pop();
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§'V§);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(0);
                                          if(!_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(§§pop() <= §§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(this.§'"<§);
                                                      addr327:
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               §§push(0);
                                                               loop11:
                                                               while(§§pop() <= §§pop())
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
                                                                        while(!(_loc3_ && _loc3_))
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(!isNaN(this.§`!j§))
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       if(§§pop() >= 0)
                                                                                       {
                                                                                          §§push(this.§,!-§);
                                                                                          loop29:
                                                                                          for(; _loc4_; §§push(this.§,!-§),if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          },§§push(§§pop().§@O§),if(_loc4_)
                                                                                          {
                                                                                             §§goto(addr79);
                                                                                          },§§goto(addr146))
                                                                                          {
                                                                                             §§push(§§pop().§@O§);
                                                                                             while(_loc4_ || param1)
                                                                                             {
                                                                                                §§push(§§pop().objects);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ || _loc2_))
                                                                                                   {
                                                                                                      break;
                                                                                                      addr162:
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   loop32:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§!!A§(§§pop()));
                                                                                                      addr163:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().§##§);
                                                                                                         addr164:
                                                                                                         addr249:
                                                                                                         while(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_ || param1)
                                                                                                            {
                                                                                                               if(_loc3_ && _loc3_)
                                                                                                               {
                                                                                                                  break loop32;
                                                                                                               }
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     addr183:
                                                                                                                     if(_loc3_ && param1)
                                                                                                                     {
                                                                                                                        break loop28;
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc4_ || _loc2_))
                                                                                                                        {
                                                                                                                           addr257:
                                                                                                                           break loop11;
                                                                                                                           addr212:
                                                                                                                        }
                                                                                                                        this.§]!b§ = false;
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           this.§'V§ = -1;
                                                                                                                           if(_loc3_ && _loc3_)
                                                                                                                           {
                                                                                                                              §§goto(addr183);
                                                                                                                           }
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           if(_loc3_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop12;
                                                                                                                           }
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              break loop9;
                                                                                                                           }
                                                                                                                           §§goto(addr357);
                                                                                                                        }
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           this.§'V§ = -1;
                                                                                                                           break loop20;
                                                                                                                           addr262:
                                                                                                                        }
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  continue loop29;
                                                                                                               }
                                                                                                               continue loop0;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               this.§'V§ = 0;
                                                                                                               addr228:
                                                                                                               break loop20;
                                                                                                            }
                                                                                                            §§goto(addr257);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break loop14;
                                                                                                            }
                                                                                                            addr403:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop().objects);
                                                                                                   addr79:
                                                                                                   continue loop1;
                                                                                                   if(!(_loc4_ || param1))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§push(_loc2_);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop().§!!A§(§§pop()));
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().§>"?§());
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               this.§'V§ = 500;
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        break loop9;
                                                                                                                     }
                                                                                                                     §§goto(addr337);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr53:
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr102:
                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                        {
                                                                                                                           this.§]!b§ = false;
                                                                                                                           addr112:
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           this.§'V§ = 2000;
                                                                                                                           §§goto(addr53);
                                                                                                                        }
                                                                                                                        §§goto(addr228);
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              break loop9;
                                                                                                                           }
                                                                                                                           §§goto(addr397);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr212);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr119);
                                                                                                                  }
                                                                                                                  §§goto(addr112);
                                                                                                               }
                                                                                                               §§goto(addr262);
                                                                                                            }
                                                                                                            §§goto(addr102);
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
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().§!"F§(this.§,!k§,this.§`!j§));
                                                                                                   addr285:
                                                                                                   while(_loc4_ || param1)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop13;
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr280);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                          addr278:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              §§push(this);
                                                                              §§push(param1);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() / 100);
                                                                              }
                                                                              §§goto(addr249);
                                                                              §§push(§§pop().applyGravity(§§pop()));
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§'V§);
                                                                           break loop15;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               this.§'V§ = this.§'"<§;
                                                               addr337:
                                                               return;
                                                               addr332:
                                                            }
                                                            break;
                                                         }
                                                         continue loop4;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr327);
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr403);
               }
            }
         }
         §§goto(addr305);
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§!Q§);
            if(_loc2_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§!Q§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§`!j§);
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§`!j§ = §§pop();
            }
            addr211:
         }
         loop1:
         while(true)
         {
            §§push(this.§`!j§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(this.§,!-§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop().§@O§);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop().§?l§);
                     if(!_loc3_)
                     {
                        §§push(§§pop().§'I§);
                        if(!_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              while(true)
                              {
                                 this.§,!7§();
                                 if(_loc3_ && _loc3_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          continue;
                                       }
                                       while(_loc3_ && param1)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§`!j§);
                                             if(!_loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§,!-§);
                                                   addr164:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§@O§);
                                                      addr165:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§?l§);
                                                         addr166:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§'I§);
                                                            addr167:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc2_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr162:
                                             }
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                §§goto(addr187);
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       if(_loc2_)
                                       {
                                          this.§,!7§();
                                          break;
                                       }
                                       §§goto(addr211);
                                       addr89:
                                    }
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || param1)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§!Q§);
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§!Q§ = §§pop();
                                    }
                                    addr187:
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§`!j§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§`!j§ = §§pop();
                                 }
                                 addr123:
                                 §§goto(addr89);
                              }
                              addr60:
                              return true;
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr165);
               }
               §§goto(addr164);
            }
            §§goto(addr162);
         }
      }
      
      public function §4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§3!K§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§@d§ = §6G§.§1!P§(this.mName).shape;
         if(_loc4_ || _loc3_)
         {
            §§push(_loc1_.§4"1§());
            loop0:
            while(true)
            {
               §§push(§@d§.§88§);
               addr182:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               loop2:
               while(true)
               {
                  this.§^!y§ = _loc1_.§'!;§()[0];
                  loop3:
                  while(true)
                  {
                     this.§^'§ = _loc1_.§`w§;
                     loop4:
                     while(true)
                     {
                        addr79:
                        loop5:
                        while(true)
                        {
                           this.§,s§ = this.§,!-§.§@O§.animationManager.getAnimation(this.mName);
                           loop6:
                           while(_loc4_ || _loc1_)
                           {
                              if(!this.§,s§)
                              {
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          this.§^'§ = 1.5;
                                          break loop6;
                                          addr165:
                                          this.§^!y§ = new b2Vec2(0,0);
                                       }
                                       continue loop2;
                                    }
                                    this.§2!8§(null);
                                 }
                              }
                              else
                              {
                                 this.§2!8§(this.§,s§.getFrame(0));
                                 if(!_loc5_)
                                 {
                                    break loop5;
                                 }
                              }
                              if(!_loc5_)
                              {
                                 continue loop4;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 continue loop2;
                              }
                              addr148:
                              while(true)
                              {
                                 if(_loc5_ && _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr165);
                              }
                           }
                           addr125:
                           while(true)
                           {
                              continue loop5;
                           }
                        }
                        addr37:
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function §2!8§(param1:§3!K§) : void
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
               _loc2_ = this.§,!-§.§8i§.textureManager.§2M§();
               if(_loc5_ || _loc2_)
               {
                  addr64:
                  §§push(this.§#!5§);
                  if(!(_loc4_ && param1))
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           this.§#!5§ = new §0!N§(_loc2_);
                           if(_loc5_ || _loc3_)
                           {
                              this.§3^§.addChild(this.§#!5§);
                              loop0:
                              while(true)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§#!5§);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§#!5§);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(2);
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr237:
                                                      loop18:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            addr244:
                                                            §§pop().x = §§pop();
                                                            loop16:
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.§#!5§);
                                                                  loop17:
                                                                  while(!(_loc4_ && param1))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#!5§);
                                                                        if(!(_loc5_ || _loc3_))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        §§push(-§§pop().height);
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           §§push(2);
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        loop32:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§pop().y = §§pop();
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       addr145:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§#!5§);
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ || _loc2_))
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§push(_loc3_);
                                                                                             loop13:
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                §§pop().scaleX = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§#!5§);
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§pop().scaleY = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  continue loop33;
                                                                                                               }
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   addr314:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§#!5§);
                                                                                                         addr333:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(param1.pivotX);
                                                                                                            addr335:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               break loop13;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                      continue loop33;
                                                                                                   }
                                                                                                }
                                                                                                continue loop32;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^!y§);
                                                                                                addr338:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr339:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§9"3§.§'"F§);
                                                                                                      addr341:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         addr342:
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr343:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               addr344:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§#!5§);
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                    }
                                                                                    addr221:
                                                                                 }
                                                                                 addr308:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr145);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr344);
                                                                              }
                                                                           }
                                                                           addr270:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§^!y§);
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    §§push(§9"3§.§'"F§);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       addr292:
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc2_))
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().y = §§pop();
                                                                                                §§goto(addr308);
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr307:
                                                                                          }
                                                                                          §§goto(addr339);
                                                                                       }
                                                                                       §§goto(addr342);
                                                                                    }
                                                                                    §§goto(addr341);
                                                                                 }
                                                                                 §§goto(addr292);
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                                  addr180:
                                                               }
                                                               continue loop0;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(param1.pivotY);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§goto(addr270);
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§goto(addr335);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().texture = _loc2_;
                                                                        continue loop1;
                                                                     }
                                                                     addr349:
                                                                  }
                                                               }
                                                               break;
                                                               §§goto(addr180);
                                                            }
                                                            §§goto(addr333);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                   }
                                                }
                                                §§goto(addr343);
                                             }
                                             §§goto(addr237);
                                          }
                                       }
                                    }
                                    §§goto(addr314);
                                 }
                              }
                           }
                           §§goto(addr331);
                        }
                        §§goto(addr221);
                     }
                     else
                     {
                        §§push(this.§#!5§);
                     }
                     §§goto(addr349);
                  }
                  §§goto(addr187);
               }
               §§goto(addr310);
            }
            else
            {
               _loc2_ = param1.texture;
               if(!(_loc4_ && _loc2_))
               {
                  §§push(param1.scale);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr64);
         }
         §§goto(addr27);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = true;
         if(_loc6_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               §§push(this.§?! §);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§'"<§ = 0;
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           loop4:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr153:
                              while(true)
                              {
                              }
                              addr44:
                              if(_loc5_ && param1)
                              {
                                 continue;
                              }
                              addr51:
                              §§push(true);
                              if(!(_loc5_ && param2))
                              {
                                 §§push(§§pop() == §§pop());
                                 loop14:
                                 while(true)
                                 {
                                    loop15:
                                    while(§§pop())
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          if(_loc6_)
                                          {
                                             addr81:
                                             if(_loc6_ || param2)
                                             {
                                                if(_loc6_)
                                                {
                                                   this.§1l§(param1,param2);
                                                   addr94:
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      addr147:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            this.§&F§(param1);
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!(_loc5_ && param3))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  while(_loc6_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                        }
                                                                        §§goto(addr51);
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                                  addr114:
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop4;
                                                            addr136:
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr147:
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(param3);
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            continue loop15;
                                                         }
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr44);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr114);
                                                            }
                                                         }
                                                         §§goto(addr118);
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr153);
                                                §§goto(addr147);
                                             }
                                             while(true)
                                             {
                                                this.§"'§(param1);
                                                §§goto(addr147);
                                                §§goto(addr81);
                                             }
                                             addr144:
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr22);
                                 }
                              }
                              §§goto(addr117);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        §§goto(addr144);
                     }
                     addr22:
                     return;
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      public function §"'§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§"t§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§^! §);
                  loop2:
                  for(; _loc3_ || _loc2_; §§push(Math.random() * §?!c§),if(!_loc3_)
                  {
                     continue;
                  },if(_loc2_)
                  {
                     continue loop0;
                  },§§push(§§pop() < param1),if(!_loc2_)
                  {
                     §§goto(addr87);
                  },§§goto(addr97))
                  {
                     §§push(0);
                     if(_loc3_ || param1)
                     {
                        if(_loc2_ && param1)
                        {
                           continue loop1;
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
                                    if(!(_loc3_ || _loc3_))
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
                                          addr50:
                                          if(!_loc2_)
                                          {
                                             this.§-7§();
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                addr25:
                                                return;
                                                addr63:
                                             }
                                             addr157:
                                             while(_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(!_loc2_)
                                             {
                                                this.§%!<§();
                                             }
                                             break loop1;
                                             addr139:
                                             §§goto(addr25);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(Boolean(this.§,!-§.mSlingShotState));
                                                   if(_loc2_ && this)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   addr138:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr139);
                                                   }
                                                   addr107:
                                                }
                                                §§goto(addr50);
                                             }
                                             §§goto(addr25);
                                             addr105:
                                          }
                                          addr108:
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             §§push(this.§"t§);
                                             break loop2;
                                             addr181:
                                          }
                                       }
                                       §§goto(addr25);
                                    }
                                 }
                                 continue;
                                 addr87:
                              }
                              §§goto(addr138);
                           }
                        }
                     }
                     if(§§pop() <= §§pop())
                     {
                        §§goto(addr157);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr156);
                  §§push(0);
               }
               §§push(this);
               §§push(this.§"t§);
               if(_loc3_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§"t§ = §§pop();
               §§goto(addr181);
            }
         }
         §§goto(addr63);
      }
      
      public function §%!<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§"t§ = 0;
         }
         do
         {
            this.§2!8§(this.§,s§.getFrame(0));
         }
         while(!_loc2_);
         
      }
      
      public function §-7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               while(true)
               {
                  this.§"t§ = § !'§;
                  loop1:
                  while(_loc2_ || _loc1_)
                  {
                     while(true)
                     {
                        this.§2!8§(this.§,s§.getSubAnimation("blink").getFrame(0));
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §&F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§^! §);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§"t§);
                  loop2:
                  for(; _loc2_; §§push(Math.random() * §4!Y§),if(!_loc3_)
                  {
                     continue loop0;
                  })
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        §§push(§§pop() <= §§pop());
                        if(!(_loc3_ && this))
                        {
                           if(!§§pop())
                           {
                              loop3:
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       this.§4!§();
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          break loop2;
                                       }
                                       addr132:
                                    }
                                 }
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 addr90:
                                 while(true)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break loop3;
                                    }
                                    addr119:
                                    continue loop2;
                                    §§goto(addr89);
                                 }
                                 continue loop0;
                              }
                              return;
                              addr41:
                           }
                           addr89:
                           while(true)
                           {
                              §§pop();
                           }
                           addr89:
                           §§goto(addr90);
                        }
                        §§goto(addr89);
                     }
                     if(§§pop() <= §§pop())
                     {
                        if(_loc2_)
                        {
                           if(_loc3_)
                           {
                              break loop1;
                           }
                           this.§]s§();
                        }
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr112);
                  §§push(0);
               }
               §§push(this);
               §§push(this.§^! §);
               if(_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§^! § = §§pop();
            }
         }
         §§goto(addr132);
      }
      
      public function §]s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^! § = 0;
         }
         do
         {
            this.§2!8§(this.§,s§.getFrame(0));
         }
         while(!_loc2_);
         
      }
      
      public function §4!§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§^! §);
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
                              this.§]s§();
                              addr232:
                              while(true)
                              {
                              }
                           }
                           addr230:
                        }
                        while(true)
                        {
                           §§push(this.§"t§);
                           if(_loc4_ && param1)
                           {
                              break;
                           }
                           §§push(0);
                           if(_loc4_)
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§%!<§();
                                 addr224:
                                 while(true)
                                 {
                                 }
                              }
                              addr222:
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    loop9:
                                    while(!(_loc4_ && this))
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§;!y§.§<x§);
                                          if(!(_loc4_ && param2))
                                          {
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             addr195:
                                          }
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             while(true)
                                             {
                                                addr159:
                                                loop11:
                                                while(true)
                                                {
                                                   this.§^! § = §`,§;
                                                   loop12:
                                                   while(true)
                                                   {
                                                      this.§2!8§(this.§,s§.getSubAnimation("yell").getFrame(0));
                                                      loop13:
                                                      while(!_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§ M§);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop23:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §&!r§.§#"§(param1,this.§?"E§,§"M§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr222);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr67:
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             if(!(_loc4_ && param2))
                                                                                             {
                                                                                                §&!r§.§#"§(param1,this.§?"E§);
                                                                                                addr90:
                                                                                                if(!(_loc3_ || param1))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(this.§?! §);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr119:
                                                                                                            addr119:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_ || _loc3_)
                                                                                                               {
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   continue loop20;
                                                                                                   addr142:
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr230);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(!(_loc3_ || param1))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(_loc3_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc3_ || param1)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr141:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      break loop22;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr119);
                                                                                                §§goto(addr67);
                                                                                             }
                                                                                             §§goto(addr142);
                                                                                             addr134:
                                                                                          }
                                                                                          §§goto(addr119);
                                                                                       }
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr90);
                                                                                 }
                                                                                 §§goto(addr67);
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           §§goto(addr119);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr232);
                                    }
                                    continue;
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr195);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr237:
            return;
         }
         §§goto(addr158);
      }
      
      public function §1l§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_ || this)
         {
            §§push(this.§'"<§);
            if(_loc7_)
            {
               §§push(0);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc7_ || this)
                     {
                        §§push(this);
                        §§push(this.§'"<§);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§'"<§ = §§pop();
                        if(_loc7_ || _loc3_)
                        {
                           §§push(this.§'"<§);
                           if(!_loc6_)
                           {
                              §§push(0);
                              if(_loc7_ || param2)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§?"%§);
                                       if(_loc7_ || this)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_)
                                       {
                                          _loc4_.§?"%§ = _loc5_;
                                       }
                                       if(_loc7_ || param2)
                                       {
                                          §§push(this);
                                          §§push(this.§6"+§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§6"+§ = §§pop();
                                          loop51:
                                          while(true)
                                          {
                                             §§push(this.§ M§);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                if(_loc7_ || param2)
                                                {
                                                   addr800:
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop28:
                                                         while(true)
                                                         {
                                                            if(_loc6_ && param2)
                                                            {
                                                               continue loop51;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§?"%§);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(2);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() < §§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr763:
                                                                              §§push(this.§?"%§);
                                                                              break;
                                                                           }
                                                                           addr667:
                                                                           addr668:
                                                                           §§push(!this.§ M§);
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              addr669:
                                                                              if(§§pop())
                                                                              {
                                                                                 addr670:
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr673:
                                                                                    loop15:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       addr648:
                                                                                       addr446:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       loop38:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc7_ || _loc3_))
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(360);
                                                                                             §§push(§>L§);
                                                                                             §§push(this.§var§);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(this.§'"<§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr396:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      §§push(this.§var§);
                                                                                                   }
                                                                                                   §§push(§§pop() * §§pop().§"1§(§§pop()));
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§#!m§);
                                                                                                   }
                                                                                                   §§pop().§@P§ = §§pop();
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(!(_loc7_ || param1))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc6_ && param2))
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§ G§);
                                                                                                               if(_loc7_ || param1)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     §§push(this.§ G§);
                                                                                                                     if(_loc7_ || param2)
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                     }
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                  }
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§pop().§="5§ = §§pop();
                                                                                                               continue loop38;
                                                                                                            }
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr572:
                                                                                                               while(_loc7_ || param1)
                                                                                                               {
                                                                                                               }
                                                                                                               addr696:
                                                                                                               loop19:
                                                                                                               while(_loc7_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§@P§ = 0;
                                                                                                                     addr683:
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr749:
                                                                                                                     loop14:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr731:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§ G§ = this.§6"+§;
                                                                                                                           addr736:
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              continue loop28;
                                                                                                                           }
                                                                                                                           this.§'"<§ = § !u§;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§'"<§);
                                                                                                                              if(!(_loc6_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * (Math.abs(this.§ G§) / 2));
                                                                                                                              }
                                                                                                                              §§pop().§'"<§ = §§pop();
                                                                                                                              break loop19;
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  this.§#!m§ = 0;
                                                                                                                  continue loop20;
                                                                                                                  §§goto(addr621);
                                                                                                               }
                                                                                                               while(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  this.§var§ = this.§'"<§;
                                                                                                                  §§goto(addr696);
                                                                                                               }
                                                                                                               §§goto(addr730);
                                                                                                            }
                                                                                                         }
                                                                                                         addr483:
                                                                                                      }
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§,!7§();
                                                                                                         addr360:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr114);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§6"+§ = 0;
                                                                                                      §§goto(addr621);
                                                                                                   }
                                                                                                   addr633:
                                                                                                }
                                                                                                §§push(§§pop() / §§pop());
                                                                                             }
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                    addr673:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr745:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr746:
                                                                                          this.§6"+§ = -1;
                                                                                          §§goto(addr749);
                                                                                       }
                                                                                       §§goto(addr731);
                                                                                    }
                                                                                    addr745:
                                                                                 }
                                                                                 §§goto(addr673);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr658:
                                                                                       this.§%!r§(2.25);
                                                                                       §§goto(addr572);
                                                                                       addr661:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§'"<§ = 0;
                                                                                       this.§="5§ = 0;
                                                                                       this.§@P§ = 0;
                                                                                       addr645:
                                                                                       addr638:
                                                                                    }
                                                                                 }
                                                                                 addr656:
                                                                              }
                                                                              §§goto(addr633);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(1);
                                                                        }
                                                                     }
                                                                     addr759:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     addr767:
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        addr768:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr769:
                                                                              if(_loc6_ && this)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§6"+§);
                                                                                 addr742:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    addr743:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr745);
                                                                           }
                                                                           continue loop30;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr765);
                                                            }
                                                         }
                                                         continue loop51;
                                                      }
                                                      addr801:
                                                   }
                                                   §§goto(addr761);
                                                }
                                                §§goto(addr801);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          loop50:
                                          while(true)
                                          {
                                             §§push(§>L§.§"1§(_loc3_,false));
                                             if(_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         addr480:
                                                         §§push(Number(§§pop()));
                                                         if(_loc7_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            §§goto(addr483);
                                                         }
                                                         else
                                                         {
                                                            loop59:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr564:
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(_loc3_);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(§§pop() * this.§ G§);
                                                                     }
                                                                     §§pop().§="5§ = §§pop();
                                                                     addr555:
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr363);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr616:
                                                                        while(true)
                                                                        {
                                                                           §§push(§>L§.§"1§(_loc3_));
                                                                           addr562:
                                                                           while(true)
                                                                           {
                                                                              continue loop59;
                                                                           }
                                                                        }
                                                                        addr616:
                                                                     }
                                                                  }
                                                                  addr571:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr777);
                                                            addr563:
                                                         }
                                                         §§goto(addr777);
                                                      }
                                                      else
                                                      {
                                                         addr607:
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            addr615:
                                                            _loc3_ = Number(§§pop());
                                                            §§goto(addr616);
                                                         }
                                                      }
                                                      §§goto(addr742);
                                                   }
                                                   else
                                                   {
                                                      loop45:
                                                      for(; _loc7_ || param1; while(true)
                                                      {
                                                         continue loop45;
                                                      })
                                                      {
                                                         §§push(this.§'"<§);
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  addr518:
                                                                  §§push(§§pop() - §§pop());
                                                                  §§push(this.§var§);
                                                                  loop40:
                                                                  while(_loc7_ || param2)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr601:
                                                                              §§push(§§pop() - §§pop());
                                                                              §§push(this.§var§);
                                                                              break loop40;
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop50;
                                                                           }
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              continue loop50;
                                                                           }
                                                                           §§goto(addr562);
                                                                        }
                                                                        addr536:
                                                                     }
                                                                     §§goto(addr607);
                                                                     §§push(§§pop() / (§§pop() / §§pop()));
                                                                  }
                                                                  §§goto(addr605);
                                                                  §§push(2);
                                                                  addr520:
                                                               }
                                                               else
                                                               {
                                                                  loop46:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        addr595:
                                                                        §§push(this.§var§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(this.§'"<§);
                                                                           break;
                                                                        }
                                                                        break loop45;
                                                                     }
                                                                     addr496:
                                                                     §§push(this.§var§);
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop45;
                                                                           }
                                                                           §§goto(addr743);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§var§);
                                                                              if(_loc6_ && param2)
                                                                              {
                                                                                 break loop46;
                                                                              }
                                                                              §§push(2);
                                                                              if(_loc7_ || _loc3_)
                                                                              {
                                                                                 continue loop46;
                                                                              }
                                                                              §§goto(addr605);
                                                                           }
                                                                           addr576:
                                                                        }
                                                                        §§goto(addr742);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr601);
                                                            }
                                                            §§goto(addr605);
                                                         }
                                                         §§goto(addr520);
                                                      }
                                                   }
                                                   §§goto(addr615);
                                                }
                                                §§goto(addr518);
                                             }
                                             §§goto(addr480);
                                          }
                                          addr545:
                                       }
                                       §§goto(addr777);
                                    }
                                    §§goto(addr673);
                                 }
                                 else
                                 {
                                    §§push(this.§'"<§);
                                 }
                                 §§goto(addr576);
                              }
                              §§goto(addr501);
                           }
                           else
                           {
                              addr310:
                              §§push(param1);
                              if(!(_loc6_ && param2))
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          §§push(§§pop());
                                          loop0:
                                          for(; !_loc6_; if(!(_loc7_ || this))
                                          {
                                             continue;
                                          },if(_loc7_ || _loc3_)
                                          {
                                             if(_loc7_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr233);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr800);
                                          },§§goto(addr669))
                                          {
                                             if(§§pop())
                                             {
                                                loop31:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop32:
                                                   while(!_loc6_)
                                                   {
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         if(_loc7_ || _loc3_)
                                                         {
                                                            §§push(this.§ M§);
                                                            loop33:
                                                            while(_loc7_)
                                                            {
                                                               §§push(!§§pop());
                                                               loop34:
                                                               while(!_loc6_)
                                                               {
                                                                  while(true)
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
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 §§pop();
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(this.§?! §);
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop33;
                                                                                             }
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(!§§pop());
                                                                                                while(true)
                                                                                                {
                                                                                                   addr208:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc7_ || param1)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                      addr128:
                                                                                                      if(!(_loc7_ || _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop34;
                                                                                                      }
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         addr140:
                                                                                                         §§push(!§§pop());
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            while(§§pop())
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     this.§%!r§();
                                                                                                                     addr150:
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop4;
                                                                                                                     }
                                                                                                                     addr238:
                                                                                                                     while(!(_loc6_ && param2))
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                              {
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§]!b§);
                                                                                                                                    if(_loc7_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr128);
                                                                                                                                    }
                                                                                                                                    §§goto(addr140);
                                                                                                                                 }
                                                                                                                                 §§goto(addr746);
                                                                                                                              }
                                                                                                                              §§goto(addr736);
                                                                                                                           }
                                                                                                                           §§goto(addr658);
                                                                                                                        }
                                                                                                                        §§goto(addr621);
                                                                                                                     }
                                                                                                                     §§goto(addr555);
                                                                                                                  }
                                                                                                                  §§goto(addr645);
                                                                                                               }
                                                                                                               §§goto(addr150);
                                                                                                            }
                                                                                                            addr114:
                                                                                                            return;
                                                                                                            addr142:
                                                                                                         }
                                                                                                         while(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§goto(addr238);
                                                                                                            }
                                                                                                            §§goto(addr769);
                                                                                                         }
                                                                                                         §§goto(addr670);
                                                                                                         addr233:
                                                                                                      }
                                                                                                      §§goto(addr649);
                                                                                                   }
                                                                                                   §§goto(addr669);
                                                                                                }
                                                                                                addr207:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr667);
                                                                                             }
                                                                                             §§goto(addr668);
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       §§goto(addr638);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                 }
                                                                                 continue loop33;
                                                                              }
                                                                              continue loop31;
                                                                           }
                                                                           continue loop32;
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr759);
                                                            }
                                                            §§goto(addr648);
                                                         }
                                                         §§goto(addr595);
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                   §§goto(addr360);
                                                }
                                                addr339:
                                             }
                                             §§goto(addr272);
                                          }
                                          §§goto(addr768);
                                       }
                                       §§goto(addr767);
                                    }
                                    §§goto(addr339);
                                 }
                                 §§goto(addr518);
                              }
                           }
                           §§goto(addr536);
                        }
                        §§goto(addr616);
                     }
                     §§goto(addr809);
                  }
                  else
                  {
                     §§push(Math.random() * §%+§);
                     if(_loc7_)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(!_loc6_)
                           {
                              §§goto(addr310);
                           }
                           §§goto(addr601);
                        }
                        §§goto(addr496);
                     }
                  }
                  §§goto(addr480);
               }
               §§goto(addr501);
            }
            §§goto(addr563);
         }
         §§goto(addr571);
      }
      
      public function §%!r§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                     this.§?"%§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§'"<§ = § !u§;
                        while(true)
                        {
                           this.§="5§ = 0;
                           loop5:
                           for(; _loc3_; loop9:
                           for(; !(_loc2_ && param1); §§goto(addr179))
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
                                       loop13:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§pop();
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(this.mName);
                                                   loop16:
                                                   for(; _loc3_; while(true)
                                                   {
                                                      §§push(this.mName);
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         continue loop16;
                                                      }
                                                      §§goto(addr142);
                                                   },addr20:,return)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push("BIRD_BLACK");
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ || this))
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc2_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§goto(addr157);
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(this.§'"<§ >= 350)
                                                                                 {
                                                                                    §§push(this);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(Math.random() > 0.5)
                                                                                       {
                                                                                          §§goto(addr68);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(-1);
                                                                                       }
                                                                                       §§goto(addr81);
                                                                                    }
                                                                                    addr68:
                                                                                    §§push(1);
                                                                                    if(_loc3_ || this)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr81:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§pop().§#!m§ = §§pop();
                                                                                    while(!_loc2_)
                                                                                    {
                                                                                       if(!(_loc3_ || _loc3_))
                                                                                       {
                                                                                          addr100:
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc2_ && this))
                                                                                                {
                                                                                                   this.§#!m§ = 0;
                                                                                                   break;
                                                                                                }
                                                                                                continue loop15;
                                                                                             }
                                                                                             continue loop16;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       §§push(this);
                                                                                       if(_loc3_ || this)
                                                                                       {
                                                                                          if(Math.random() > 0.5)
                                                                                          {
                                                                                             addr38:
                                                                                             §§push(this.§#!m§);
                                                                                             if(!(_loc2_ && _loc3_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Number(0));
                                                                                          }
                                                                                          §§pop().§#!m§ = §§pop();
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr20);
                                                                                       }
                                                                                       §§goto(addr38);
                                                                                    }
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       break loop1;
                                                                                    }
                                                                                    §§goto(addr20);
                                                                                 }
                                                                                 §§goto(addr100);
                                                                              }
                                                                           }
                                                                           addr153:
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                     addr216:
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop14;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop16;
                                                            }
                                                            addr142:
                                                            §§push("RED_BIG");
                                                            if(!(_loc3_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc2_)
                                                            {
                                                               §§goto(addr153);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr221);
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          §§goto(addr216);
                                       }
                                    }
                                 }
                              }
                           })
                           {
                              §§push(this);
                              §§push(0.75);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(Math.random() * 1.5);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || param1)
                                    {
                                       §§push(-§§pop());
                                       if(!_loc2_)
                                       {
                                          addr312:
                                          §§push(§§pop() * param1);
                                       }
                                       §§pop().§ G§ = §§pop();
                                       loop6:
                                       for(; !(_loc2_ && _loc2_); if(_loc3_ || param1)
                                       {
                                          this.§var§ = this.§'"<§;
                                          continue loop5;
                                       })
                                       {
                                          this.§6"+§ = this.§ G§;
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§'"<§);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * (Math.abs(this.§ G§) / 3));
                                             }
                                             §§pop().§'"<§ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   continue loop6;
                                                }
                                                continue loop7;
                                                addr157:
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      this.§#!m§ = 0;
                                                      addr179:
                                                      if(_loc3_ || this)
                                                      {
                                                         §§goto(addr20);
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              §§goto(addr312);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr279);
      }
      
      public function §,!7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§3^§);
            loop0:
            while(true)
            {
               §§push(this.§,!k§);
               loop1:
               while(true)
               {
                  §§push(§9"3§.§'"F§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     loop3:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr123:
                        while(true)
                        {
                           §§push(this.§3^§);
                           addr78:
                           loop5:
                           while(!_loc1_)
                           {
                              §§push(this.§!Q§);
                              while(true)
                              {
                                 §§push(this.§="5§);
                                 if(!(_loc1_ && this))
                                 {
                                    if(_loc1_)
                                    {
                                       break;
                                       addr111:
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop3;
                                       }
                                       addr110:
                                       §§push(§§pop() / §9"3§.§'"F§);
                                    }
                                    while(_loc2_)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop5;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr110);
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§3^§);
            if(!(_loc1_ && this))
            {
               §§push(this.§@P§);
               if(!_loc1_)
               {
                  if(!_loc1_)
                  {
                     §§push(§§pop() / 180);
                     if(!(_loc1_ && _loc2_))
                     {
                        addr59:
                        if(!_loc1_)
                        {
                           addr64:
                           §§pop().rotation = §§pop() * Math.PI;
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc1_ && _loc1_))
                           {
                              break;
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr111);
               }
               §§goto(addr59);
            }
            §§goto(addr78);
         }
      }
      
      public function §'!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§]!b§ = true;
            loop0:
            while(true)
            {
               this.§ M§ = false;
               loop1:
               while(true)
               {
                  this.§?! § = false;
                  while(true)
                  {
                     this.§?"%§ = 0;
                     continue loop0;
                     addr122:
                     if(!(_loc1_ && this))
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.§,!k§) * (param1 - this.§,!k§) + (param2 - this.§!Q§) * (param2 - this.§!Q§));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§^'§);
            if(_loc4_ || param2)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc4_)
               {
                  §§push(true);
                  if(!(_loc5_ && param1))
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
         }
         §§goto(addr85);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            §§push(this.§,!k§);
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
                              addr148:
                              while(true)
                              {
                                 §§push(this.§,!k§);
                                 addr134:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr135:
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                    }
                                 }
                              }
                           }
                           addr147:
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
                                    while(true)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§!Q§);
                                          while(_loc6_)
                                          {
                                             §§push(param1);
                                             while(true)
                                             {
                                                §§push(§§pop() >= §§pop());
                                             }
                                             addr130:
                                             §§push(this.§!Q§);
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             if(_loc6_ || param1)
                                             {
                                                §§push(param2);
                                                if(_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr44:
                                                      §§push(§§pop() <= §§pop());
                                                      if(_loc6_ || param3)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || this))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(!(_loc5_ && param3))
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           if(!(_loc6_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr130);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr147);
                                                                        }
                                                                     }
                                                                     §§goto(addr148);
                                                                     addr96:
                                                                  }
                                                                  §§goto(addr78);
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop7;
                                                            addr90:
                                                         }
                                                         if(_loc6_ || this)
                                                         {
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop2;
                                                            }
                                                            addr78:
                                                         }
                                                         continue loop8;
                                                         return §§pop();
                                                      }
                                                      §§goto(addr96);
                                                   }
                                                   §§goto(addr135);
                                                }
                                                §§goto(addr88);
                                             }
                                             §§goto(addr134);
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr90);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr148);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(!_loc4_)
         {
            §§push(this.§,!k§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr168:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr169:
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr163:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr164:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                                 addr162:
                              }
                              loop11:
                              while(true)
                              {
                                 this.§,!k§ = param1;
                                 while(true)
                                 {
                                    this.§!Q§ = param2;
                                    while(_loc5_ || param1)
                                    {
                                       this.§'V§ = 100;
                                       loop14:
                                       while(!(_loc4_ && param2))
                                       {
                                          this.§,!7§();
                                          for(; !(_loc4_ && this); if(!(_loc5_ || param1))
                                          {
                                             continue;
                                          },if(_loc4_)
                                          {
                                             continue loop14;
                                          },this.§,!-§.§?!O§(),§§goto(addr64))
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(_loc3_);
                                             if(_loc5_)
                                             {
                                                addr30:
                                                if(!(_loc4_ && param2))
                                                {
                                                   addr37:
                                                   if(_loc5_ || this)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            continue;
                                                         }
                                                         addr64:
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr162);
                                                         }
                                                      }
                                                      return;
                                                   }
                                                   addr133:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop0;
                                                         }
                                                         addr172:
                                                      }
                                                      §§goto(addr37);
                                                   }
                                                   continue loop2;
                                                }
                                                while(_loc5_)
                                                {
                                                   continue loop8;
                                                   §§goto(addr30);
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr163);
                                          }
                                          continue loop11;
                                       }
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
         }
         §§goto(addr164);
      }
      
      public function §]"'§() : §0!N§
      {
         return this.§#!5§;
      }
      
      public function get §?""§() : Number
      {
         return this.§'"<§;
      }
      
      public function get §2$§() : Number
      {
         return this.§'V§;
      }
      
      public function set §2$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§'V§ = param1;
         }
      }
      
      public function get §>! §() : Number
      {
         return this.§'2§;
      }
      
      public function get §15§() : Boolean
      {
         return this.§ M§;
      }
      
      public function get radius() : Number
      {
         return this.§^'§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §>! §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'2§ = param1;
         }
      }
      
      public function get §&!v§() : Number
      {
         return this.§6""§;
      }
      
      public function set §&!v§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6""§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!q§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function get §1!s§() : Number
      {
         return this.§1!E§;
      }
      
      public function get §@!v§() : Number
      {
         return this.§2!o§;
      }
   }
}
