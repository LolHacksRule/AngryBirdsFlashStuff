package §@L§
{
   import § ! §.§5!v§;
   import §&v§.§"a§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §&v§.§each §;
   import §,z§.§"_§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import each.§&!,§;
   
   public class §3!&§
   {
      
      public static const §+!k§:String = "ChannelSlingshot";
      
      public static const §`0§:Number = 900;
      
      public static const §<!i§:Number = 200;
      
      public static const §@2§:Number = 200;
      
      public static const §2!S§:Number = 1500;
      
      public static const §+h§:Number = 5000;
      
      public static const §92§:Number = 1000;
      
      public static const §7G§:Number = 1000;
      
      public static const §9!i§:Number = 46.25;
      
      public static const §%"#§:Number = 52.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3!&§))
         {
            §+!k§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §`0§ = 900;
               loop1:
               while(true)
               {
                  §<!i§ = 200;
                  loop2:
                  while(true)
                  {
                     §@2§ = 200;
                     while(_loc2_)
                     {
                        §2!S§ = 1500;
                        addr71:
                        if(_loc2_ || _loc2_)
                        {
                           §%"#§ = 52.5;
                           addr78:
                           if(_loc1_ && §3!&§)
                           {
                              while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc1_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§goto(addr71);
                                 §§goto(addr78);
                              }
                              while(_loc2_)
                              {
                                 §7G§ = 1000;
                                 continue loop2;
                                 §§goto(addr54);
                              }
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §92§ = 1000;
                                 §§goto(addr95);
                              }
                              addr95:
                              addr102:
                              addr47:
                           }
                           addr40:
                           if(!_loc2_)
                           {
                              while(true)
                              {
                                 §+h§ = 5000;
                                 §§goto(addr102);
                                 §§goto(addr40);
                              }
                              addr109:
                           }
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr109);
      }
      
      protected var mName:String;
      
      protected var §%!3§:Number;
      
      protected var §?!e§:Number;
      
      protected var §^!-§:Number;
      
      protected var §#!H§:Number;
      
      protected var §>!n§:Number;
      
      protected var §?!G§:Number;
      
      private var §<!3§:§,4§;
      
      protected var §!&§:Number;
      
      protected var §#_§:Number = 1;
      
      private var §#e§:Sprite;
      
      protected var §"!b§:§5!v§;
      
      private var §>!O§:DisplayObject;
      
      protected var §`j§:§;!3§;
      
      private var §+`§:Number;
      
      protected var §>%§:Boolean = false;
      
      private var §="-§:Boolean = false;
      
      protected var §12§:Boolean = false;
      
      private var §<!k§:Number;
      
      private var §=>§:Number = 0;
      
      private var §3?§:Number = 0;
      
      private var §[%§:Number = 0;
      
      private var §#K§:Number = 1000;
      
      private var §;n§:Number;
      
      private var §2",§:Number;
      
      private var §8!o§:int;
      
      private var §2<§:Number = 0;
      
      protected var §'C§:Number;
      
      protected var §@;§:Number;
      
      private var §`+§:Number = 1;
      
      private var §`!V§:Number = 0;
      
      private var §4!?§:b2Vec2;
      
      private var §6!r§:Number = 1;
      
      private var §&[§:§each §;
      
      protected var §%-§:§9B§;
      
      protected var §&U§:Boolean = true;
      
      private var §-6§:int;
      
      public function §3!&§(param1:§;!3§, param2:Sprite, param3:String, param4:§9B§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_)
         {
            super();
            while(true)
            {
               this.§%-§ = param4;
               loop1:
               for(; _loc10_ || this; while(!(_loc9_ && param3))
               {
                  this.§&[§ = param4.shape;
                  §§goto(addr199);
               })
               {
                  this.§-6§ = param8;
                  while(true)
                  {
                     this.§`j§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§#e§ = param2;
                        while(true)
                        {
                           this.mName = param3;
                           continue loop1;
                           addr91:
                           while(_loc10_ || param1)
                           {
                              this.§!&§ = 0;
                              while(!(_loc9_ && param3))
                              {
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get §5x§() : int
      {
         return this.§-6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§#e§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§#e§);
                     addr69:
                     addr51:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§#e§ = null;
                        }
                        while(!(_loc1_ || this));
                        
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr24);
                  }
               }
               addr24:
               return;
            }
            §§goto(addr69);
         }
         §§goto(addr51);
      }
      
      public function get levelItem() : §9B§
      {
         return this.§%-§;
      }
      
      public function §?!m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§>%§ = param1;
            loop0:
            while(!this.§?!4§)
            {
               loop1:
               while(true)
               {
                  this.§%!3§ = this.§#!H§;
                  loop2:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§?!e§ = this.§>!n§;
                        while(!_loc3_)
                        {
                           continue loop1;
                           while(!(_loc3_ && _loc3_))
                           {
                              this.updateRenderer();
                              if(_loc2_)
                              {
                                 break loop0;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function set §6s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&U§ = param1;
         }
      }
      
      public function get §;!x§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.name.toUpperCase() == "BIRD_GREEN")
            {
               if(_loc2_)
               {
                  §§push(§%"#§);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  return §9!i§;
               }
               return §§pop();
            }
         }
         §§goto(addr50);
      }
      
      public function §#!`§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§="-§);
            if(_loc3_ || param1)
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
                        addr480:
                        while(true)
                        {
                           §§push(this.§>%§);
                           if(_loc2_ && this)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr446:
                           }
                           continue loop0;
                        }
                     }
                     addr479:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§push(this.§#_§);
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
                                       this.§[%§ = 0;
                                       addr427:
                                       while(true)
                                       {
                                          this.§2<§ = 0;
                                          loop25:
                                          while(true)
                                          {
                                             this.§!&§ = 0;
                                             addr413:
                                             while(true)
                                             {
                                                this.§2",§ = 0;
                                                continue loop25;
                                             }
                                          }
                                       }
                                    }
                                    addr424:
                                 }
                                 while(true)
                                 {
                                    §§push(Number(Math.min(param1,this.§<!k§)));
                                    loop7:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       loop8:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§push(this);
                                             §§push(this.§%!3§);
                                             if(_loc3_)
                                             {
                                                §§push(param1);
                                                if(_loc3_ || this)
                                                {
                                                   §§push(this.§`j§.x);
                                                   if(_loc3_ || param1)
                                                   {
                                                      §§push(§§pop() - this.§%!3§);
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr371);
                                                      }
                                                   }
                                                   §§push(§§pop() / §§pop());
                                                }
                                                addr371:
                                                §§goto(addr372);
                                             }
                                             addr372:
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(this.§<!k§);
                                             }
                                             §§pop().§%!3§ = §§pop() + §§pop();
                                             loop9:
                                             do
                                             {
                                                §§push(this);
                                                §§push(this.§?!e§);
                                                if(_loc3_)
                                                {
                                                   §§push(param1);
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§`j§.y);
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         §§push(§§pop() - this.§?!e§);
                                                         if(_loc3_ || this)
                                                         {
                                                            addr317:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc3_ || param1)
                                                            {
                                                               addr327:
                                                               §§push(§§pop() / this.§<!k§);
                                                            }
                                                            §§pop().§?!e§ = §§pop() + §§pop();
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§?!e§);
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(param1);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §§push(§§pop() / 50);
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        §§push(this.§<!k§);
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           §§push(§§pop() / §`0§);
                                                                        }
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               §§pop().§?!e§ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§!&§);
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           §§push(360 - this.§!&§);
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              addr224:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr222:
                                                                                 §§push(§§pop() / this.§<!k§);
                                                                              }
                                                                              §§pop().§!&§ = §§pop() + §§pop();
                                                                              loop12:
                                                                              while(_loc3_ || param1)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§<!k§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() - param1);
                                                                                 }
                                                                                 §§pop().§<!k§ = §§pop();
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§<!k§);
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!(_loc2_ && param1))
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                this.updateRenderer();
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr80:
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr61:
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         if(!(_loc3_ || _loc3_))
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         addr455:
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      addr172:
                                                                                                      while(!_loc2_)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         this.§?!e§ = this.§`j§.y;
                                                                                                         §§goto(addr61);
                                                                                                      }
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   addr87:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr427);
                                                                                                   while(_loc3_)
                                                                                                   {
                                                                                                      this.§="-§ = false;
                                                                                                      continue loop10;
                                                                                                      §§goto(addr94);
                                                                                                   }
                                                                                                   §§goto(addr480);
                                                                                                }
                                                                                                while(_loc3_)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§`j§.angle);
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() / Math.PI);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() * 180);
                                                                                                      }
                                                                                                   }
                                                                                                   §§pop().§^!-§ = §§pop();
                                                                                                   §§goto(addr57);
                                                                                                }
                                                                                                addr57:
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          while(_loc3_ || _loc3_)
                                                                                          {
                                                                                             this.§%!3§ = this.§`j§.x;
                                                                                             §§goto(addr172);
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  break;
                                                                  if(_loc2_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     this.§!&§ = 0;
                                                                     §§goto(addr80);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr413);
                                                            }
                                                         }
                                                         §§goto(addr327);
                                                      }
                                                      §§goto(addr317);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr317);
                                             }
                                             while(!_loc3_);
                                             
                                             return;
                                          }
                                          §§goto(addr424);
                                          §§goto(addr427);
                                       }
                                       §§goto(addr396);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr455);
                  }
               }
            }
            §§goto(addr479);
         }
         §§goto(addr427);
      }
      
      public function §`!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§="-§ = true;
         }
         loop0:
         while(true)
         {
            this.§<!k§ = §`0§;
            addr103:
            while(true)
            {
               this.§?!h§(§,4§.§9!Q§);
               while(this.§2<§ != 0)
               {
                  continue loop0;
                  if(_loc1_ || _loc2_)
                  {
                     break;
                  }
               }
               return;
            }
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§"_§ = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§>%§);
            while(true)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              §§push(this.§@;§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop() > this.§`j§.§`!&§.§57§.ground)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§`j§.§`!&§.§57§.ground);
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          §§push(§§pop() - this.§@;§);
                                       }
                                       §§pop().applyGravity(§§pop());
                                       loop5:
                                       while(true)
                                       {
                                          this.§'C§ = -1;
                                          while(!(_loc5_ && param1))
                                          {
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§'C§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§'C§ = §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§'C§);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(_loc5_ && this)
                                                      {
                                                         break;
                                                      }
                                                      §§push(0);
                                                      if(_loc4_ || param1)
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§[%§);
                                                               addr202:
                                                               addr253:
                                                               while(!(_loc5_ && param1))
                                                               {
                                                                  §§push(0);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(§§pop() <= §§pop())
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 _loc2_ = §§pop();
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(!isNaN(this.§@;§))
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                §§push(this.§`j§);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop().§`!&§);
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§§pop().objects);
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().§>!v§(this.§%!3§,this.§@;§));
                                                                                                         loop14:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            loop15:
                                                                                                            while(_loc4_)
                                                                                                            {
                                                                                                               _loc2_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc4_ || this)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                        {
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                     addr108:
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr443:
                                                                                                                        return;
                                                                                                                        addr299:
                                                                                                                     }
                                                                                                                     break;
                                                                                                                     addr50:
                                                                                                                  }
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                      }
                                                                                                      addr304:
                                                                                                      _loc3_ = §§pop().getObject(_loc2_) as §"_§;
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(Boolean(_loc3_));
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr440:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr441:
                                                                                                               §§pop();
                                                                                                               §§push(Boolean(_loc3_.§<!l§));
                                                                                                               if(_loc5_ && _loc3_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr441);
                                                                                                               addr442:
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr414:
                                                                                                               if(!(_loc4_ || this))
                                                                                                               {
                                                                                                                  §§goto(addr442);
                                                                                                               }
                                                                                                               this.§12§ = false;
                                                                                                               this.§'C§ = -1;
                                                                                                               addr424:
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§goto(addr424);
                                                                                                               }
                                                                                                               §§goto(addr443);
                                                                                                            }
                                                                                                            addr381:
                                                                                                            §§push(Boolean(_loc3_));
                                                                                                            §§push(Boolean(_loc3_));
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr385:
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     addr393:
                                                                                                                     §§push(_loc3_.§^" §());
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           addr352:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 addr361:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr363:
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          this.§12§ = false;
                                                                                                                                          addr330:
                                                                                                                                          this.§'C§ = 2000;
                                                                                                                                          if(!(_loc5_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr393);
                                                                                                                                             }
                                                                                                                                             §§goto(addr443);
                                                                                                                                          }
                                                                                                                                          §§goto(addr363);
                                                                                                                                          addr375:
                                                                                                                                       }
                                                                                                                                       §§goto(addr414);
                                                                                                                                    }
                                                                                                                                    §§goto(addr424);
                                                                                                                                 }
                                                                                                                                 this.§'C§ = 500;
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr330);
                                                                                                                                       }
                                                                                                                                       §§goto(addr443);
                                                                                                                                    }
                                                                                                                                    §§goto(addr375);
                                                                                                                                 }
                                                                                                                                 §§goto(addr330);
                                                                                                                              }
                                                                                                                              §§goto(addr441);
                                                                                                                           }
                                                                                                                           §§goto(addr381);
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                     §§goto(addr352);
                                                                                                                  }
                                                                                                                  §§goto(addr441);
                                                                                                               }
                                                                                                               §§goto(addr361);
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                         §§goto(addr441);
                                                                                                      }
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                   addr303:
                                                                                                   §§goto(addr304);
                                                                                                   §§push(§§pop().objects);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                          §§push(§§pop().§`!&§);
                                                                                       }
                                                                                       §§goto(addr108);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr223:
                                                                                       this.§'C§ = this.§[%§;
                                                                                    }
                                                                                    §§goto(addr227);
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                     break;
                                                                     §§goto(addr209);
                                                                  }
                                                                  addr209:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr254);
                                                               }
                                                            }
                                                            addr200:
                                                         }
                                                         §§goto(addr443);
                                                      }
                                                      §§goto(addr220);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                continue loop3;
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr253);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr228);
                              }
                           }
                        }
                        §§goto(addr443);
                     }
                     addr262:
                  }
               }
               §§goto(addr297);
               while(!(_loc5_ && param1))
               {
                  §§goto(addr262);
               }
            }
         }
         §§goto(addr200);
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            §§push(this.§?!e§);
            if(!_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?!e§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§@;§);
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§@;§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§@;§);
                  if(!_loc3_)
                  {
                     §§push(this.§`j§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop().§`!&§);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop().§57§);
                           if(!_loc3_)
                           {
                              §§push(§§pop().ground);
                              if(_loc2_ || param1)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(this.§@;§);
                                       if(!(_loc3_ && param1))
                                       {
                                          addr177:
                                          §§push(§§pop() - this.§`j§.§`!&§.§57§.ground);
                                          if(_loc2_)
                                          {
                                             addr180:
                                             §§push(Number(§§pop()));
                                          }
                                          param1 = §§pop();
                                       }
                                       §§goto(addr180);
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§?!e§);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§?!e§ = §§pop();
                                       addr126:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§@;§);
                                          if(_loc2_ || this)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§@;§ = §§pop();
                                          continue loop5;
                                       }
                                    }
                                    addr182:
                                 }
                                 else
                                 {
                                    do
                                    {
                                       this.updateRenderer();
                                    }
                                    while(!_loc2_);
                                    
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(false);
                                          if(!(_loc3_ && this))
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr58);
                                       }
                                       §§goto(addr126);
                                    }
                                    else
                                    {
                                       while(_loc3_ && param1)
                                       {
                                       }
                                       addr63:
                                       addr58:
                                       return §§pop();
                                       §§push(true);
                                       addr63:
                                    }
                                 }
                                 while(_loc2_ || _loc3_)
                                 {
                                    continue loop1;
                                    §§goto(addr63);
                                 }
                                 §§goto(addr182);
                              }
                           }
                        }
                     }
                     §§goto(addr177);
                  }
                  §§goto(addr180);
               }
            }
         }
         while(true)
         {
            this.updateRenderer();
            §§goto(addr63);
         }
      }
      
      protected function §3!k§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§"a§ = null;
         if(!_loc2_)
         {
            if(this.§&[§ is §"a§)
            {
               if(!_loc2_)
               {
                  _loc1_ = §"a§(this.§&[§);
                  if(_loc3_)
                  {
                     this.§4!?§ = new b2Vec2(_loc1_.§0V§.x,_loc1_.§0V§.y);
                     if(_loc3_)
                     {
                        this.§+`§ = _loc1_.radius;
                     }
                  }
               }
               else
               {
                  addr87:
                  this.§+`§ = 1.5;
               }
            }
            else
            {
               this.§4!?§ = new b2Vec2(0,0);
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr87);
               }
            }
            return;
         }
         §§goto(addr87);
      }
      
      protected function §""§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§"!b§ = this.§`j§.§`!&§.§5-§.§#w§(this.mName);
            while(true)
            {
               if(this.§"!b§)
               {
                  this.§catch§();
                  if(_loc1_ || this)
                  {
                     §§goto(addr24);
                  }
               }
               if(!_loc1_)
               {
                  break;
               }
               if(_loc1_ || _loc1_)
               {
                  addr64:
                  this.§2"'§(null);
                  break;
               }
            }
            addr24:
            return;
         }
         §§goto(addr64);
      }
      
      public function §2"'§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§>!O§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§>!O§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
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
                           while(true)
                           {
                              §§push(this.§>!O§);
                              while(true)
                              {
                                 §§push(§§pop().parent == this.§#e§);
                                 if(_loc2_)
                                 {
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                 }
                                 if(_loc3_ && this)
                                 {
                                    continue loop3;
                                 }
                                 addr43:
                                 if(_loc3_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 §§push(this.§>!O§);
                                 if(_loc2_ || param1)
                                 {
                                    §§push(§§pop().pivotY);
                                    if(_loc2_ || _loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             §§push(this.§4!?§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                §§push(§§pop().y);
                                                if(_loc2_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§?!'§.§'!i§);
                                                         if(!_loc3_)
                                                         {
                                                            addr113:
                                                            §§pop().pivotY = §§pop() - §§pop() / §§pop();
                                                            addr112:
                                                            loop21:
                                                            while(!(_loc3_ && param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  this.updateRenderer();
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr133:
                                                                  addr196:
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§push(this.§>!O§);
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>!O§);
                                                                        addr139:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().pivotX);
                                                                           addr140:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§4!?§);
                                                                              addr142:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 addr143:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§?!'§.§'!i§);
                                                                                    addr145:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr146:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          addr147:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().pivotX = §§pop();
                                                                                             break loop21;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr164:
                                                                        §§push(this.§>!O§);
                                                                        if(_loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr43);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     addr122:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>!O§);
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                            }
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc2_ || this)
                                                               {
                                                                  if(_loc3_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr164);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§#e§.addChild(this.§>!O§);
                                                                     continue loop20;
                                                                  }
                                                                  addr191:
                                                               }
                                                               §§goto(addr196);
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr145);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr112);
                                             }
                                             §§goto(addr142);
                                          }
                                          §§goto(addr140);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr113);
                                 }
                                 §§goto(addr139);
                              }
                              continue loop2;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr191);
                        }
                        §§goto(addr122);
                     }
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = true;
         if(!(_loc5_ && this))
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               §§push(this.§="-§);
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§[%§ = 0;
                        addr169:
                        while(true)
                        {
                           §§push(false);
                           addr148:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr149:
                              while(!_loc5_)
                              {
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(this.§&U§);
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc5_ && param1))
                           {
                              this.§?!§(param1);
                           }
                           loop8:
                           for(; !(_loc5_ && param1); if(_loc5_ && this)
                           {
                              continue;
                           },if(_loc5_)
                           {
                              continue loop0;
                           },addr102:)
                           {
                              this.§9r§(param1);
                              loop9:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    addr106:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(§§pop())
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                this.§#!@§(param1,param2);
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                          addr27:
                                          return;
                                          addr68:
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop9;
                                       }
                                    }
                                    addr47:
                                    if(_loc6_ || param1)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr27);
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §?!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§=>§);
            loop0:
            while(true)
            {
               §§push(0);
               addr156:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr157:
                     §§push(this);
                     §§push(this.§=>§);
                     if(_loc2_ || _loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§=>§ = §§pop();
                     addr180:
                     §§push(this.§=>§);
                  }
                  else
                  {
                     §§push(this.§3?§);
                     while(!_loc3_)
                     {
                        continue loop0;
                        loop6:
                        while(true)
                        {
                           §§push(Math.random() * §2!S§);
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           §§push(§§pop() < param1);
                           loop7:
                           while(!_loc3_)
                           {
                              loop8:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       loop9:
                                       for(; _loc2_; §§push(Boolean(this.§`j§.mSlingShotState)),if(!_loc2_)
                                       {
                                          continue;
                                       },if(_loc3_)
                                       {
                                          continue loop7;
                                       })
                                       {
                                          §§pop();
                                          while(_loc2_ || this)
                                          {
                                             continue loop9;
                                             if(_loc2_ || this)
                                             {
                                                if(_loc3_ && _loc2_)
                                                {
                                                   addr152:
                                                }
                                                §§goto(addr19);
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          break loop8;
                                       }
                                       addr141:
                                    }
                                    while(§§pop())
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                this.§&5§();
                                                §§goto(addr49);
                                             }
                                             else
                                             {
                                                §§goto(addr157);
                                             }
                                          }
                                          this.§;2§();
                                          §§goto(addr152);
                                       }
                                       §§goto(addr49);
                                    }
                                    addr19:
                                    return;
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr80);
                              }
                              addr80:
                           }
                           while(true)
                           {
                              §§pop();
                              continue loop6;
                           }
                        }
                     }
                  }
                  addr149:
                  if(§§pop() <= 0)
                  {
                     §§goto(addr150);
                  }
                  §§goto(addr152);
               }
            }
         }
         §§goto(addr150);
      }
      
      public function §;2§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§=>§ = 0;
            do
            {
               this.§catch§();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §&5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§&U§)
            {
               loop0:
               while(true)
               {
                  this.§=>§ = §<!i§;
                  while(true)
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     if(!_loc2_)
                     {
                        this.§76§();
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr43);
               }
            }
            return;
         }
         addr43:
      }
      
      protected function §76§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§2"'§(this.§"!b§.getSubAnimation("blink").getFrame(0,this.§>!O§));
         }
      }
      
      public function §9r§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§3?§);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr144:
                     §§push(this);
                     §§push(this.§3?§);
                     if(_loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§3?§ = §§pop();
                     addr118:
                     addr152:
                     §§push(this.§3?§);
                     §§push(0);
                  }
                  else
                  {
                     §§push(this.§=>§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        if(!(_loc3_ && param1))
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §§push(§§pop() <= §§pop());
                           if(_loc2_ || param1)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             this.§?!h§();
                                          }
                                          else
                                          {
                                             §§goto(addr112);
                                          }
                                          §§goto(addr152);
                                       }
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          §§goto(addr144);
                                       }
                                       addr86:
                                       break;
                                       addr129:
                                    }
                                    §§push(§§pop() < param1);
                                    addr39:
                                    break;
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr111);
                                 }
                                 return;
                              }
                              addr111:
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr112:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr118);
                              }
                              addr111:
                              §§goto(addr144);
                           }
                           §§goto(addr111);
                        }
                        break;
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(_loc2_ || _loc3_)
                     {
                        this.§!d§();
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr144);
      }
      
      public function §!d§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3?§ = 0;
         }
         do
         {
            this.§catch§();
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      protected function §catch§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§2"'§(this.§"!b§.getFrame(0,this.§>!O§));
         }
      }
      
      public function §?!h§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§&U§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§3?§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§!d§();
                                 addr259:
                                 while(true)
                                 {
                                 }
                              }
                              addr257:
                           }
                           while(true)
                           {
                              §§push(this.§=>§);
                              if(!(_loc4_ || _loc3_))
                              {
                                 break;
                              }
                              §§push(0);
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                              if(§§pop() > §§pop())
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    if(!(_loc4_ || param2))
                                    {
                                       §§goto(addr263);
                                    }
                                    this.§;2§();
                                 }
                                 while(_loc4_ || param1)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§goto(addr20);
                                    }
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc4_)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       addr192:
                                       while(true)
                                       {
                                          §§push(§,4§.§!w§);
                                          if(!(_loc3_ && this))
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
                                             addr203:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                       addr192:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       this.§3?§ = §@2§;
                                       while(true)
                                       {
                                          this.§<A§();
                                          loop11:
                                          for(; _loc4_; if(_loc3_ && this)
                                          {
                                             continue;
                                          },if(!_loc3_)
                                          {
                                             §§push(param2);
                                             if(_loc4_ || this)
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(!(_loc3_ && param2))
                                                   {
                                                      addr83:
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc3_ && param2))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§goto(addr92);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr120);
                                                   }
                                                   §§goto(addr171);
                                                }
                                                §§goto(addr142);
                                             }
                                             §§goto(addr83);
                                          },§§goto(addr192))
                                          {
                                             §§push(this.§>%§);
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                addr171:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc4_ || this))
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(!§§pop())
                                                               {
                                                                  §"_§.§>,§(param1,this.§<!3§,§+!k§);
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!(_loc4_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        break loop14;
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && param2))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§="-§);
                                                                           if(_loc3_ && param2)
                                                                           {
                                                                              addr142:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop17;
                                                                                 }
                                                                                 addr173:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    continue loop20;
                                                                                 }
                                                                              }
                                                                              addr142:
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                           break loop17;
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     addr20:
                                                                     return;
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §"_§.§>,§(param1,this.§<!3§);
                                                                  §§goto(addr106);
                                                               }
                                                               §§goto(addr259);
                                                               addr92:
                                                            }
                                                            §§goto(addr142);
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                   if(_loc3_ && this)
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§goto(addr51);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr201);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               addr263:
               return;
            }
         }
         §§goto(addr192);
      }
      
      protected function §<A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2"'§(this.§"!b§.getSubAnimation("yell").getFrame(0,this.§>!O§));
         }
      }
      
      public function §#!@§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc7_)
         {
            §§push(this.§[%§);
            if(!_loc7_)
            {
               §§push(0);
               if(_loc6_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_ || param2)
                     {
                        §§push(this);
                        §§push(this.§[%§);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§[%§ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(this.§[%§);
                           if(_loc6_)
                           {
                              §§push(0);
                              if(_loc6_ || this)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§8!o§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          _loc4_.§8!o§ = _loc5_;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(this);
                                          §§push(this.§2",§);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§2",§ = §§pop();
                                       }
                                       loop42:
                                       while(true)
                                       {
                                          §§push(this.§>%§);
                                          loop19:
                                          while(true)
                                          {
                                             addr790:
                                             §§push(!§§pop());
                                             if(!§§pop())
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §§push(this.§8!o§);
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            addr767:
                                                            §§push(§§pop() < §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               continue loop20;
                                                            }
                                                            loop22:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr677:
                                                                  §§push(!this.§>%§);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr681:
                                                                     if(!§§pop())
                                                                     {
                                                                        addr652:
                                                                        if(§§pop())
                                                                        {
                                                                           addr654:
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§'U§(1.5);
                                                                                 addr664:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc7_ && param2))
                                                                                    {
                                                                                       loop48:
                                                                                       while(true)
                                                                                       {
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             this.updateRenderer();
                                                                                             addr305:
                                                                                             if(_loc6_ || this)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop35:
                                                                                             while(_loc7_ && this)
                                                                                             {
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && param2))
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         §§push(§&!,§.§5!a§(_loc3_,false));
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            if(!_loc7_)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  addr392:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && this))
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              addr419:
                                                                                                                              if(_loc6_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc6_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§;n§);
                                                                                                                                    if(!(_loc7_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§;n§);
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§pop().§2<§ = §§pop();
                                                                                                                                    continue loop35;
                                                                                                                                 }
                                                                                                                                 addr566:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§#K§);
                                                                                                                                    addr568:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§[%§);
                                                                                                                                       addr570:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          addr571:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§#K§);
                                                                                                                                             addr573:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(2);
                                                                                                                                                addr574:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   addr575:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      addr576:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         addr577:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            addr578:
                                                                                                                                                            §§push(§&!,§.§5!a§(_loc3_));
                                                                                                                                                            addr550:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr551:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  addr552:
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * this.§;n§);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§2<§ = §§pop();
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
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr313:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(360);
                                                                                                                                    §§push(§&!,§);
                                                                                                                                    §§push(this.§#K§);
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§[%§);
                                                                                                                                       if(_loc6_ || param2)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr335:
                                                                                                                                             §§push(§§pop() / this.§#K§);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop().§5!a§(§§pop()));
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * this.§#_§);
                                                                                                                                          }
                                                                                                                                          §§pop().§!&§ = §§pop();
                                                                                                                                          addr344:
                                                                                                                                          continue loop34;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr335);
                                                                                                                                    break loop35;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr550);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr508:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr509:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          continue loop17;
                                                                                                                                       }
                                                                                                                                       §§goto(addr571);
                                                                                                                                    }
                                                                                                                                    §§goto(addr576);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr508:
                                                                                                                        }
                                                                                                                        §§goto(addr551);
                                                                                                                     }
                                                                                                                     §§goto(addr509);
                                                                                                                  }
                                                                                                                  addr392:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§#K§);
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr566);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§#K§);
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(2);
                                                                                                                                       if(_loc6_ || param1)
                                                                                                                                       {
                                                                                                                                          addr456:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             addr457:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§[%§);
                                                                                                                                                if(!(_loc7_ && param2))
                                                                                                                                                {
                                                                                                                                                   if(!_loc7_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr575);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr498:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr508);
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr570);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr571);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr573);
                                                                                                                                                   }
                                                                                                                                                   addr498:
                                                                                                                                                }
                                                                                                                                                §§goto(addr551);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr456:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop26:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                             addr747:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                break loop22;
                                                                                                                                             }
                                                                                                                                             addr741:
                                                                                                                                             addr726:
                                                                                                                                             this.§[%§ = §7G§;
                                                                                                                                             addr745:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§[%§);
                                                                                                                                                if(_loc6_ || this)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * (Math.abs(this.§;n§) / 2));
                                                                                                                                                }
                                                                                                                                                §§pop().§[%§ = §§pop();
                                                                                                                                                addr721:
                                                                                                                                                this.§#K§ = this.§[%§;
                                                                                                                                                addr701:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§!&§ = 0;
                                                                                                                                                   addr695:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      this.§#_§ = 0;
                                                                                                                                                      addr690:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop48;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr745:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop26;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr568);
                                                                                                                                    }
                                                                                                                                    §§goto(addr570);
                                                                                                                                 }
                                                                                                                                 §§goto(addr508);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr573);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr574);
                                                                                                                  }
                                                                                                                  addr557:
                                                                                                               }
                                                                                                               §§goto(addr573);
                                                                                                            }
                                                                                                            §§goto(addr577);
                                                                                                         }
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr701);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               continue loop48;
                                                                                                            }
                                                                                                            continue loop42;
                                                                                                         }
                                                                                                         addr771:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               §§push(this.§8!o§);
                                                                                                               break loop21;
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         addr611:
                                                                                                         this.§2",§ = 0;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr313);
                                                                                          }
                                                                                          §§goto(addr88);
                                                                                       }
                                                                                    }
                                                                                    loop49:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr739:
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             §§goto(addr741);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr745);
                                                                                          }
                                                                                          addr785:
                                                                                       }
                                                                                       addr749:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2",§ = -1;
                                                                                          addr752:
                                                                                          while(true)
                                                                                          {
                                                                                             addr727:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§;n§ = this.§2",§;
                                                                                                continue loop49;
                                                                                             }
                                                                                             §§goto(addr739);
                                                                                          }
                                                                                          continue loop49;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr661:
                                                                           }
                                                                           §§goto(addr752);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§[%§ = 0;
                                                                           addr630:
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 this.§2<§ = 0;
                                                                                 addr616:
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    this.§!&§ = 0;
                                                                                    addr602:
                                                                                    if(_loc7_ && param2)
                                                                                    {
                                                                                       §§goto(addr630);
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr611);
                                                                                    }
                                                                                    §§goto(addr690);
                                                                                 }
                                                                                 §§goto(addr664);
                                                                              }
                                                                              §§goto(addr726);
                                                                           }
                                                                           §§goto(addr695);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        break loop22;
                                                                        addr685:
                                                                     }
                                                                     §§pop();
                                                                     §§push(param2);
                                                                     addr637:
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        continue loop19;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr771);
                                                            }
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr749);
                                                            }
                                                            §§goto(addr727);
                                                         }
                                                         addr781:
                                                         §§push(§§pop() > §§pop());
                                                         if(§§pop() > §§pop())
                                                         {
                                                            addr784:
                                                            §§pop();
                                                            §§goto(addr785);
                                                         }
                                                         §§goto(addr747);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr781);
                                                }
                                             }
                                             §§goto(addr769);
                                          }
                                       }
                                    }
                                    §§goto(addr739);
                                 }
                                 else
                                 {
                                    §§push(this.§[%§);
                                 }
                                 §§goto(addr557);
                              }
                              §§goto(addr456);
                           }
                           §§goto(addr568);
                        }
                        §§goto(addr661);
                     }
                     §§goto(addr752);
                  }
                  else
                  {
                     §§push(Math.random() * §92§);
                     if(_loc6_)
                     {
                        if(!_loc7_)
                        {
                           §§push(param1);
                           if(_loc6_ || this)
                           {
                              §§push(§§pop() < §§pop());
                              loop0:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop1:
                                 while(_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§pop();
                                          loop3:
                                          while(!_loc7_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§>%§);
                                                   if(_loc6_)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop6:
                                                               for(; !(_loc7_ && this); while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr206);
                                                                           }
                                                                           §§goto(addr133);
                                                                        }
                                                                        §§goto(addr790);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop6;
                                                               },§§goto(addr681))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop7:
                                                                  while(!(_loc7_ && param1))
                                                                  {
                                                                     §§pop();
                                                                     loop8:
                                                                     while(!_loc7_)
                                                                     {
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(this.§="-§);
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    addr206:
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_ || param2)
                                                                                          {
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         §§push(this.§12§);
                                                                                                         if(_loc6_ || param2)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            continue loop10;
                                                                                                         }
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      §§goto(addr578);
                                                                                                   }
                                                                                                   break;
                                                                                                   addr142:
                                                                                                   if(_loc7_ && param2)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc6_ || param2)
                                                                                                      {
                                                                                                         this.§'U§();
                                                                                                         addr160:
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            if(!(_loc6_ || param2))
                                                                                                            {
                                                                                                               §§goto(addr305);
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                         addr88:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr654);
                                                                                                   }
                                                                                                   §§goto(addr616);
                                                                                                }
                                                                                                §§goto(addr552);
                                                                                             }
                                                                                             §§goto(addr790);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§goto(addr677);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr784);
                                                                        }
                                                                        §§goto(addr685);
                                                                     }
                                                                     §§goto(addr602);
                                                                  }
                                                                  §§goto(addr645);
                                                               }
                                                               continue loop1;
                                                            }
                                                            addr243:
                                                         }
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   §§goto(addr637);
                                                }
                                                §§goto(addr721);
                                             }
                                             §§goto(addr419);
                                          }
                                          §§goto(addr344);
                                       }
                                    }
                                    §§goto(addr243);
                                 }
                                 §§goto(addr781);
                              }
                           }
                           §§goto(addr498);
                        }
                        §§goto(addr457);
                     }
                  }
                  §§goto(addr392);
               }
               §§goto(addr456);
            }
            §§goto(addr576);
         }
         §§goto(addr695);
      }
      
      public function §'U§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§&U§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || _loc3_))
            {
               continue;
            },§§goto(addr199))
            {
               loop1:
               while(true)
               {
                  this.§8!o§ = 0;
                  loop2:
                  while(true)
                  {
                     this.§[%§ = §7G§;
                     loop3:
                     while(true)
                     {
                        this.§2<§ = 0;
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(0.75);
                           if(!_loc3_)
                           {
                              §§push(Math.random() * 1.5);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(_loc2_ || _loc3_)
                                    {
                                    }
                                    addr296:
                                    §§pop().§;n§ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       this.§2",§ = this.§;n§;
                                       addr266:
                                       loop6:
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(this.§[%§);
                                          if(_loc2_ || _loc2_)
                                          {
                                             §§push(§§pop() * (Math.abs(this.§;n§) / 3));
                                          }
                                          §§pop().§[%§ = §§pop();
                                          loop7:
                                          while(!_loc3_)
                                          {
                                             this.§#K§ = this.§[%§;
                                             loop8:
                                             while(_loc2_)
                                             {
                                                §§push(this.mName);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop() == "BIRD_WHITE");
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc2_ || _loc3_))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr210:
                                                                     addr184:
                                                                     loop14:
                                                                     while(!_loc3_)
                                                                     {
                                                                        §§push(§§pop() == "BIRD_BLACK");
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           addr218:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr219:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(_loc3_ && _loc2_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§goto(addr184);
                                                                                    §§push(this.mName);
                                                                                    continue loop7;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           addr144:
                                                                           if(!(_loc2_ || this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              if(this.§[%§ >= 350)
                                                                              {
                                                                                 §§push(this);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(Math.random() > 0.5)
                                                                                    {
                                                                                       addr69:
                                                                                       §§push(1);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc3_ && param1)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr82:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§pop().§#_§ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                             §§push(this);
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(Math.random() <= 0.5)
                                                                                                {
                                                                                                   §§push(Number(0));
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             §§push(this.§#_§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                }
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          addr101:
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             if(!(_loc2_ || this))
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr120:
                                                                                                break loop0;
                                                                                             }
                                                                                             this.§#_§ = 0;
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       §§goto(addr210);
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§push(-1);
                                                                                    §§goto(addr82);
                                                                                 }
                                                                                 §§goto(addr69);
                                                                              }
                                                                              §§goto(addr101);
                                                                           }
                                                                           §§goto(addr219);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mName);
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                               }
                                                               §§goto(addr151);
                                                            }
                                                            addr19:
                                                            return;
                                                            addr199:
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 §§push(param1);
                              }
                              §§push(§§pop() * §§pop());
                           }
                           §§goto(addr296);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr266);
      }
      
      public function updateRenderer() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§`j§.§,j§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§#e§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§%!3§);
                     loop2:
                     while(true)
                     {
                        §§push(§?!'§.§'!i§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop4:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr294:
                              loop24:
                              while(true)
                              {
                                 §§push(this.§#e§);
                                 loop25:
                                 while(_loc1_ || _loc1_)
                                 {
                                    §§push(this.§?!e§);
                                    loop26:
                                    while(_loc1_ || _loc1_)
                                    {
                                       addr264:
                                       §§push(this.§2<§);
                                       loop16:
                                       while(true)
                                       {
                                          §§push(§§pop() + §§pop());
                                          while(true)
                                          {
                                             §§push(§?!'§.§'!i§);
                                             loop18:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                loop19:
                                                while(true)
                                                {
                                                   §§pop().y = §§pop();
                                                   loop20:
                                                   while(true)
                                                   {
                                                      loop21:
                                                      while(true)
                                                      {
                                                         §§push(this.§#e§);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               continue loop25;
                                                            }
                                                            §§push(this.§!&§);
                                                            if(_loc1_)
                                                            {
                                                               addr44:
                                                               §§push(this.§^!-§);
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           if(!(_loc1_ || _loc2_))
                                                                           {
                                                                              continue loop26;
                                                                           }
                                                                           §§push(§§pop() / 180);
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              addr84:
                                                                              §§push(§§pop() * Math.PI);
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§?!'§.§'!i§);
                                                                                    addr235:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                    }
                                                                                 }
                                                                                 addr233:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr177:
                                                                                 while(_loc1_ || _loc2_)
                                                                                 {
                                                                                    if(!(_loc1_ || this))
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop24;
                                                                                       }
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 addr177:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 continue loop0;
                                                                              }
                                                                           }
                                                                           §§goto(addr84);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr163:
                                                                           while(_loc1_)
                                                                           {
                                                                              §§push(§?!'§.§'!i§);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(_loc2_ && _loc2_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§push(§§pop() / §§pop());
                                                                                 §§goto(addr44);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§2<§);
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop() * Math.cos((this.§^!-§ + 90) / 180 * Math.PI));
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr233);
                                                                                    addr138:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§push(§§pop() * Math.sin((this.§^!-§ + 90) / 180 * Math.PI));
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr163);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr235);
                                                                           }
                                                                           addr163:
                                                                           addr209:
                                                                        }
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr84);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr162);
                                                                  }
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            §§goto(addr84);
                                                         }
                                                         else
                                                         {
                                                            addr121:
                                                            while(_loc1_ || this)
                                                            {
                                                               §§push(this.§?!e§);
                                                               if(_loc1_)
                                                               {
                                                                  §§push(this.§2<§);
                                                                  if(_loc1_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§goto(addr138);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr162);
                                                               }
                                                               §§goto(addr177);
                                                               continue loop21;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr121);
                                                            }
                                                            addr121:
                                                            addr207:
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      continue loop25;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(this.§#e§);
            }
            §§goto(addr207);
         }
         §§goto(addr294);
      }
      
      public function final() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§12§ = true;
            while(true)
            {
               this.§>%§ = false;
               addr113:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               this.§2<§ = 0;
               while(true)
               {
                  this.§!&§ = 0;
                  loop8:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc1_ || this))
                        {
                           break;
                        }
                        this.§2",§ = 0;
                        continue;
                        addr72:
                     }
                     addr99:
                     addr162:
                     while(true)
                     {
                        if(_loc1_ || this)
                        {
                           addr106:
                           if(_loc2_ && _loc1_)
                           {
                              break;
                           }
                           §§goto(addr113);
                        }
                        addr142:
                        while(true)
                        {
                           this.§'C§ = 0;
                           break loop8;
                        }
                     }
                     while(true)
                     {
                        this.§="-§ = false;
                        addr157:
                        while(true)
                        {
                           this.§8!o§ = 0;
                           §§goto(addr142);
                           break loop8;
                        }
                        §§goto(addr106);
                     }
                  }
                  while(true)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        this.§[%§ = 0;
                        §§goto(addr125);
                     }
                     break;
                     §§goto(addr72);
                  }
                  §§goto(addr157);
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr162);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§%!3§) * (param1 - this.§%!3§) + (param2 - this.§?!e§) * (param2 - this.§?!e§));
         if(!(_loc4_ && param1))
         {
            §§push(_loc3_);
            §§push(this.§+`§);
            if(!_loc4_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc4_)
               {
                  §§push(true);
                  if(_loc5_ || _loc3_)
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
         }
         §§goto(addr86);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(this.§%!3§);
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
                              addr158:
                              while(true)
                              {
                                 §§push(this.§%!3§);
                                 addr118:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr119:
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       addr120:
                                       while(!(_loc5_ && this))
                                       {
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           addr157:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           loop10:
                           for(; _loc6_; loop13:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc5_ && param3))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§pop();
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(this.§?!e§);
                                          if(!(_loc5_ && param2))
                                          {
                                             §§push(param2);
                                             if(!(_loc5_ && param3))
                                             {
                                                if(_loc5_ && param3)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(§§pop() <= §§pop());
                                                if(!_loc6_)
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   continue loop13;
                                                }
                                                if(!_loc5_)
                                                {
                                                   break loop13;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      continue loop13;
                                                   }
                                                   §§goto(addr119);
                                                }
                                                addr84:
                                             }
                                             §§goto(addr120);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr118);
                                             }
                                             addr64:
                                          }
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          §§goto(addr132);
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 break;
                              }
                              continue loop10;
                           },return §§pop())
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§pop();
                                 addr133:
                                 while(_loc6_ || param1)
                                 {
                                 }
                                 §§goto(addr158);
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(!(_loc6_ || this))
               {
                  continue;
               }
               §§goto(addr84);
               §§push(param1);
            }
         }
         while(true)
         {
            §§goto(addr64);
         }
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = false;
         if(!_loc6_)
         {
            §§push(this.§%!3§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr167:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr168:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc5_ || param1)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              addr153:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(true);
                                       addr155:
                                       loop6:
                                       while(true)
                                       {
                                          if(_loc5_ || param3)
                                          {
                                             _loc4_ = §§pop();
                                             while(true)
                                             {
                                                addr113:
                                                loop9:
                                                while(!(_loc6_ && param2))
                                                {
                                                   this.§?!e§ = param2;
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.§!&§ = param3;
                                                      while(_loc5_)
                                                      {
                                                         this.§'C§ = 100;
                                                         loop12:
                                                         while(true)
                                                         {
                                                            this.updateRenderer();
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     return;
                                                                  }
                                                                  addr21:
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop9;
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr188:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop0;
                                             }
                                             addr188:
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§%!3§ = param1;
                                    §§goto(addr113);
                                 }
                              }
                              addr144:
                              §§push(!§§pop());
                              if(!(_loc6_ && this))
                              {
                                 continue;
                              }
                              §§goto(addr155);
                           }
                        }
                     }
                     §§goto(addr188);
                  }
               }
            }
            addr166:
         }
         while(true)
         {
            §§push(this.§?!e§);
            if(!_loc6_)
            {
               §§push(param2);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc6_)
                  {
                     if(_loc5_ || param1)
                     {
                        §§goto(addr144);
                     }
                     else
                     {
                        §§goto(addr168);
                     }
                  }
                  §§goto(addr153);
               }
               else
               {
                  §§goto(addr167);
               }
            }
            else
            {
               §§goto(addr166);
            }
            §§goto(addr167);
         }
      }
      
      public function get § for§() : Number
      {
         return this.§[%§;
      }
      
      public function get §1!,§() : Number
      {
         return this.§'C§;
      }
      
      public function set §1!,§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'C§ = param1;
         }
      }
      
      public function get §["+§() : Number
      {
         return this.§`+§;
      }
      
      public function get §?!4§() : Boolean
      {
         return this.§>%§;
      }
      
      public function get radius() : Number
      {
         return this.§+`§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§#e§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §["+§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`+§ = param1;
         }
      }
      
      public function get §3! §() : Number
      {
         return this.§`!V§;
      }
      
      public function set §3! §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`!V§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§6!r§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§%!3§;
      }
      
      public function get y() : Number
      {
         return this.§?!e§;
      }
      
      public function get §[u§() : Number
      {
         return this.§#!H§;
      }
      
      public function get §[]§() : Number
      {
         return this.§>!n§;
      }
   }
}
