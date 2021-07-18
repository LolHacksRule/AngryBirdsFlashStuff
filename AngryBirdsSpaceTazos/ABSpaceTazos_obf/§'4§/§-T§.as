package §'4§
{
   import §"!&§.§8X§;
   import §"!&§.§="A§;
   import §"!&§.§=C§;
   import §"!&§.set;
   import §0N§.§8!z§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §]">§.§1!0§;
   
   public class §-T§
   {
      
      public static const §7!D§:String = "ChannelSlingshot";
      
      public static const §8!g§:Number = 900;
      
      public static const §%!d§:Number = 200;
      
      public static const §4!6§:Number = 200;
      
      public static const §=x§:Number = 1500;
      
      public static const §9+§:Number = 5000;
      
      public static const §8N§:Number = 1000;
      
      public static const §[t§:Number = 1000;
      
      public static const §;x§:Number = 46.25;
      
      public static const §@!z§:Number = 52.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §7!D§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §8!g§ = 900;
               addr130:
               while(true)
               {
                  §%!d§ = 200;
                  addr125:
                  while(true)
                  {
                     §4!6§ = 200;
                     addr110:
                     while(true)
                     {
                        §=x§ = 1500;
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      protected var mName:String;
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §#!O§:Number;
      
      protected var §0!j§:Number;
      
      protected var §%!Y§:Number;
      
      protected var §0!$§:Number;
      
      private var §'!%§:§=C§;
      
      protected var §1"3§:Number;
      
      protected var §6!<§:Number = 1;
      
      private var §]!$§:Sprite;
      
      protected var §]!k§:§#r§;
      
      private var §]"E§:DisplayObject;
      
      protected var §42§:§3!n§;
      
      private var §?!1§:Number;
      
      protected var §&"G§:Boolean = false;
      
      private var §87§:Boolean = false;
      
      protected var §@!J§:Boolean = false;
      
      private var §`![§:Number;
      
      private var §"F§:Number = 0;
      
      private var §>+§:Number = 0;
      
      private var §?"F§:Number = 0;
      
      private var §,!7§:Number = 1000;
      
      private var §!!Y§:Number;
      
      private var §+!&§:Number;
      
      private var §,_§:int;
      
      private var §40§:Number = 0;
      
      protected var §5d§:Number;
      
      protected var §9]§:Number;
      
      private var §[" §:Number = 1;
      
      private var §4;§:Number = 0;
      
      private var §0L§:b2Vec2;
      
      private var §=T§:Number = 1;
      
      private var §!!8§:set;
      
      protected var §7!h§:§8X§;
      
      protected var §6!x§:Boolean = true;
      
      public function §-T§(param1:§3!n§, param2:Sprite, param3:String, param4:§8X§, param5:Number, param6:Number, param7:Number = 0.0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7!h§ = param4;
               while(true)
               {
                  this.§42§ = param1;
                  addr231:
                  while(true)
                  {
                     this.§]!$§ = param2;
                     addr216:
                     while(true)
                     {
                        this.mName = param3;
                        continue loop0;
                     }
                  }
                  addr63:
                  if(_loc8_ && param1)
                  {
                     continue;
                  }
                  this.§-g§();
                  addr70:
                  if(!(_loc8_ && param3))
                  {
                     addr34:
                     if(_loc9_ || param2)
                     {
                        addr41:
                        if(!_loc8_)
                        {
                           addr43:
                           if(!_loc9_)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§""4§ = param5;
                                 loop7:
                                 while(true)
                                 {
                                    this.§%W§ = param6;
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(param7);
                                       if(_loc9_)
                                       {
                                          §§push(§§pop() / Math.PI);
                                          if(_loc9_ || param3)
                                          {
                                             addr172:
                                             §§push(§§pop() * 180);
                                          }
                                          §§pop().§#!O§ = §§pop();
                                          while(_loc9_)
                                          {
                                             this.§0!$§ = this.§#!O§;
                                             while(true)
                                             {
                                                this.§0!j§ = param5;
                                                addr150:
                                                while(true)
                                                {
                                                   this.§%!Y§ = param6;
                                                   addr138:
                                                   while(true)
                                                   {
                                                      if(_loc9_ || param2)
                                                      {
                                                         this.§&"G§ = false;
                                                         loop13:
                                                         while(_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               this.§87§ = false;
                                                               while(true)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.§1"3§ = 0;
                                                                     continue;
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr199:
                                                      while(true)
                                                      {
                                                         this.§'!%§ = param4.soundResource;
                                                         continue loop6;
                                                      }
                                                      §§goto(addr41);
                                                   }
                                                   §§goto(addr43);
                                                }
                                                if(_loc8_ && this)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr63);
                                             }
                                             loop16:
                                             while(!(_loc8_ && param1))
                                             {
                                                this.§5d§ = 0;
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      this.§>y§();
                                                      §§goto(addr49);
                                                   }
                                                   §§goto(addr150);
                                                   §§goto(addr34);
                                                }
                                                continue loop8;
                                             }
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                              }
                           }
                           return;
                        }
                        §§goto(addr138);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr49);
               }
            }
         }
         §§goto(addr199);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]!$§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr70:
                     this.§]!$§.dispose();
                     do
                     {
                        this.§]!$§ = null;
                     }
                     while(_loc1_);
                     
                     addr71:
                  }
                  §§goto(addr71);
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function get levelItem() : §8X§
      {
         return this.§7!h§;
      }
      
      public function §[k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&"G§ = param1;
            while(!this.§#!D§)
            {
               if(_loc2_ || this)
               {
                  this.§""4§ = this.§0!j§;
               }
               while(true)
               {
                  this.§%W§ = this.§%!Y§;
                  addr64:
                  while(!_loc3_)
                  {
                  }
               }
               addr51:
               if(_loc2_ || _loc3_)
               {
                  this.updateRenderer();
                  addr58:
                  if(_loc3_ && this)
                  {
                     while(!_loc3_)
                     {
                        §§goto(addr51);
                        §§goto(addr58);
                     }
                     §§goto(addr64);
                     addr49:
                  }
                  break;
               }
            }
            return;
         }
         while(true)
         {
            this.§1"3§ = this.§#!O§;
            §§goto(addr49);
         }
      }
      
      public function set §6!q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6!x§ = param1;
         }
      }
      
      public function get §`!$§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.name.toUpperCase() == "BIRD_GREEN")
            {
               if(_loc2_ || this)
               {
                  §§push(§@!z§);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  return §;x§;
               }
               return §§pop();
            }
         }
         §§goto(addr60);
      }
      
      public function § !S§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§87§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§&"G§);
                           if(_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 continue loop1;
                              }
                              if(_loc3_)
                              {
                                 continue loop0;
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
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§6!<§);
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
                                                this.§?"F§ = 0;
                                                loop8:
                                                while(true)
                                                {
                                                   this.§40§ = 0;
                                                   loop9:
                                                   for(; _loc2_; while(_loc2_ || _loc2_)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§%W§);
                                                      if(_loc2_ || this)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr260:
                                                            §§push(§§pop() / 50);
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               addr252:
                                                               §§push(this.§`![§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() / §8!g§);
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                            }
                                                            §§pop().§%W§ = §§pop() - §§pop();
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr260);
                                                   })
                                                   {
                                                      this.§1"3§ = 0;
                                                      loop10:
                                                      while(true)
                                                      {
                                                         this.§+!&§ = 0;
                                                         loop11:
                                                         while(true)
                                                         {
                                                            this.§6!<§ = 0;
                                                            while(true)
                                                            {
                                                               addr72:
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  addr79:
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     this.updateRenderer();
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop24:
                                                                           while(!_loc3_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 this.§1"3§ = 0;
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§goto(addr406);
                                                                                    }
                                                                                    §§push(this);
                                                                                    §§push(this.§42§.angle);
                                                                                    if(!(_loc3_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() / Math.PI);
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          addr60:
                                                                                          §§push(§§pop() * 180);
                                                                                       }
                                                                                       §§pop().§#!O§ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr65:
                                                                                             if(_loc2_ || this)
                                                                                             {
                                                                                                §§goto(addr72);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      this.§""4§ = this.§42§.x;
                                                                                                      loop22:
                                                                                                      for(; _loc2_; while(_loc3_ && _loc2_)
                                                                                                      {
                                                                                                         continue loop22;
                                                                                                      },addr123:,if(_loc2_)
                                                                                                      {
                                                                                                         this.§87§ = false;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc3_ && _loc2_))
                                                                                                               {
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            §§goto(addr123);
                                                                                                            §§goto(addr132);
                                                                                                         }
                                                                                                         addr132:
                                                                                                         addr102:
                                                                                                      },while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr184:
                                                                                                         §§push(this.§`![§);
                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc3_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         addr349:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1 = §§pop();
                                                                                                            addr350:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§""4§);
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§push(this.§42§.x);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - this.§""4§);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr340:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc3_)
                                                                                                                           {
                                                                                                                              addr338:
                                                                                                                              §§push(§§pop() / this.§`![§);
                                                                                                                           }
                                                                                                                           §§pop().§""4§ = §§pop() + §§pop();
                                                                                                                           break loop24;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr338);
                                                                                                               }
                                                                                                               §§goto(addr340);
                                                                                                            }
                                                                                                            §§goto(addr184);
                                                                                                         }
                                                                                                      },continue loop4)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§%W§ = this.§42§.y;
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                      }
                                                                                                      while(!_loc3_)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§1"3§);
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               §§push(360 - this.§1"3§);
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr222:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     addr220:
                                                                                                                     §§push(§§pop() / this.§`![§);
                                                                                                                  }
                                                                                                                  §§pop().§1"3§ = §§pop() + §§pop();
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr220);
                                                                                                         }
                                                                                                         §§goto(addr222);
                                                                                                      }
                                                                                                      §§goto(addr350);
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr65);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§`![§);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() - param1);
                                                                                                   }
                                                                                                   §§pop().§`![§ = §§pop();
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr102);
                                                                                       }
                                                                                       addr63:
                                                                                    }
                                                                                    §§goto(addr60);
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr84:
                                                                              }
                                                                              continue loop10;
                                                                              this.§[k§(true);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§%W§);
                                                                              if(_loc2_ || _loc2_)
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(this.§42§.y);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() - this.§%W§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr300:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             addr298:
                                                                                             §§push(§§pop() / this.§`![§);
                                                                                          }
                                                                                          §§pop().§%W§ = §§pop() + §§pop();
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr298);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                        }
                                                                        §§goto(addr84);
                                                                     }
                                                                     §§goto(addr63);
                                                                     §§goto(addr79);
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr349);
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
                  }
                  §§goto(addr394);
               }
            }
         }
         §§goto(addr170);
      }
      
      public function §8I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§87§ = true;
            while(true)
            {
               this.§`![§ = §8!g§;
            }
            addr98:
         }
         loop1:
         while(true)
         {
            this.§ @§(§=C§.§6!4§);
            while(this.§40§ != 0)
            {
               if(_loc1_)
               {
                  do
                  {
                     this.§40§ = 0;
                  }
                  while(_loc1_);
                  
               }
               else
               {
                  addr73:
               }
               if(!_loc2_)
               {
                  continue;
               }
               continue loop1;
            }
            return;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§1!0§ = null;
         if(_loc4_)
         {
            §§push(this.§&"G§);
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
                           §§push(this.§5d§);
                           while(true)
                           {
                              §§push(0);
                              addr276:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 addr277:
                                 while(_loc4_)
                                 {
                                 }
                                 continue loop1;
                              }
                              addr178:
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(0);
                              if(!(_loc5_ && param1))
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr201:
                                       if(!(_loc5_ && param1))
                                       {
                                          addr220:
                                          §§push(this.§?"F§);
                                          if(_loc4_ || _loc2_)
                                          {
                                             addr228:
                                             §§push(0);
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   §§goto(addr236);
                                                }
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(!isNaN(this.§9]§))
                                                         {
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§42§);
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     §§push(§§pop().§-d§);
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop().objects);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop().§+!F§(this.§""4§,this.§9]§));
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              §§push(int(§§pop()));
                                                                           }
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 addr38:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc2_);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    if(§§pop() >= 0)
                                                                                    {
                                                                                       §§push(this.§42§);
                                                                                       break loop18;
                                                                                    }
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(param1);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(§§pop() / 100);
                                                                                       }
                                                                                       §§push(§§pop().applyGravity(§§pop()));
                                                                                       if(!(_loc5_ && this))
                                                                                       {
                                                                                          if(!(_loc4_ || param1))
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   this.§5d§ = -1;
                                                                                                   addr94:
                                                                                                   if(!(_loc4_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                   addr438:
                                                                                                   return;
                                                                                                   addr309:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                   addr236:
                                                                                                   this.§5d§ = this.§?"F§;
                                                                                                   §§goto(addr240);
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             §§goto(addr94);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             this.§5d§ = 0;
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   addr240:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(this.§42§.§-d§.§&+§.ground);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§9]§);
                                                                                                         }
                                                                                                         §§pop().applyGravity(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§5d§ = -1;
                                                                                                            loop12:
                                                                                                            while(!(_loc5_ && this))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§5d§);
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - param1);
                                                                                                                  }
                                                                                                                  §§pop().§5d§ = §§pop();
                                                                                                                  addr257:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop12;
                                                                                                                     }
                                                                                                                     §§push(this.§5d§);
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§goto(addr178);
                                                                                                                     }
                                                                                                                     §§goto(addr220);
                                                                                                                  }
                                                                                                                  §§goto(addr276);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr289:
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr438);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr94);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr94);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr94);
                                                                                 }
                                                                                 §§goto(addr277);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr314:
                                                                        _loc3_ = §§pop().getObject(_loc2_) as §1!0§;
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           addr417:
                                                                           addr434:
                                                                           addr435:
                                                                           if(_loc3_ && _loc3_.§8Z§)
                                                                           {
                                                                              this.§@!J§ = false;
                                                                              this.§5d§ = -1;
                                                                              addr409:
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§goto(addr437);
                                                                              }
                                                                              §§goto(addr438);
                                                                              addr431:
                                                                              addr418:
                                                                              addr411:
                                                                           }
                                                                           §§push(Boolean(_loc3_));
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr399:
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr402:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(_loc3_.§%!8§());
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr364:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         addr366:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  this.§@!J§ = false;
                                                                                                                  addr375:
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr340:
                                                                                                                     this.§5d§ = 2000;
                                                                                                                     addr344:
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§goto(addr431);
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                               }
                                                                                                               §§goto(addr402);
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         this.§5d§ = 500;
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  §§goto(addr340);
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr344);
                                                                                                      }
                                                                                                      §§goto(addr417);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             §§goto(addr399);
                                                                                          }
                                                                                          §§goto(addr364);
                                                                                       }
                                                                                       §§goto(addr409);
                                                                                    }
                                                                                    §§goto(addr434);
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              §§goto(addr435);
                                                                           }
                                                                           §§goto(addr436);
                                                                        }
                                                                        §§goto(addr411);
                                                                     }
                                                                     addr313:
                                                                     §§goto(addr314);
                                                                     §§push(§§pop().objects);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr313);
                                                            §§push(§§pop().§-d§);
                                                         }
                                                         §§goto(addr38);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr276);
                                          }
                                          while(true)
                                          {
                                             if(§§pop() > this.§42§.§-d§.§&+§.ground)
                                             {
                                                §§goto(addr289);
                                             }
                                             §§goto(addr243);
                                          }
                                          addr283:
                                       }
                                       while(true)
                                       {
                                          §§goto(addr283);
                                          §§goto(addr201);
                                       }
                                       addr281:
                                    }
                                    §§goto(addr236);
                                 }
                                 §§goto(addr438);
                              }
                              §§goto(addr228);
                           }
                        }
                     }
                  }
                  while(§§pop())
                  {
                     §§goto(addr281);
                  }
                  §§goto(addr438);
               }
            }
         }
         §§goto(addr201);
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this);
            §§push(this.§%W§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§%W§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§9]§);
               if(_loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§9]§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§9]§);
                  if(!_loc3_)
                  {
                     §§push(this.§42§);
                     if(!_loc3_)
                     {
                        §§push(§§pop().§-d§);
                        if(_loc2_ || param1)
                        {
                           §§push(§§pop().§&+§);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop().ground);
                              if(_loc2_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    do
                                    {
                                       this.updateRenderer();
                                    }
                                    while(!(_loc2_ || _loc3_));
                                    
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§push(false);
                                             if(!_loc3_)
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr47);
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§%W§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§%W§ = §§pop();
                                             addr151:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                continue loop3;
                                             }
                                          }
                                       }
                                       while(_loc3_ && param1)
                                       {
                                       }
                                       continue loop0;
                                    }
                                    addr64:
                                    while(true)
                                    {
                                       this.updateRenderer();
                                       continue loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§9]§);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(this.§42§);
                                       while(true)
                                       {
                                          §§push(§§pop().§-d§);
                                          addr140:
                                          while(true)
                                          {
                                             §§push(§§pop().§&+§);
                                             addr141:
                                             while(true)
                                             {
                                                §§push(§§pop().ground);
                                             }
                                          }
                                       }
                                       addr139:
                                    }
                                    addr150:
                                    while(true)
                                    {
                                       §§goto(addr151);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr150);
                                 }
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr141);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr150);
               }
               addr47:
               return §§pop();
            }
         }
         §§goto(addr64);
      }
      
      protected function §>y§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§="A§ = null;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§!!8§ is §="A§)
            {
               if(_loc2_ || _loc3_)
               {
                  _loc1_ = §="A§(this.§!!8§);
                  addr38:
                  if(!_loc3_)
                  {
                     this.§0L§ = new b2Vec2(_loc1_.§="+§.x,_loc1_.§="+§.y);
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§?!1§ = _loc1_.radius;
                     }
                  }
               }
               else
               {
                  addr101:
                  this.§?!1§ = 1.5;
               }
            }
            else
            {
               this.§0L§ = new b2Vec2(0,0);
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr101);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      protected function §-g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]!k§ = this.§42§.§-d§.animationManager.getAnimation(this.mName);
            while(true)
            {
               if(!this.§]!k§)
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr60:
                     this.§?k§(null);
                     break;
                  }
                  break;
               }
               this.§="F§();
               if(!_loc2_)
               {
                  break;
               }
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr20);
            }
            addr20:
            return;
         }
         §§goto(addr60);
      }
      
      public function §?k§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]"E§ = param1;
            loop0:
            while(true)
            {
               §§push(this.§]"E§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr113:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                        addr115:
                     }
                     else
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              do
                              {
                                 this.updateRenderer();
                              }
                              while(_loc3_);
                              
                              return;
                              addr28:
                              addr33:
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§]!$§.addChild(this.§]"E§);
                           }
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr75:
                     }
                  }
               }
            }
         }
         §§goto(addr33);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(!_loc6_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               §§push(this.§87§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§6!x§);
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    this.§^!,§(param1);
                                    addr129:
                                    while(true)
                                    {
                                       this.§""#§(param1);
                                       continue loop8;
                                    }
                                 }
                              }
                              §§goto(addr21);
                           }
                           break;
                           if(_loc5_ || param3)
                           {
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop0;
                        }
                     }
                     addr120:
                  }
                  §§goto(addr155);
               }
            }
         }
         §§goto(addr107);
      }
      
      public function §^!,§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§"F§);
            loop0:
            while(true)
            {
               §§push(0);
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§>+§);
                     loop2:
                     while(!(_loc2_ && _loc2_))
                     {
                        continue loop0;
                        loop10:
                        while(true)
                        {
                           §§push(Math.random() * §=x§);
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           §§push(§§pop() < param1);
                           loop4:
                           while(true)
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
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       addr108:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop6;
                                             }
                                             addr186:
                                             §§push(this.§"F§);
                                             break loop2;
                                             addr186:
                                          }
                                          §§goto(addr154);
                                       }
                                       continue loop10;
                                    }
                                 }
                                 §§goto(addr55);
                              }
                              addr144:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr145);
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        addr151:
                        §§push(0);
                        if(!_loc3_)
                        {
                           break;
                        }
                        if(§§pop() <= §§pop())
                        {
                           addr154:
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§"F§);
                                 if(_loc3_ || this)
                                 {
                                    §§push(§§pop() - param1);
                                 }
                                 §§pop().§"F§ = §§pop();
                                 §§goto(addr186);
                              }
                              addr163:
                           }
                           §§goto(addr113);
                        }
                        addr113:
                        this.§5",§();
                        addr158:
                        return;
                        §§goto(addr186);
                     }
                     continue;
                  }
                  §§goto(addr163);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §5",§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"F§ = 0;
         }
         do
         {
            this.§="F§();
         }
         while(!_loc1_);
         
      }
      
      public function §-!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§6!x§)
            {
               loop0:
               while(true)
               {
                  this.§"F§ = §%!d§;
                  while(_loc1_)
                  {
                     this.§'?§();
                     if(!_loc2_)
                     {
                        if(!_loc2_)
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
         §§goto(addr67);
      }
      
      protected function §'?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?k§(this.§]!k§.getSubAnimation("blink").getFrame(0,this.§]"E§));
         }
      }
      
      public function §""#§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§>+§);
            loop0:
            while(true)
            {
               §§push(0);
               addr139:
               addr140:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§"F§);
                  continue loop0;
               }
               addr140:
               §§push(this);
               addr124:
               §§push(this.§>+§);
               if(_loc3_ || this)
               {
                  §§push(§§pop() - param1);
               }
               addr163:
               §§pop().§>+§ = §§pop();
               addr25:
               if(this.§>+§ <= 0)
               {
                  addr126:
                  if(!(_loc3_ || param1))
                  {
                     §§goto(addr140);
                  }
                  this.§1$§();
                  addr135:
               }
               return;
            }
         }
         §§goto(addr84);
      }
      
      public function §1$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§>+§ = 0;
         }
         do
         {
            this.§="F§();
         }
         while(!_loc2_);
         
      }
      
      protected function §="F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?k§(this.§]!k§.getFrame(0,this.§]"E§));
         }
      }
      
      public function § @§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§6!x§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§>+§);
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
                                 this.§1$§();
                                 §§goto(addr217);
                              }
                              addr215:
                           }
                           while(true)
                           {
                              §§push(this.§"F§);
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(_loc3_ && _loc3_)
                              {
                                 continue loop3;
                              }
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    this.§5",§();
                                    addr209:
                                    addr96:
                                    while(true)
                                    {
                                    }
                                    if(!(_loc3_ && this))
                                    {
                                       addr20:
                                       return;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc4_ || this)
                                 {
                                    if(§§pop() < 0)
                                    {
                                       while(_loc4_ || this)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§=C§.§=v§);
                                          if(_loc4_)
                                          {
                                             addr186:
                                             §§push(int(§§pop()));
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                addr187:
                                                while(true)
                                                {
                                                }
                                             }
                                             addr186:
                                          }
                                          §§goto(addr186);
                                       }
                                       addr217:
                                       addr238:
                                       while(_loc4_ || this)
                                       {
                                       }
                                       return;
                                       addr172:
                                    }
                                    while(true)
                                    {
                                       this.§>+§ = §4!6§;
                                       addr160:
                                       while(true)
                                       {
                                          this.§[!;§();
                                          addr153:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §§push(this.§&"G§);
                                                continue loop0;
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                       §§goto(addr187);
                                    }
                                 }
                                 §§goto(addr186);
                                 §§goto(addr209);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr238);
            }
         }
         §§goto(addr130);
      }
      
      protected function §[!;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?k§(this.§]!k§.getSubAnimation("yell").getFrame(0,this.§]"E§));
         }
      }
      
      public function §?!]§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!(_loc7_ && param2))
         {
            §§push(this.§?"F§);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc7_ && this))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(this);
                        §§push(this.§?"F§);
                        if(!(_loc7_ && param2))
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§?"F§ = §§pop();
                        if(!(_loc7_ && param2))
                        {
                           §§push(this.§?"F§);
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(!(_loc7_ && param2))
                              {
                                 addr77:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc6_ || this)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§,_§);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc6_ || this)
                                       {
                                          _loc4_.§,_§ = _loc5_;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§push(this);
                                          §§push(this.§+!&§);
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§+!&§ = §§pop();
                                          loop47:
                                          while(true)
                                          {
                                             §§push(this.§&"G§);
                                             loop39:
                                             do
                                             {
                                                §§push(!§§pop());
                                                addr790:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop40:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr792:
                                                         §§pop();
                                                         addr793:
                                                         while(true)
                                                         {
                                                            §§push(this.§,_§);
                                                            if(_loc6_)
                                                            {
                                                               §§push(2);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  while(!§§pop())
                                                                  {
                                                                     §§push(this.§&"G§);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr674:
                                                                           §§push(!§§pop());
                                                                           §§push(!§§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop40;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr678:
                                                                              §§pop();
                                                                              addr679:
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr651:
                                                                                    if(param2)
                                                                                    {
                                                                                       addr653:
                                                                                       this.§@G§(1.5);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§?"F§ = 0;
                                                                                       addr645:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          this.§40§ = 0;
                                                                                          addr631:
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             this.§1"3§ = 0;
                                                                                             this.§+!&§ = 0;
                                                                                             addr619:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   addr729:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§!!Y§ = this.§+!&§;
                                                                                                      addr734:
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         break loop40;
                                                                                                      }
                                                                                                      this.§?"F§ = §[t§;
                                                                                                      §§push(this);
                                                                                                      §§push(this.§?"F§);
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() * (Math.abs(this.§!!Y§) / 2));
                                                                                                      }
                                                                                                      §§pop().§?"F§ = §§pop();
                                                                                                      addr716:
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         this.§,!7§ = this.§?"F§;
                                                                                                         this.§1"3§ = 0;
                                                                                                         addr693:
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr716);
                                                                                                         }
                                                                                                         this.§6!<§ = 0;
                                                                                                         addr371:
                                                                                                         this.updateRenderer();
                                                                                                         return;
                                                                                                         addr568:
                                                                                                         addr688:
                                                                                                         addr701:
                                                                                                         addr374:
                                                                                                      }
                                                                                                      addr728:
                                                                                                      §§goto(addr728);
                                                                                                   }
                                                                                                }
                                                                                                addr754:
                                                                                             }
                                                                                             §§goto(addr568);
                                                                                             addr626:
                                                                                          }
                                                                                          §§goto(addr688);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr656:
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                addr740:
                                                                                                §§push(this.§+!&§);
                                                                                                addr741:
                                                                                                §§push(-1);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() < §§pop());
                                                                                                   addr742:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr743:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_ && param2)
                                                                                                            {
                                                                                                               continue loop47;
                                                                                                            }
                                                                                                            this.§+!&§ = -1;
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                         addr744:
                                                                                                      }
                                                                                                      §§goto(addr729);
                                                                                                   }
                                                                                                   §§goto(addr740);
                                                                                                }
                                                                                             }
                                                                                             addr785:
                                                                                          }
                                                                                          §§goto(addr568);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr656);
                                                                                 }
                                                                                 §§goto(addr744);
                                                                              }
                                                                              §§goto(addr701);
                                                                           }
                                                                           §§goto(addr651);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                           }
                                                                           addr784:
                                                                        }
                                                                        §§goto(addr785);
                                                                     }
                                                                     §§goto(addr674);
                                                                  }
                                                                  break loop40;
                                                                  addr769:
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop39;
                                                               }
                                                               addr774:
                                                            }
                                                            addr773:
                                                            while(true)
                                                            {
                                                               §§goto(addr774);
                                                            }
                                                         }
                                                         addr793:
                                                      }
                                                      §§goto(addr769);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr773);
                                                   }
                                                }
                                             }
                                             while(_loc7_ && param1);
                                             
                                             addr783:
                                             if(§§pop())
                                             {
                                                §§goto(addr784);
                                             }
                                             §§goto(addr742);
                                          }
                                       }
                                       else
                                       {
                                          loop46:
                                          while(true)
                                          {
                                             §§push(§8!z§.§@!I§(_loc3_,false));
                                             addr450:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr452:
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               §§push(this);
                                                               §§push(this.§!!Y§);
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(this.§!!Y§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                     }
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§pop().§40§ = §§pop();
                                                               addr375:
                                                               §§push(this);
                                                               §§push(360);
                                                               §§push(§8!z§);
                                                               §§push(this.§,!7§);
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  §§push(this.§?"F§);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        addr417:
                                                                        §§push(§§pop() / this.§,!7§);
                                                                     }
                                                                     §§push(§§pop() * §§pop().§@!I§(§§pop()));
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(§§pop() * this.§6!<§);
                                                                     }
                                                                     §§pop().§1"3§ = §§pop();
                                                                     addr426:
                                                                     §§goto(addr371);
                                                                  }
                                                               }
                                                               §§goto(addr417);
                                                               addr444:
                                                               addr465:
                                                            }
                                                            else
                                                            {
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(this.§,!7§);
                                                                  addr512:
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    addr528:
                                                                                    if(_loc7_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop46;
                                                                                 }
                                                                                 §§goto(addr793);
                                                                              }
                                                                              loop17:
                                                                              while(_loc6_ || this)
                                                                              {
                                                                                 §§push(this.§,!7§);
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    addr596:
                                                                                    loop19:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                addr600:
                                                                                                if(_loc6_ || param2)
                                                                                                {
                                                                                                   if(_loc6_ || param2)
                                                                                                   {
                                                                                                      §§push(§8!z§.§@!I§(_loc3_));
                                                                                                      loop23:
                                                                                                      for(; _loc6_; while(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§push(this.§?"F§);
                                                                                                            if(!(_loc7_ && this))
                                                                                                            {
                                                                                                               if(!(_loc7_ && _loc3_))
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                                  continue loop18;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         §§goto(addr583);
                                                                                                         §§goto(addr452);
                                                                                                      })
                                                                                                      {
                                                                                                         if(!(_loc7_ && param1))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               _loc3_ = §§pop();
                                                                                                               do
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§!!Y§);
                                                                                                                  }
                                                                                                                  §§pop().§40§ = §§pop();
                                                                                                               }
                                                                                                               while(_loc7_);
                                                                                                               
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr375);
                                                                                                                  addr549:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§,!7§);
                                                                                                                     addr583:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§?"F§);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr581:
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                            addr564:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§,!7§);
                                                                                                               addr574:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(2);
                                                                                                                  if(_loc7_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(this.§,!7§);
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     §§push(2);
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     §§goto(addr741);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr581);
                                                                                                            }
                                                                                                            addr572:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr734);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr693);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr740);
                                                                              addr524:
                                                                           }
                                                                           §§goto(addr574);
                                                                        }
                                                                        addr521:
                                                                     }
                                                                     §§goto(addr596);
                                                                     continue loop26;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr693);
                                                         }
                                                         addr462:
                                                      }
                                                      §§goto(addr564);
                                                   }
                                                   §§goto(addr477);
                                                }
                                                §§goto(addr524);
                                             }
                                          }
                                       }
                                       §§goto(addr793);
                                    }
                                    §§goto(addr374);
                                 }
                                 else
                                 {
                                    §§push(this.§?"F§);
                                 }
                                 §§goto(addr572);
                              }
                              §§goto(addr741);
                           }
                           §§goto(addr527);
                        }
                        §§goto(addr426);
                     }
                     §§goto(addr549);
                  }
                  else
                  {
                     §§push(Math.random() * §8N§);
                     if(_loc6_ || param2)
                     {
                        if(!_loc7_)
                        {
                           if(_loc6_)
                           {
                              §§push(param1);
                              if(_loc6_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() < §§pop());
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop1:
                                          while(!(_loc7_ && param2))
                                          {
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop7:
                                                      while(_loc6_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop8:
                                                            for(; !(_loc7_ && param1); if(_loc7_ && param2)
                                                            {
                                                               continue;
                                                            },§§goto(addr148))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§pop();
                                                                  loop9:
                                                                  for(; !(_loc7_ && _loc3_); while(_loc6_ || _loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@!J§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr117);
                                                                     }
                                                                     §§goto(addr790);
                                                                  })
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(this.§87§);
                                                                              loop10:
                                                                              while(!(_loc7_ && param1))
                                                                              {
                                                                                 if(!(_loc7_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc7_ && _loc3_))
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§push(!§§pop());
                                                                                          loop11:
                                                                                          while(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || param1)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop9;
                                                                                                         addr117:
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc6_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            if(!(_loc7_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            §§goto(addr790);
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         if(_loc6_ || _loc3_)
                                                                                                         {
                                                                                                            if(!(_loc7_ && param2))
                                                                                                            {
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     this.§@G§();
                                                                                                                     addr175:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        continue loop9;
                                                                                                                     }
                                                                                                                     if(!_loc7_)
                                                                                                                     {
                                                                                                                        if(_loc6_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc6_ || param2)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr626);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr528);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr444);
                                                                                                                  }
                                                                                                                  §§goto(addr645);
                                                                                                               }
                                                                                                               §§goto(addr465);
                                                                                                            }
                                                                                                            §§goto(addr693);
                                                                                                         }
                                                                                                         §§goto(addr175);
                                                                                                      }
                                                                                                      §§goto(addr693);
                                                                                                      addr148:
                                                                                                   }
                                                                                                }
                                                                                                continue loop7;
                                                                                                addr235:
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          while(_loc6_)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop9;
                                                                                          }
                                                                                          §§goto(addr674);
                                                                                          addr349:
                                                                                          addr262:
                                                                                       }
                                                                                       §§goto(addr792);
                                                                                    }
                                                                                    §§goto(addr770);
                                                                                 }
                                                                                 §§goto(addr743);
                                                                              }
                                                                              §§goto(addr651);
                                                                           }
                                                                           §§goto(addr653);
                                                                        }
                                                                        §§goto(addr545);
                                                                     }
                                                                     §§goto(addr426);
                                                                  }
                                                                  while(!(_loc7_ && this))
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(this.§&"G§);
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr679);
                                                                        }
                                                                        §§goto(addr631);
                                                                     }
                                                                     §§goto(addr619);
                                                                     §§goto(addr279);
                                                                  }
                                                                  addr279:
                                                                  §§goto(addr600);
                                                               }
                                                               §§goto(addr775);
                                                            }
                                                            §§goto(addr651);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      continue loop1;
                                                   }
                                                }
                                                §§goto(addr349);
                                             }
                                             §§goto(addr783);
                                          }
                                          §§goto(addr674);
                                       }
                                    }
                                    §§goto(addr585);
                                 }
                                 §§goto(addr512);
                              }
                              §§goto(addr521);
                           }
                           §§goto(addr527);
                        }
                        §§goto(addr450);
                     }
                  }
                  §§goto(addr462);
               }
               §§goto(addr77);
            }
            §§goto(addr527);
         }
         §§goto(addr248);
      }
      
      public function §@G§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§6!x§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr348:
               }
               while(true)
               {
                  this.§,_§ = 0;
                  loop3:
                  while(true)
                  {
                     this.§?"F§ = §[t§;
                     while(true)
                     {
                        this.§40§ = 0;
                        loop5:
                        while(true)
                        {
                           §§push(this);
                           §§push(0.75);
                           if(!_loc2_)
                           {
                              §§push(Math.random() * 1.5);
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(_loc3_)
                                    {
                                       addr309:
                                       §§push(§§pop() * param1);
                                    }
                                 }
                                 §§pop().§!!Y§ = §§pop();
                                 while(true)
                                 {
                                    this.§+!&§ = this.§!!Y§;
                                    continue loop5;
                                    addr180:
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    this.§6!<§ = 0;
                                    if(_loc3_)
                                    {
                                       §§goto(addr25);
                                    }
                                    §§goto(addr348);
                                 }
                              }
                           }
                           §§goto(addr309);
                        }
                        loop8:
                        for(; _loc3_ || this; if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        },§§goto(addr25))
                        {
                           this.§,!7§ = this.§?"F§;
                           loop9:
                           while(true)
                           {
                              §§push(this.mName);
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop() == "BIRD_WHITE");
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(§§pop());
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
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(this.§?"F§ < 350)
                                                      {
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     this.§6!<§ = 0;
                                                                     break;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.mName);
                                                                  if(_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop() == "RED_BIG");
                                                                  if(_loc2_)
                                                                  {
                                                                     addr217:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop14;
                                                                     }
                                                                     continue loop10;
                                                                     addr217:
                                                                  }
                                                                  if(!(_loc2_ && this))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr233:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                               }
                                                               continue loop10;
                                                            }
                                                            addr163:
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               §§goto(addr180);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.mName);
                                                               continue loop10;
                                                            }
                                                            addr234:
                                                         }
                                                         break;
                                                      }
                                                      §§push(this);
                                                      if(_loc3_ || param1)
                                                      {
                                                         if(Math.random() > 0.5)
                                                         {
                                                            addr80:
                                                            §§push(1);
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr93:
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§pop().§6!<§ = §§pop();
                                                            addr95:
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  §§push(this);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(Math.random() > 0.5)
                                                                     {
                                                                        addr38:
                                                                        §§push(this.§6!<§);
                                                                        if(!(_loc2_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc3_)
                                                                           {
                                                                              addr50:
                                                                           }
                                                                           addr53:
                                                                           §§pop().§6!<§ = §§pop();
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr95);
                                                                        }
                                                                        §§goto(addr50);
                                                                     }
                                                                     §§goto(addr53);
                                                                     §§push(Number(0));
                                                                  }
                                                                  §§goto(addr38);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            break;
                                                         }
                                                         §§push(-1);
                                                         §§goto(addr93);
                                                      }
                                                      §§goto(addr80);
                                                      §§goto(addr273);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                if(_loc2_)
                                                {
                                                   §§goto(addr190);
                                                }
                                                addr25:
                                                return;
                                                addr161:
                                             }
                                             §§goto(addr217);
                                          }
                                          continue;
                                          addr212:
                                       }
                                    }
                                 }
                                 §§goto(addr233);
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr234);
      }
      
      public function updateRenderer() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§42§.§7=§)
            {
               if(_loc1_ || _loc2_)
               {
                  addr279:
                  §§push(this.§]!$§);
                  while(true)
                  {
                     §§push(this.§""4§);
                     if(_loc1_)
                     {
                        addr297:
                        §§push(§^g§.§5!-§);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                        }
                        addr297:
                     }
                     addr298:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
                  addr291:
               }
               loop0:
               while(true)
               {
                  §§push(this.§]!$§);
                  loop1:
                  while(true)
                  {
                     §§push(this.§%W§);
                     loop2:
                     while(true)
                     {
                        §§push(this.§40§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           loop4:
                           while(true)
                           {
                              §§push(§^g§.§5!-§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§]!$§);
                                          if(!(_loc2_ && this))
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                §§push(this.§1"3§);
                                                if(!_loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         §§push(this.§#!O§);
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc1_ || _loc1_)
                                                            {
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(_loc2_ && _loc1_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(§§pop() / 180);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr92:
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           addr102:
                                                                           §§push(§§pop() * Math.PI);
                                                                           if(!_loc2_)
                                                                           {
                                                                              §§pop().rotation = §§pop();
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 if(_loc1_ || this)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 loop9:
                                                                                 while(_loc1_ || _loc1_)
                                                                                 {
                                                                                    if(!(_loc2_ && _loc2_))
                                                                                    {
                                                                                       §§push(this.§]!$§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          addr208:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§""4§);
                                                                                             addr210:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§40§);
                                                                                                addr212:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * Math.cos((this.§#!O§ + 90) / 180 * Math.PI));
                                                                                                   addr224:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc2_ && this))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr297);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                       addr123:
                                                                                    }
                                                                                    continue loop0;
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr201:
                                                                              §§pop().y = §§pop();
                                                                           }
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(!_loc1_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§push(§^g§.§5!-§);
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr239);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr102);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §§push(this.§40§);
                                                                           if(!(_loc2_ && this))
                                                                           {
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(§§pop() * Math.sin((this.§#!O§ + 90) / 180 * Math.PI));
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       addr195:
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr238);
                                                                                    }
                                                                                    §§goto(addr201);
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              §§goto(addr224);
                                                                           }
                                                                           §§goto(addr195);
                                                                        }
                                                                     }
                                                                     addr198:
                                                                     §§goto(addr200);
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(§^g§.§5!-§);
                                                                     addr134:
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            §§goto(addr92);
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr92);
                                             }
                                             else
                                             {
                                                §§goto(addr291);
                                             }
                                          }
                                          §§goto(addr123);
                                       }
                                       §§goto(addr298);
                                    }
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
               §§push(this.§]!$§);
            }
            §§goto(addr208);
         }
         §§goto(addr279);
      }
      
      public function §[!n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§@!J§ = true;
            loop0:
            while(true)
            {
               this.§&"G§ = false;
               loop1:
               while(true)
               {
                  this.§87§ = false;
                  loop2:
                  while(true)
                  {
                     this.§,_§ = 0;
                     while(true)
                     {
                        this.§5d§ = 0;
                        loop4:
                        while(!_loc1_)
                        {
                           this.§?"F§ = 0;
                           loop5:
                           for(; _loc2_; if(!(_loc2_ || this))
                           {
                              continue;
                           })
                           {
                              this.§?"F§ = 0;
                              while(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                                 while(!(_loc1_ && this))
                                 {
                                    this.§6!<§ = 0;
                                    if(_loc2_ || this)
                                    {
                                       addr40:
                                       if(_loc2_ || this)
                                       {
                                          return;
                                          addr47:
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          addr88:
                                          while(true)
                                          {
                                             this.§1"3§ = 0;
                                             continue loop8;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              continue loop4;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§+!&§ = 0;
            §§goto(addr52);
         }
         §§goto(addr47);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.§""4§) * (param1 - this.§""4§) + (param2 - this.§%W§) * (param2 - this.§%W§));
         if(!_loc5_)
         {
            §§push(_loc3_);
            §§push(this.§?!1§);
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc4_)
               {
                  §§push(true);
                  if(_loc4_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr80:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr80);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(this.§""4§);
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
                              addr158:
                              while(true)
                              {
                                 §§push(this.§""4§);
                                 addr123:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr124:
                                    while(true)
                                    {
                                       §§push(§§pop() <= §§pop());
                                       continue loop11;
                                    }
                                 }
                                 continue loop11;
                              }
                           }
                           addr157:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           while(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.§%W§);
                                       loop7:
                                       while(!_loc5_)
                                       {
                                          §§push(param1);
                                          while(true)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             if(!(_loc5_ && param1))
                                             {
                                                continue loop5;
                                             }
                                             addr102:
                                             addr102:
                                             while(_loc6_)
                                             {
                                                §§pop();
                                                if(_loc5_ && this)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc6_ || this)
                                                {
                                                   §§push(this.§%W§);
                                                   if(_loc5_ && this)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      §§push(param2);
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && this))
                                                         {
                                                            if(_loc6_ || this)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr102);
                                                               }
                                                               §§goto(addr57);
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr124);
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                   §§goto(addr123);
                                                   continue loop7;
                                                }
                                                §§goto(addr158);
                                             }
                                             §§goto(addr125);
                                          }
                                          continue loop5;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc5_ && this)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr102);
                                 }
                                 addr57:
                                 return §§pop();
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr157);
               }
            }
         }
         §§goto(addr158);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = false;
         if(_loc6_ || param2)
         {
            §§push(this.§""4§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr175:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr176:
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    addr161:
                                    if(!_loc5_)
                                    {
                                       addr151:
                                       §§push(true);
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!(_loc6_ || param2))
                                             {
                                                break;
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop0;
                                             }
                                             addr179:
                                          }
                                       }
                                       continue loop2;
                                       addr151:
                                    }
                                    while(true)
                                    {
                                    }
                                    addr161:
                                 }
                                 while(true)
                                 {
                                    this.§""4§ = param1;
                                    while(true)
                                    {
                                       this.§%W§ = param2;
                                       loop11:
                                       while(true)
                                       {
                                          this.§1"3§ = param3;
                                          while(_loc6_ || param1)
                                          {
                                             this.§5d§ = 100;
                                             loop13:
                                             while(true)
                                             {
                                                this.updateRenderer();
                                                while(true)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   continue loop13;
                                                   addr69:
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§goto(addr27);
                                                   }
                                                }
                                                §§goto(addr161);
                                             }
                                             if(!(_loc6_ || param3))
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                this.§42§.§`k§();
                                                §§goto(addr69);
                                             }
                                             §§goto(addr161);
                                          }
                                          continue loop0;
                                       }
                                       if(!(_loc6_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(_loc4_);
                                       if(_loc6_ || param3)
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc5_ && param1)
                                             {
                                                continue loop3;
                                             }
                                             if(§§pop())
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§goto(addr57);
                                                }
                                                §§goto(addr69);
                                             }
                                          }
                                          continue loop6;
                                          addr27:
                                          return;
                                       }
                                       §§goto(addr151);
                                    }
                                 }
                              }
                           }
                           addr146:
                        }
                        §§goto(addr179);
                     }
                  }
               }
            }
            addr174:
         }
         while(true)
         {
            §§push(this.§%W§);
            if(_loc6_)
            {
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc6_)
                  {
                     §§goto(addr146);
                     §§push(!§§pop());
                  }
                  §§goto(addr151);
               }
               else
               {
                  §§goto(addr175);
               }
            }
            else
            {
               §§goto(addr174);
            }
            §§goto(addr175);
         }
      }
      
      public function get §8!4§() : Number
      {
         return this.§?"F§;
      }
      
      public function get §&"3§() : Number
      {
         return this.§5d§;
      }
      
      public function set §&"3§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5d§ = param1;
         }
      }
      
      public function get § !K§() : Number
      {
         return this.§[" §;
      }
      
      public function get §#!D§() : Boolean
      {
         return this.§&"G§;
      }
      
      public function get radius() : Number
      {
         return this.§?!1§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set § !K§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§[" § = param1;
         }
      }
      
      public function get §@!Y§() : Number
      {
         return this.§4;§;
      }
      
      public function set §@!Y§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§4;§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=T§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get § "'§() : Number
      {
         return this.§0!j§;
      }
      
      public function get §=!q§() : Number
      {
         return this.§%!Y§;
      }
   }
}
