package §2!H§
{
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §3p§.LevelObject;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §6b§.§]n§;
   import §7i§.Texture;
   import §;T§.LevelItemManager;
   import §;T§.LevelItemShape;
   import §;T§.LevelItemSoundResource;
   
   public class LevelSlingshotObject
   {
      
      public static const §%!j§:String = "ChannelSlingshot";
      
      public static const §<_§:Number = 900;
      
      public static const §[W§:Number = 200;
      
      public static const §2!e§:Number = 200;
      
      public static const §;§:Number = 1500;
      
      public static const §=!H§:Number = 5000;
      
      public static const §4"§:Number = 1000;
      
      public static const §!!5§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §%!j§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §<_§ = 900;
               while(true)
               {
                  §[W§ = 200;
                  continue loop0;
                  addr42:
                  if(_loc2_)
                  {
                     return;
                     addr54:
                  }
               }
            }
         }
         while(true)
         {
            §2!e§ = 200;
            loop4:
            while(!_loc1_)
            {
               §;§ = 1500;
               loop5:
               do
               {
                  §=!H§ = 5000;
                  while(!_loc1_)
                  {
                     §4"§ = 1000;
                     while(_loc2_ || LevelSlingshotObject)
                     {
                        §!!5§ = 1000;
                        if(_loc2_ || LevelSlingshotObject)
                        {
                           continue loop5;
                        }
                     }
                  }
                  continue loop4;
               }
               while(!_loc2_);
               
               §§goto(addr42);
            }
            §§goto(addr100);
         }
         §§goto(addr54);
      }
      
      protected var mName:String;
      
      protected var §`!%§:Number;
      
      protected var §else§:Number;
      
      protected var §-!c§:Number;
      
      protected var §%!#§:Number;
      
      private var §0!_§:LevelItemSoundResource;
      
      protected var §1!8§:Number;
      
      protected var §4P§:Number = 1;
      
      private var §'6§:Sprite;
      
      protected var §=n§:Animation;
      
      private var §"!P§:§-m§;
      
      protected var §8E§:LevelSlingshot;
      
      private var §2!§:Number;
      
      private var §+%§:Boolean = false;
      
      private var §&!=§:Boolean = false;
      
      protected var §0V§:Boolean = false;
      
      private var §%!X§:Number;
      
      private var §79§:Number = 0;
      
      private var §-!d§:Number = 0;
      
      private var §-Q§:Number = 0;
      
      private var §0a§:Number = 1000;
      
      private var §><§:Number;
      
      private var §,r§:Number;
      
      private var §+!M§:int;
      
      private var §7h§:Number = 0;
      
      protected var §]§:Number;
      
      protected var §'0§:Number;
      
      private var §[t§:Number = 1;
      
      private var §#6§:Number = 0;
      
      private var §2!V§:b2Vec2;
      
      private var §7!H§:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§8E§ = param1;
               addr175:
               while(true)
               {
                  this.§'6§ = param2;
               }
               loop4:
               while(true)
               {
                  if(!(_loc6_ || this))
                  {
                     continue loop0;
                  }
                  this.§`!%§ = param4;
                  loop5:
                  while(true)
                  {
                     this.§else§ = param5;
                     loop6:
                     for(; !_loc7_; while(!(_loc7_ && this))
                     {
                        this.§&!=§ = false;
                        §§goto(addr94);
                        §§goto(addr63);
                     })
                     {
                        this.§-!c§ = param4;
                        while(true)
                        {
                           this.§%!#§ = param5;
                           do
                           {
                              this.§1!8§ = 0;
                              do
                              {
                                 this.§+%§ = false;
                                 continue loop6;
                              }
                              while(!_loc6_);
                              
                           }
                           while(_loc7_);
                           
                           return;
                           addr47:
                           if(!(_loc6_ || param2))
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue loop4;
                           }
                           if(_loc6_)
                           {
                              this.§]§ = 0;
                              addr58:
                              if(_loc7_)
                              {
                                 loop13:
                                 while(true)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr47);
                                    }
                                    else
                                    {
                                       addr63:
                                       while(true)
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             continue loop5;
                                          }
                                          continue loop6;
                                       }
                                       addr63:
                                    }
                                    addr165:
                                    while(true)
                                    {
                                       this.§0!_§ = LevelItemManager.§&!i§(this.mName).§,!9§;
                                       break loop13;
                                       addr82:
                                       if(_loc6_ || param3)
                                       {
                                          this.§?E§();
                                          continue loop13;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                              addr34:
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    this.§79§ = 0;
                                    §§goto(addr63);
                                    §§goto(addr34);
                                 }
                                 addr94:
                              }
                              §§goto(addr36);
                           }
                           while(true)
                           {
                              this.mName = param3;
                              §§goto(addr165);
                           }
                        }
                     }
                     §§goto(addr175);
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      public function §&#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§+%§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'6§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§'6§);
                     addr56:
                     while(true)
                     {
                        §§pop().dispose();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr58);
      }
      
      public function §&!A§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§&!=§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop());
                     if(!(_loc3_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop24:
                        while(true)
                        {
                           §§pop();
                           addr460:
                           while(true)
                           {
                              §§push(this.§+%§);
                              if(!(_loc3_ && param1))
                              {
                                 continue loop0;
                              }
                              continue loop24;
                           }
                        }
                        addr459:
                     }
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§4P§);
                              loop3:
                              while(true)
                              {
                                 §§push(0);
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       if(_loc2_ || this)
                                       {
                                          this.§-Q§ = 0;
                                       }
                                       loop5:
                                       while(true)
                                       {
                                          this.§7h§ = 0;
                                          loop6:
                                          while(!(_loc3_ && _loc3_))
                                          {
                                             this.§1!8§ = 0;
                                             while(true)
                                             {
                                                this.§,r§ = 0;
                                                addr356:
                                                while(!_loc3_)
                                                {
                                                   this.§4P§ = 0;
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(Number(Math.min(param1,this.§%!X§)));
                                       loop11:
                                       for(; !(_loc3_ && _loc2_); §§push(this.§%!X§),if(!(_loc2_ || _loc3_))
                                       {
                                          continue;
                                       },§§push(0),if(!_loc2_)
                                       {
                                          continue loop4;
                                       },if(§§pop() <= §§pop())
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc2_)
                                             {
                                                this.§`!%§ = this.§8E§.§`!%§;
                                                §§goto(addr145);
                                             }
                                             §§goto(addr460);
                                          }
                                          §§goto(addr145);
                                       },§§goto(addr28))
                                       {
                                          param1 = §§pop();
                                          loop12:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§`!%§);
                                             if(!_loc3_)
                                             {
                                                §§push(param1);
                                                if(_loc2_)
                                                {
                                                   §§push(this.§8E§.§`!%§);
                                                   if(_loc2_ || param1)
                                                   {
                                                      §§push(§§pop() - this.§`!%§);
                                                      if(_loc2_ || param1)
                                                      {
                                                         addr318:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc2_)
                                                         {
                                                            §§push(this.§%!X§);
                                                         }
                                                         §§pop().§`!%§ = §§pop() + §§pop();
                                                         loop13:
                                                         for(; _loc2_; while(_loc2_ || _loc3_)
                                                         {
                                                            this.§1!8§ = 0;
                                                            §§goto(addr71);
                                                            §§goto(addr39);
                                                         })
                                                         {
                                                            §§push(this);
                                                            §§push(this.§else§);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(this.§8E§.§else§);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(§§pop() - this.§else§);
                                                                     if(_loc2_)
                                                                     {
                                                                        addr278:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           §§push(this.§%!X§);
                                                                        }
                                                                        §§pop().§else§ = §§pop() + §§pop();
                                                                        loop14:
                                                                        while(!_loc3_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§else§);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              §§push(param1);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr234:
                                                                                 §§push(§§pop() / 50);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    addr215:
                                                                                    §§push(this.§%!X§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() / §<_§);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop());
                                                                                 }
                                                                                 §§pop().§else§ = §§pop() - §§pop();
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§1!8§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          §§push(360 - this.§1!8§);
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             addr189:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§push(this.§%!X§);
                                                                                             }
                                                                                             §§pop().§1!8§ = §§pop() + §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§%!X§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§%!X§ = §§pop();
                                                                                                addr155:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr189);
                                                                                    loop22:
                                                                                    while(!(_loc3_ && param1))
                                                                                    {
                                                                                       continue loop12;
                                                                                       while(true)
                                                                                       {
                                                                                          this.§;E§();
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          }
                                                                                          if(!(_loc2_ || this))
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          addr46:
                                                                                          if(_loc2_ || this)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             addr145:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§else§ = this.§8E§.§else§;
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§&!=§ = false;
                                                                                                   addr102:
                                                                                                   while(_loc2_ || _loc3_)
                                                                                                   {
                                                                                                      this.§+%§ = true;
                                                                                                      continue loop13;
                                                                                                      §§goto(addr46);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr102);
                                                                                       }
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                             break loop1;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       §§goto(addr155);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr344);
                                                                              }
                                                                              §§goto(addr215);
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§goto(addr356);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                             }
                                             §§goto(addr318);
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                        break;
                        §§goto(addr410);
                     }
                     return;
                  }
               }
            }
            §§goto(addr459);
         }
         §§goto(addr85);
      }
      
      public function §61§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§&!=§ = true;
            loop0:
            while(true)
            {
               this.§%!X§ = §<_§;
               loop1:
               while(true)
               {
                  this.§&_§(LevelItemSoundResource.§!H§);
                  loop2:
                  while(this.§7h§ != 0)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§else§);
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop() + this.§7h§);
                           }
                           §§pop().§else§ = §§pop();
                        }
                        addr66:
                     }
                     while(_loc1_)
                     {
                        this.§7h§ = 0;
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §=!F§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || this)
         {
            §§push(this.§+%§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop37:
                              while(true)
                              {
                                 §§push(this.§'0§);
                                 loop8:
                                 while(true)
                                 {
                                    if(§§pop() > this.§8E§.§"!>§.§'g§.§ !c§)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§8E§.§"!>§.§'g§.§ !c§);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - this.§'0§);
                                          }
                                          §§push(§§pop().§3T§(§§pop()));
                                          addr468:
                                          while(true)
                                          {
                                             §§pop();
                                             addr469:
                                             while(true)
                                             {
                                                this.§]§ = -1;
                                                addr408:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          loop27:
                                          while(true)
                                          {
                                             if(_loc3_ && _loc3_)
                                             {
                                                continue loop9;
                                             }
                                             loop28:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(§§pop() < 0)
                                                      {
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr282:
                                                                  §§push(this);
                                                                  §§push(param1);
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     §§push(§§pop() / 100);
                                                                  }
                                                                  §§push(§§pop().§3T§(§§pop()));
                                                                  if(!(_loc3_ && param1))
                                                                  {
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        addr297:
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           this.§]§ = -1;
                                                                           addr160:
                                                                           addr307:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr376:
                                                                           while(_loc4_ || _loc3_)
                                                                           {
                                                                              §§push(this.§-Q§);
                                                                              loop35:
                                                                              while(_loc4_)
                                                                              {
                                                                                 §§push(0);
                                                                                 while(§§pop() <= §§pop())
                                                                                 {
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                       }
                                                                                       loop18:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          loop19:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(!isNaN(this.§'0§));
                                                                                             addr314:
                                                                                             loop20:
                                                                                             while(_loc4_ || param1)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop28;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§8E§);
                                                                                                   addr324:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().§"!>§);
                                                                                                      addr325:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().objects);
                                                                                                         addr326:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().§ !f§(this.§`!%§,this.§'0§));
                                                                                                            addr331:
                                                                                                            while(!_loc3_)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc2_ = §§pop();
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr140:
                                                                                                   if(_loc3_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§0V§ = false;
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         this.§]§ = 2000;
                                                                                                         while(_loc4_ || param1)
                                                                                                         {
                                                                                                            if(!_loc3_)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc3_ && this)
                                                                                                                     {
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc3_ && this)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           this.§0V§ = false;
                                                                                                                           while(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              this.§]§ = -1;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr27);
                                                                                                                                 }
                                                                                                                                 addr480:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§]§);
                                                                                                                                    if(!(_loc4_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break loop35;
                                                                                                                                    }
                                                                                                                                    §§push(0);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr240:
                                                                                                                           §§goto(addr160);
                                                                                                                           addr216:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              continue loop17;
                                                                                                                           }
                                                                                                                           §§goto(addr408);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                           addr421:
                                                                                                                           addr479:
                                                                                                                           while(_loc4_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              break loop20;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr480);
                                                                                                                              §§goto(addr421);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr204:
                                                                                                                  }
                                                                                                                  §§goto(addr27);
                                                                                                               }
                                                                                                               §§goto(addr216);
                                                                                                            }
                                                                                                            §§goto(addr157);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 this.§]§ = this.§-Q§;
                                                                                 addr393:
                                                                                 return;
                                                                              }
                                                                              continue loop8;
                                                                              §§goto(addr297);
                                                                           }
                                                                           §§goto(addr469);
                                                                           addr376:
                                                                        }
                                                                        §§goto(addr27);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§]§ = 0;
                                                                        §§goto(addr240);
                                                                     }
                                                                  }
                                                                  §§goto(addr314);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§]§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              §§goto(addr376);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr27);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr420);
                                                                        }
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               addr403:
                                                            }
                                                            §§goto(addr389);
                                                         }
                                                         §§goto(addr307);
                                                      }
                                                      else
                                                      {
                                                         §§push(this.§8E§);
                                                         loop29:
                                                         while(_loc4_ || this)
                                                         {
                                                            §§push(§§pop().§"!>§);
                                                            loop30:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().objects);
                                                               addr174:
                                                               while(!(_loc3_ && param1))
                                                               {
                                                                  §§push(_loc2_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§`T§(§§pop()));
                                                                     addr183:
                                                                     addr109:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().§9!-§);
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              break loop27;
                                                                           }
                                                                           §§push(!§§pop());
                                                                        }
                                                                        addr194:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(this.§8E§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 continue loop29;
                                                                              }
                                                                              §§goto(addr204);
                                                                           }
                                                                           §§goto(addr421);
                                                                           addr120:
                                                                           §§push(§§pop().§&E§());
                                                                           if(!(_loc4_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc3_ && param1))
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 this.§]§ = 500;
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    if(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       if(_loc3_ && _loc2_)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr136:
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§goto(addr140);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr297);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr160);
                                                                                    }
                                                                                    §§goto(addr27);
                                                                                 }
                                                                                 §§goto(addr63);
                                                                              }
                                                                              §§goto(addr136);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr282);
                                                                           }
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     §§push(_loc2_);
                                                                     if(_loc3_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop().§`T§(§§pop()));
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr120);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr183);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr331);
                                                }
                                                §§goto(addr334);
                                             }
                                          }
                                          §§goto(addr468);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§]§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§]§ = §§pop();
                                       §§goto(addr403);
                                       §§goto(addr408);
                                    }
                                 }
                              }
                           }
                           addr27:
                           return;
                        }
                        addr436:
                     }
                     §§goto(addr479);
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public function §3T§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this);
            §§push(this.§else§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§else§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§'0§);
               if(!(_loc3_ && this))
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§'0§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§'0§);
                  if(_loc2_ || param1)
                  {
                     §§push(this.§8E§);
                     if(_loc2_)
                     {
                        §§push(§§pop().§"!>§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().§'g§);
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(§§pop().§ !c§);
                              if(_loc2_ || _loc3_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§;E§();
                                       if(!(_loc2_ || this))
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                if(_loc2_ || param1)
                                                {
                                                   §§push(this);
                                                   §§push(this.§'0§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§'0§ = §§pop();
                                                   while(true)
                                                   {
                                                      this.§;E§();
                                                      break loop2;
                                                      §§goto(addr101);
                                                   }
                                                   addr101:
                                                   addr47:
                                                   return true;
                                                   addr74:
                                                   addr64:
                                                }
                                                else
                                                {
                                                   addr141:
                                                }
                                                while(!_loc3_)
                                                {
                                                   §§push(this.§'0§);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§8E§);
                                                         addr154:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§"!>§);
                                                            addr155:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§'g§);
                                                               addr156:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().§ !c§);
                                                                  addr157:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc2_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        addr175:
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        addr177:
                                                                        while(!_loc3_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§else§);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 §§push(§§pop() - param1);
                                                                              }
                                                                              §§pop().§else§ = §§pop();
                                                                              continue loop5;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr152:
                                                   }
                                                   §§goto(addr175);
                                                }
                                                continue loop1;
                                             }
                                          }
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr74);
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          §§goto(addr177);
                                       }
                                       §§goto(addr64);
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr152);
               }
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
               §§goto(addr47);
            }
         }
         §§goto(addr179);
      }
      
      public function §?E§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§;K§ = null;
         var _loc3_:Texture = null;
         var _loc1_:LevelItemShape = LevelItemManager.§&!i§(this.mName).shape;
         if(!_loc5_)
         {
            §§push(_loc1_.§^c§());
            loop0:
            while(true)
            {
               §§push(LevelItemShape.§,!4§);
               while(§§pop() != §§pop())
               {
                  §§push(_loc1_.§^c§());
                  if(_loc5_)
                  {
                     continue loop0;
                  }
                  §§push(LevelItemShape.§ h§);
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
                  if(§§pop() == §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§2!V§ = new b2Vec2(0,0);
                        addr166:
                        while(true)
                        {
                           this.§2!§ = 1.5;
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr100);
               }
               while(true)
               {
                  this.§2!V§ = _loc1_.§6!^§()[0];
               }
            }
         }
         §§goto(addr185);
      }
      
      public function §9!1§(param1:§;K§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc5_ || _loc2_)
         {
            if(!param1)
            {
               addr33:
               _loc2_ = this.§8E§.levelMain.textureManager.§;?§();
               if(_loc5_)
               {
                  addr65:
                  §§push(this.§"!P§);
                  if(!_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           addr78:
                           this.§"!P§ = new §-m§(_loc2_);
                           if(_loc5_ || param1)
                           {
                              this.§'6§.addChild(this.§"!P§);
                              loop0:
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!param1)
                                    {
                                       §§push(this.§"!P§);
                                       loop28:
                                       while(true)
                                       {
                                          §§push(this.§"!P§);
                                          loop24:
                                          while(true)
                                          {
                                             §§push(-§§pop().width);
                                             loop21:
                                             while(true)
                                             {
                                                §§push(2);
                                                loop22:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   addr271:
                                                   loop23:
                                                   while(!(_loc4_ && this))
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr279:
                                                      if(_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§"!P§);
                                                         addr224:
                                                         while(true)
                                                         {
                                                            §§push(this.§"!P§);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               addr235:
                                                               §§push(-§§pop().height);
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(2);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr251:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop21;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               continue loop23;
                                                            }
                                                            continue loop24;
                                                         }
                                                         addr259:
                                                         §§pop().y = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.§"!P§);
                                                            loop16:
                                                            while(!(_loc4_ && param1))
                                                            {
                                                               addr197:
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§pop().scaleX = §§pop();
                                                                        addr213:
                                                                        addr331:
                                                                        while(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(this.§"!P§);
                                                                           if(_loc4_ && param1)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(!(_loc5_ || _loc2_))
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                           if(_loc5_ || _loc3_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr333:
                                                                           while(true)
                                                                           {
                                                                              §§push(param1.pivotX);
                                                                              addr335:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 addr336:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§2!V§);
                                                                                    addr338:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(LevelMain.§8N§);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                          }
                                                                                          addr354:
                                                                                       }
                                                                                       addr355:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr356:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                             addr357:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§"!P§);
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
                                                                           §§goto(addr333);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop().texture = _loc2_;
                                                                        continue loop0;
                                                                     }
                                                                     addr362:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param1.pivotY);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     break loop23;
                                                                  }
                                                                  break;
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr335);
                                                            }
                                                            §§goto(addr224);
                                                            §§goto(addr259);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§2!V§);
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(_loc5_ || this)
                                                         {
                                                            §§push(LevelMain.§8N§);
                                                            if(!_loc4_)
                                                            {
                                                               addr313:
                                                               §§push(§§pop() / §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr316);
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            §§goto(addr354);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      break;
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr338);
                                                }
                                             }
                                          }
                                       }
                                       addr265:
                                    }
                                    §§goto(addr331);
                                    addr371:
                                 }
                              }
                           }
                           §§goto(addr357);
                        }
                        §§goto(addr281);
                     }
                     else
                     {
                        §§push(this.§"!P§);
                     }
                     §§goto(addr362);
                  }
                  §§goto(addr265);
               }
               §§goto(addr78);
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
            §§goto(addr65);
         }
         §§goto(addr33);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(true);
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && this))
         {
            this.§=!F§(param1);
            loop0:
            while(true)
            {
               §§push(this.§&!=§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     addr187:
                     while(true)
                     {
                        this.§-Q§ = 0;
                        addr190:
                        while(true)
                        {
                           §§push(false);
                           addr178:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr179:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop1;
                                 }
                                 _loc4_ = §§pop();
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     addr187:
                  }
                  while(true)
                  {
                     if(this.mName != "BIRD_SARDINE")
                     {
                        loop3:
                        while(true)
                        {
                           this.§<!e§(param1);
                           loop4:
                           while(true)
                           {
                              this.§%!c§(param1);
                              loop5:
                              while(true)
                              {
                                 if(_loc6_ && this)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc5_)
                                 {
                                    §§push(_loc4_);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
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
                                                   while(_loc5_ || param2)
                                                   {
                                                      §§pop();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         §§push(param3);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(true);
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc5_ || param3)
                                                            {
                                                               addr60:
                                                               if(!(_loc5_ || this))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!(_loc5_ || param3))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     addr80:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              this.§!F§(param1,param2);
                                                                              addr107:
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc6_ && param3)
                                                                                 {
                                                                                    break loop5;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                  }
                                                                  addr79:
                                                               }
                                                               §§goto(addr179);
                                                            }
                                                            §§goto(addr80);
                                                         }
                                                         §§goto(addr60);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr178);
                                                }
                                                §§goto(addr79);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr187);
                                 }
                              }
                              §§goto(addr190);
                           }
                        }
                     }
                     §§goto(addr29);
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      public function §<!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§79§);
            loop0:
            while(true)
            {
               §§push(0);
               addr193:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§-!d§);
                     continue loop0;
                  }
                  §§push(this);
                  §§push(this.§79§);
                  if(_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§79§ = §§pop();
               }
            }
         }
         §§goto(addr202);
      }
      
      public function §3!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§79§ = 0;
         }
         do
         {
            this.§9!1§(this.§=n§.getFrame(0));
         }
         while(!(_loc2_ || this));
         
      }
      
      public function § !9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               do
               {
                  this.§79§ = §[W§;
                  while(!_loc2_)
                  {
                     this.§9!1§(this.§=n§.getSubAnimation("blink").getFrame(0));
                     if(!(_loc2_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc2_);
               
               return;
            }
         }
      }
      
      public function §%!c§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§-!d§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§79§);
                     loop2:
                     while(!_loc2_)
                     {
                        continue loop0;
                        loop10:
                        while(true)
                        {
                           §§push(Math.random() * §=!H§);
                           if(!_loc3_)
                           {
                              continue loop2;
                           }
                           §§push(§§pop() < param1);
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 addr49:
                                 if(_loc3_ || this)
                                 {
                                    addr56:
                                    §§push(Boolean(§§pop()));
                                    while(true)
                                    {
                                       addr58:
                                       while(§§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                if(!_loc2_)
                                                {
                                                   this.§&_§();
                                                   addr83:
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   addr148:
                                                   if(_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§-!d§);
                                                         if(!(_loc2_ && param1))
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().§-!d§ = §§pop();
                                                         addr171:
                                                         §§push(this.§-!d§);
                                                         break loop2;
                                                      }
                                                      addr158:
                                                   }
                                                   this.§,3§();
                                                }
                                                addr91:
                                                break;
                                             }
                                             addr123:
                                             loop6:
                                             while(_loc3_ || _loc3_)
                                             {
                                                continue loop10;
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr83);
                                       }
                                       return;
                                       §§goto(addr56);
                                    }
                                    addr57:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop());
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr122);
                                          }
                                          else
                                          {
                                             §§goto(addr57);
                                          }
                                       }
                                       §§goto(addr122);
                                       §§goto(addr49);
                                    }
                                    addr109:
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr58);
                        }
                     }
                     while(true)
                     {
                        addr145:
                        §§push(0);
                        if(_loc3_)
                        {
                           if(§§pop() <= §§pop())
                           {
                              §§goto(addr148);
                           }
                           break;
                        }
                        continue loop1;
                        §§goto(addr171);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr158);
               }
            }
         }
         §§goto(addr130);
      }
      
      public function §,3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-!d§ = 0;
            do
            {
               this.§9!1§(this.§=n§.getFrame(0));
            }
            while(_loc2_);
            
         }
      }
      
      public function §&_§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§-!d§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           while(!_loc4_)
                           {
                              this.§,3§();
                              while(true)
                              {
                              }
                           }
                           addr278:
                           return;
                           addr268:
                        }
                        while(true)
                        {
                           §§push(this.§79§);
                           if(_loc4_ && _loc3_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!(_loc3_ || param2))
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§3!'§();
                                 addr262:
                                 while(true)
                                 {
                                 }
                              }
                              addr259:
                           }
                           loop8:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_ || this)
                              {
                                 if(§§pop() < 0)
                                 {
                                    addr222:
                                    while(true)
                                    {
                                       §§push(LevelItemSoundResource.§?!,§);
                                       if(_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          addr227:
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          addr229:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr222:
                                 }
                                 while(true)
                                 {
                                    this.§-!d§ = §2!e§;
                                    loop10:
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          this.§9!1§(this.§=n§.getSubAnimation("yell").getFrame(0));
                                          while(!(_loc4_ && this))
                                          {
                                             §§push(this.§+%§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr175:
                                                            while(_loc3_)
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(this.§&!=§);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ || this))
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  continue loop13;
                                                                  addr123:
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_ || param2)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr159:
                                                                  while(true)
                                                                  {
                                                                     §§push(param2);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     continue loop20;
                                                                  }
                                                                  continue loop19;
                                                               }
                                                            }
                                                            §§goto(addr78);
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                             }
                                             if(_loc4_ && param2)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                break loop10;
                                             }
                                             if(!_loc4_)
                                             {
                                                §§goto(addr24);
                                             }
                                             else
                                             {
                                                §§goto(addr268);
                                             }
                                          }
                                          continue;
                                       }
                                       §§goto(addr259);
                                    }
                                    continue loop8;
                                    §§goto(addr229);
                                 }
                              }
                              §§goto(addr227);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr278);
         }
         §§goto(addr222);
      }
      
      public function §!F§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(_loc6_)
         {
            §§push(this.§-Q§);
            if(!(_loc7_ && param1))
            {
               §§push(0);
               if(!_loc7_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(this);
                        §§push(this.§-Q§);
                        if(_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§-Q§ = §§pop();
                        if(_loc6_ || param1)
                        {
                           §§push(this.§-Q§);
                           if(!(_loc7_ && param2))
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 addr67:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§+!M§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && param2))
                                       {
                                          _loc4_.§+!M§ = _loc5_;
                                       }
                                       if(!_loc7_)
                                       {
                                          addr92:
                                          §§push(this);
                                          §§push(this.§,r§);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§,r§ = §§pop();
                                          loop62:
                                          while(true)
                                          {
                                             addr905:
                                             §§push(!this.§+%§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop11:
                                                while(true)
                                                {
                                                   addr908:
                                                   if(§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr911:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ || this))
                                                            {
                                                               continue loop62;
                                                            }
                                                            §§push(this.§+!M§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(2);
                                                               if(_loc6_)
                                                               {
                                                                  addr877:
                                                                  §§push(Boolean(§§pop() < §§pop()));
                                                                  loop13:
                                                                  while(!_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           addr780:
                                                                           §§push(this.§+%§);
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr882:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§+!M§);
                                                                           addr884:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§push(Boolean(!§§pop()));
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop11;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  addr888:
                                                                  §§push(Boolean(§§pop() > §§pop()));
                                                                  if(Boolean(§§pop() > §§pop()))
                                                                  {
                                                                     addr890:
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        addr850:
                                                                        §§push(this.§,r§);
                                                                        addr851:
                                                                        §§push(-1);
                                                                        while(true)
                                                                        {
                                                                           addr853:
                                                                           §§push(Boolean(§§pop() < §§pop()));
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              break loop9;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     addr891:
                                                                  }
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        this.§,r§ = -1;
                                                                     }
                                                                     addr867:
                                                                  }
                                                                  this.§><§ = this.§,r§;
                                                                  addr846:
                                                                  this.§-Q§ = §!!5§;
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§-Q§);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * (Math.abs(this.§><§) / 2));
                                                                     }
                                                                     §§pop().§-Q§ = §§pop();
                                                                     addr834:
                                                                     addr806:
                                                                     this.§0a§ = this.§-Q§;
                                                                     while(!(_loc6_ || param2))
                                                                     {
                                                                        continue loop16;
                                                                        §§goto(addr834);
                                                                     }
                                                                     addr800:
                                                                     this.§1!8§ = 0;
                                                                     addr795:
                                                                     this.§4P§ = 0;
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        addr418:
                                                                        addr509:
                                                                        while(true)
                                                                        {
                                                                           this.§;E§();
                                                                           addr422:
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§goto(addr93);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.§7h§ = 0;
                                                                              addr751:
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    this.§1!8§ = 0;
                                                                                    addr744:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          this.§,r§ = 0;
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc7_ && this))
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             §§goto(addr882);
                                                                                          }
                                                                                          addr732:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.§?!'§(2.25);
                                                                                             addr774:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                          }
                                                                                          addr770:
                                                                                       }
                                                                                    }
                                                                                    addr744:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr806);
                                                                                 }
                                                                              }
                                                                              break;
                                                                              addr758:
                                                                              this.§-Q§ = 0;
                                                                           }
                                                                           §§goto(addr795);
                                                                           continue loop15;
                                                                        }
                                                                        loop58:
                                                                        while(true)
                                                                        {
                                                                           addr432:
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(360);
                                                                              §§push(§]n§);
                                                                              §§push(this.§0a§);
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(this.§-Q§);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       addr465:
                                                                                       §§push(§§pop() / this.§0a§);
                                                                                    }
                                                                                    §§push(§§pop() * §§pop().§1!R§(§§pop()));
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() * this.§4P§);
                                                                                    }
                                                                                    §§pop().§1!8§ = §§pop();
                                                                                    addr474:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr418);
                                                                                    }
                                                                                    §§goto(addr732);
                                                                                 }
                                                                              }
                                                                              §§goto(addr465);
                                                                              continue loop58;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr884);
                                                         }
                                                      }
                                                      continue loop62;
                                                   }
                                                   §§goto(addr880);
                                                }
                                                addr787:
                                                if(§§pop())
                                                {
                                                   addr789:
                                                   §§pop();
                                                   §§push(param2);
                                                   if(_loc6_)
                                                   {
                                                      addr768:
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      §§goto(addr758);
                                                   }
                                                   §§goto(addr770);
                                                   addr790:
                                                }
                                                §§goto(addr768);
                                             }
                                          }
                                          addr92:
                                       }
                                       else
                                       {
                                          addr211:
                                       }
                                       §§goto(addr93);
                                    }
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§push(this.§-Q§);
                                    loop60:
                                    while(true)
                                    {
                                       §§push(this.§0a§);
                                       if(_loc6_)
                                       {
                                          §§push(2);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop51:
                                             while(§§pop() < §§pop())
                                             {
                                                §§push(this.§0a§);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            §§push(2);
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  addr574:
                                                                  while(_loc6_)
                                                                  {
                                                                     §§push(this.§-Q§);
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           continue loop51;
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || _loc3_))
                                                                           {
                                                                              continue loop60;
                                                                           }
                                                                           §§push(this.§0a§);
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 §§push(2);
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    addr615:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       loop22:
                                                                                       while(_loc6_ || param2)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop23:
                                                                                          for(; _loc6_ || this; while(true)
                                                                                          {
                                                                                             if(_loc7_ && _loc3_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                addr527:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§><§);
                                                                                                      if(!(_loc7_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            §§push(this.§><§);
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§7h§ = §§pop();
                                                                                                      §§goto(addr509);
                                                                                                   }
                                                                                                   §§goto(addr911);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr641);
                                                                                                }
                                                                                             }
                                                                                          })
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(§]n§.§1!R§(_loc3_,false));
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   addr680:
                                                                                                   addr680:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(_loc3_);
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§><§);
                                                                                                         }
                                                                                                         §§pop().§7h§ = §§pop();
                                                                                                         addr658:
                                                                                                         if(_loc7_ && param1)
                                                                                                         {
                                                                                                            break loop51;
                                                                                                         }
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr432);
                                                                                                         }
                                                                                                         §§goto(addr774);
                                                                                                      }
                                                                                                      addr682:
                                                                                                   }
                                                                                                   §§goto(addr744);
                                                                                                }
                                                                                                addr641:
                                                                                             }
                                                                                             §§goto(addr850);
                                                                                          }
                                                                                          §§push(this.§0a§);
                                                                                          while(true)
                                                                                          {
                                                                                             break loop60;
                                                                                          }
                                                                                       }
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc3_ = §§pop();
                                                                                          §§goto(addr680);
                                                                                          addr678:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr744);
                                                                                       addr623:
                                                                                    }
                                                                                    §§goto(addr715);
                                                                                 }
                                                                                 break loop60;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 addr718:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr719:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       addr720:
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                          §§goto(addr678);
                                                                                          §§push(§]n§.§1!R§(_loc3_));
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr891);
                                                                                 }
                                                                              }
                                                                              addr717:
                                                                           }
                                                                           §§goto(addr615);
                                                                        }
                                                                     }
                                                                     §§goto(addr615);
                                                                  }
                                                                  addr703:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§-Q§);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        §§goto(addr713);
                                                                        §§push(§§pop() - §§pop());
                                                                     }
                                                                     §§goto(addr713);
                                                                  }
                                                               }
                                                               addr573:
                                                            }
                                                            §§goto(addr851);
                                                         }
                                                         §§goto(addr718);
                                                      }
                                                      §§goto(addr719);
                                                   }
                                                   §§goto(addr678);
                                                }
                                                §§goto(addr623);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr703);
                                             }
                                             addr700:
                                             addr701:
                                          }
                                          break;
                                       }
                                       §§goto(addr700);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr717);
                                    }
                                 }
                                 §§goto(addr744);
                              }
                              §§goto(addr573);
                           }
                           else
                           {
                              addr387:
                              §§push(param1);
                              if(_loc6_)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop30:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop31:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop32:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop33:
                                          while(_loc6_ || param2)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   loop34:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop35:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(this.§+%§);
                                                            loop36:
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               loop37:
                                                               while(!(_loc7_ && param1))
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop38:
                                                                     while(!_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop40:
                                                                                       while(!(_loc7_ && _loc3_))
                                                                                       {
                                                                                          if(_loc7_ && _loc3_)
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop41:
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop42:
                                                                                                for(; !(_loc7_ && param2); if(!(_loc6_ || param2))
                                                                                                {
                                                                                                   continue;
                                                                                                },if(!(_loc7_ && this))
                                                                                                {
                                                                                                   if(_loc6_ || param2)
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            §§goto(addr211);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr867);
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr834);
                                                                                                   }
                                                                                                   §§goto(addr790);
                                                                                                },§§goto(addr422))
                                                                                                {
                                                                                                   §§push(this.§&!=§);
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                      §§push(!§§pop());
                                                                                                      loop43:
                                                                                                      while(_loc6_ || this)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop44:
                                                                                                         while(_loc6_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop40;
                                                                                                                  }
                                                                                                                  if(_loc6_ || this)
                                                                                                                  {
                                                                                                                     addr249:
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                     if(!(_loc7_ && param2))
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop45:
                                                                                                                              while(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop46:
                                                                                                                                 while(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || param2)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(this.§0V§);
                                                                                                                                                if(!(_loc7_ && this))
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      continue loop36;
                                                                                                                                                   }
                                                                                                                                                   if(_loc7_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop31;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   if(_loc6_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§push(!§§pop());
                                                                                                                                                            if(_loc6_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr142:
                                                                                                                                                               if(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop34;
                                                                                                                                                               }
                                                                                                                                                               continue loop45;
                                                                                                                                                            }
                                                                                                                                                            addr152:
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop44;
                                                                                                                                                            }
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               continue loop43;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc6_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc7_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           this.§?!'§();
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr751);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop42;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop46;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr93);
                                                                                                                                                               }
                                                                                                                                                               addr165:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr877);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr853);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr789);
                                                                                                                                                }
                                                                                                                                                §§goto(addr142);
                                                                                                                                             }
                                                                                                                                             §§goto(addr846);
                                                                                                                                          }
                                                                                                                                          §§goto(addr800);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr720);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr658);
                                                                                                                                 }
                                                                                                                                 §§goto(addr474);
                                                                                                                              }
                                                                                                                              continue loop41;
                                                                                                                              addr264:
                                                                                                                           }
                                                                                                                           §§goto(addr165);
                                                                                                                        }
                                                                                                                        §§goto(addr908);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr908);
                                                                                                               }
                                                                                                               §§goto(addr249);
                                                                                                            }
                                                                                                            §§goto(addr888);
                                                                                                         }
                                                                                                         §§goto(addr888);
                                                                                                      }
                                                                                                      §§goto(addr783);
                                                                                                   }
                                                                                                   §§goto(addr264);
                                                                                                }
                                                                                                continue loop35;
                                                                                             }
                                                                                             §§goto(addr905);
                                                                                          }
                                                                                          §§goto(addr235);
                                                                                       }
                                                                                       continue loop33;
                                                                                       addr330:
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                              §§goto(addr787);
                                                                              addr318:
                                                                           }
                                                                           §§goto(addr890);
                                                                        }
                                                                        §§goto(addr853);
                                                                     }
                                                                     §§goto(addr780);
                                                                  }
                                                                  §§goto(addr888);
                                                               }
                                                               §§goto(addr783);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr527);
                                                         }
                                                         §§goto(addr680);
                                                      }
                                                   }
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr888);
                                          }
                                          §§goto(addr787);
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr615);
                              }
                              §§goto(addr713);
                           }
                        }
                        §§goto(addr701);
                     }
                     §§goto(addr682);
                  }
                  else
                  {
                     §§push(Math.random() * §4"§);
                     if(_loc6_)
                     {
                        if(_loc6_ || this)
                        {
                           if(_loc6_ || this)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 §§goto(addr387);
                              }
                              else
                              {
                                 §§goto(addr574);
                              }
                           }
                           §§goto(addr588);
                        }
                        §§goto(addr516);
                     }
                  }
                  §§goto(addr526);
               }
               §§goto(addr67);
            }
            §§goto(addr718);
         }
         §§goto(addr92);
      }
      
      public function §?!'§(param1:Number = 1) : void
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
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§+!M§ = 0;
                     loop3:
                     while(true)
                     {
                        this.§-Q§ = §!!5§;
                        loop4:
                        while(true)
                        {
                           this.§7h§ = 0;
                           while(true)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(_loc2_ || _loc2_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr314:
                                       §§push(-§§pop());
                                       if(_loc2_)
                                       {
                                          §§push(param1);
                                       }
                                       §§pop().§><§ = §§pop();
                                       loop6:
                                       while(!_loc3_)
                                       {
                                          this.§,r§ = this.§><§;
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(this);
                                                §§push(this.§-Q§);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() * (Math.abs(this.§><§) / 3));
                                                }
                                                §§pop().§-Q§ = §§pop();
                                                loop8:
                                                while(_loc2_)
                                                {
                                                   this.§0a§ = this.§-Q§;
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.mName);
                                                         loop10:
                                                         while(!_loc3_)
                                                         {
                                                            §§push("BIRD_WHITE");
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr230:
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.mName);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push("BIRD_BLACK");
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ || param1))
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§push(§§pop() == §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc2_ || param1)
                                                                                             {
                                                                                                addr190:
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      addr211:
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr212:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§pop();
                                                                                                         }
                                                                                                         §§goto(addr190);
                                                                                                         addr212:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               if(this.§-Q§ >= 350)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(Math.random() > 0.5)
                                                                                                                     {
                                                                                                                        §§goto(addr73);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(-1);
                                                                                                                     }
                                                                                                                     §§goto(addr86);
                                                                                                                  }
                                                                                                                  addr73:
                                                                                                                  §§push(1);
                                                                                                                  if(!_loc3_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc3_ && _loc2_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr86:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§pop().§4P§ = §§pop();
                                                                                                                  for(; _loc2_ || this; §§pop().§4P§ = §§pop(),if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        addr105:
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           addr164:
                                                                                                                           this.§4P§ = 0;
                                                                                                                        }
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           this.§4P§ = 0;
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr215:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.mName);
                                                                                                                           if(_loc2_ || param1)
                                                                                                                           {
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 §§push("RED_BIG");
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              continue loop10;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        §§goto(addr19);
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                     continue loop22;
                                                                                                                     break loop18;
                                                                                                                  })
                                                                                                                  {
                                                                                                                     if(!_loc3_)
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
                                                                                                                        §§push(this.§4P§);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  §§goto(addr19);
                                                                                                               }
                                                                                                               §§goto(addr105);
                                                                                                            }
                                                                                                            §§goto(addr164);
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                         addr19:
                                                                                                         return;
                                                                                                         addr152:
                                                                                                      }
                                                                                                      §§goto(addr215);
                                                                                                   }
                                                                                                   addr197:
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr229:
                                                                           }
                                                                           §§goto(addr197);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               if(!(_loc2_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§goto(addr152);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop4;
                                                }
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          continue loop3;
                                       }
                                       continue;
                                    }
                                    §§goto(addr314);
                                 }
                                 §§push(§§pop() * §§pop());
                              }
                              §§goto(addr314);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr230);
      }
      
      public function §;E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§'6§);
            loop0:
            while(true)
            {
               §§push(this.§`!%§);
               if(!_loc2_)
               {
                  §§push(LevelMain.§8N§);
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                  }
                  addr133:
               }
               loop2:
               while(true)
               {
                  §§pop().x = §§pop();
                  addr135:
                  while(true)
                  {
                     §§push(this.§'6§);
                     addr88:
                     loop4:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        §§push(this.§else§);
                        if(_loc1_)
                        {
                           if(!(_loc1_ || _loc1_))
                           {
                              break;
                           }
                           §§push(this.§7h§);
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 addr118:
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§push(LevelMain.§8N§);
                                 }
                                 addr118:
                              }
                              else
                              {
                                 §§goto(addr133);
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              §§goto(addr118);
                           }
                        }
                        while(true)
                        {
                           §§pop().y = §§pop();
                           continue loop4;
                        }
                     }
                     continue loop2;
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§'6§);
            if(!(_loc2_ && this))
            {
               §§push(this.§1!8§);
               if(!(_loc2_ && _loc1_))
               {
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 180);
                     if(!(_loc2_ && this))
                     {
                        addr68:
                        if(!_loc2_)
                        {
                           addr74:
                           §§pop().rotation = §§pop() * Math.PI;
                           if(!_loc1_)
                           {
                              continue;
                           }
                           if(_loc1_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr122);
               }
               §§goto(addr68);
            }
            §§goto(addr88);
         }
      }
      
      public function §3=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§0V§ = true;
            loop0:
            while(true)
            {
               this.§+%§ = false;
               addr143:
               while(true)
               {
                  this.§&!=§ = false;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§1!8§ = 0;
            §§goto(addr80);
         }
         §§goto(addr49);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.§`!%§) * (param1 - this.§`!%§) + (param2 - this.§else§) * (param2 - this.§else§));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§2!§);
            if(!_loc5_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!(_loc5_ && param1))
               {
                  addr77:
                  §§push(true);
                  if(!(_loc5_ && _loc3_))
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
         §§goto(addr77);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§`!%§);
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc6_ && this))
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr186:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr187:
                                 while(true)
                                 {
                                    §§pop();
                                    addr188:
                                    while(true)
                                    {
                                       §§push(this.§`!%§);
                                       addr130:
                                       while(true)
                                       {
                                          §§push(param4);
                                          addr131:
                                          while(_loc5_ || param2)
                                          {
                                             §§push(§§pop() <= §§pop());
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                                 addr187:
                              }
                              addr140:
                              while(true)
                              {
                                 addr141:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr187);
                  }
               }
               if(_loc6_ && param2)
               {
                  continue;
               }
               §§push(param2);
               if(_loc5_)
               {
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() <= §§pop());
                     if(!(_loc6_ && param3))
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              addr66:
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                                 if(_loc6_ && param1)
                                 {
                                    §§goto(addr139);
                                 }
                                 §§goto(addr75);
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr131);
               }
               §§goto(addr93);
            }
         }
         §§goto(addr171);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(false);
         if(!(_loc4_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§`!%§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr176:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr177:
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr179:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       if(_loc5_)
                                       {
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop0;
                                                }
                                                addr184:
                                             }
                                          }
                                          continue loop2;
                                          addr166:
                                       }
                                       addr171:
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr172:
                                          while(true)
                                          {
                                          }
                                       }
                                    }
                                    addr163:
                                 }
                                 while(true)
                                 {
                                    this.§`!%§ = param1;
                                    while(_loc5_)
                                    {
                                       this.§else§ = param2;
                                       while(_loc5_ || _loc3_)
                                       {
                                          this.§]§ = 100;
                                          loop14:
                                          for(; !_loc4_; if(_loc4_ && this)
                                          {
                                             continue;
                                          },this.§8E§.§<!i§(),§§goto(addr64))
                                          {
                                             this.§;E§();
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         return;
                                                      }
                                                      addr30:
                                                      if(_loc5_ || param2)
                                                      {
                                                         continue loop14;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr171);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              addr161:
                           }
                           §§goto(addr184);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr172);
      }
      
      public function § !d§() : §-m§
      {
         return this.§"!P§;
      }
      
      public function get §,!$§() : Number
      {
         return this.§-Q§;
      }
      
      public function get §4O§() : Number
      {
         return this.§]§;
      }
      
      public function set §4O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]§ = param1;
         }
      }
      
      public function get §?!h§() : Number
      {
         return this.§[t§;
      }
      
      public function get §%!7§() : Boolean
      {
         return this.§+%§;
      }
      
      public function get radius() : Number
      {
         return this.§2!§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §?!h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[t§ = param1;
         }
      }
      
      public function get §9S§() : Number
      {
         return this.§#6§;
      }
      
      public function set §9S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#6§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§7!H§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7!H§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function get §6!1§() : Number
      {
         return this.§-!c§;
      }
      
      public function get §!3§() : Number
      {
         return this.§%!#§;
      }
   }
}
