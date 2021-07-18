package §@V§
{
   import §%8§.§%!S§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §24§.§,"2§;
   import §2`§.§;!Q§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §@!"§.§@_§;
   import §@!E§.b2Vec2;
   
   public class §&#§
   {
      
      public static const §+H§:String = "ChannelSlingshot";
      
      public static const §5!,§:Number = 900;
      
      public static const §@""§:Number = 200;
      
      public static const §4"0§:Number = 200;
      
      public static const §=!O§:Number = 1500;
      
      public static const §^8§:Number = 5000;
      
      public static const §9x§:Number = 1000;
      
      public static const §9X§:Number = 1000;
      
      public static const § !f§:Number = 46.25;
      
      public static const §;!t§:Number = 52.5;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+H§ = "ChannelSlingshot";
            loop0:
            while(true)
            {
               §5!,§ = 900;
               while(true)
               {
                  §@""§ = 200;
                  continue loop0;
                  addr45:
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
            }
         }
         while(true)
         {
            §^8§ = 5000;
            §§goto(addr96);
         }
      }
      
      protected var mName:String;
      
      protected var §]!B§:Number;
      
      protected var §9=§:Number;
      
      protected var §4!G§:Number;
      
      protected var § n§:Number;
      
      protected var §#"&§:Number;
      
      protected var §'!U§:Number;
      
      private var §+>§:§89§;
      
      protected var §0!-§:Number;
      
      protected var §`!Y§:Number = 1;
      
      private var §&%§:Sprite;
      
      private var §]3§:Sprite;
      
      protected var §@!5§:§;!Q§;
      
      private var §"G§:DisplayObject;
      
      protected var §<V§:§0"§;
      
      private var §,Z§:Number;
      
      protected var §9!`§:Boolean = false;
      
      private var §+!<§:Boolean = false;
      
      protected var §;!d§:Boolean = false;
      
      private var §?!L§:Number;
      
      private var §]"&§:Number = 0;
      
      private var §+e§:Number = 0;
      
      private var §4L§:Number = 0;
      
      private var §2!h§:Number = 1000;
      
      private var §'H§:Number;
      
      private var §&!G§:Number;
      
      private var §4!_§:int;
      
      private var §;!U§:Number = 0;
      
      protected var §3I§:Number;
      
      protected var §3"5§:Number;
      
      private var §2!O§:Number = 1;
      
      private var §0R§:Number = 0;
      
      private var § "1§:b2Vec2;
      
      private var §2c§:Number = 1;
      
      private var §3![§:§[_§;
      
      protected var §93§:§@-§;
      
      protected var §6!e§:Boolean = true;
      
      private var §8!s§:int;
      
      public function §&#§(param1:§0"§, param2:Sprite, param3:String, param4:§@-§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§93§ = param4;
               loop1:
               while(true)
               {
                  this.§8!s§ = param8;
                  loop2:
                  while(true)
                  {
                     this.§<V§ = param1;
                     while(true)
                     {
                        this.§&%§ = param2;
                        continue loop1;
                        loop14:
                        while(_loc10_ || param1)
                        {
                           this.§+!<§ = false;
                           loop15:
                           for(; !(_loc9_ && this); if(!(_loc10_ || param1))
                           {
                              continue;
                           },§§goto(addr67))
                           {
                              this.§0!-§ = 0;
                              loop16:
                              while(true)
                              {
                                 this.§]"&§ = 0;
                                 loop17:
                                 while(true)
                                 {
                                    this.§3I§ = 0;
                                    addr72:
                                    loop18:
                                    for(; !(_loc9_ && this); while(true)
                                    {
                                       if(_loc10_ || this)
                                       {
                                          continue loop17;
                                       }
                                       continue loop18;
                                       addr67:
                                       this.§,&§();
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       if(_loc9_)
                                       {
                                          continue loop14;
                                       }
                                       if(_loc10_)
                                       {
                                          if(!_loc9_)
                                          {
                                             break loop16;
                                          }
                                          loop12:
                                          while(!(_loc9_ && param1))
                                          {
                                             if(!_loc9_)
                                             {
                                                this.§#"&§ = param6;
                                                while(!_loc9_)
                                                {
                                                   this.§9!`§ = false;
                                                   continue loop14;
                                                }
                                                while(true)
                                                {
                                                   this.§ n§ = param5;
                                                   continue loop12;
                                                }
                                                addr135:
                                                addr157:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§3![§ = param4.shape;
                                                   §§goto(addr216);
                                                }
                                                addr221:
                                             }
                                          }
                                          while(_loc10_)
                                          {
                                             if(_loc10_)
                                             {
                                                §§push(this);
                                                §§push(param7);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(§§pop() / Math.PI);
                                                   if(_loc10_ || param2)
                                                   {
                                                      §§push(§§pop() * 180);
                                                   }
                                                }
                                                §§pop().§4!G§ = §§pop();
                                                break loop15;
                                             }
                                             continue loop2;
                                             §§goto(addr142);
                                          }
                                          addr142:
                                          continue loop1;
                                          addr193:
                                       }
                                       §§goto(addr135);
                                    },continue loop15)
                                    {
                                       addr79:
                                       if(_loc10_ || param2)
                                       {
                                          this.§%=§();
                                          continue;
                                       }
                                       addr216:
                                       while(true)
                                       {
                                          if(!_loc9_)
                                          {
                                             this.§]!B§ = param5;
                                             break loop18;
                                          }
                                          break;
                                          §§goto(addr79);
                                       }
                                       while(true)
                                       {
                                          this.§+>§ = param4.soundResource;
                                          §§goto(addr208);
                                       }
                                       addr208:
                                    }
                                    while(true)
                                    {
                                       this.§9=§ = param6;
                                       §§goto(addr193);
                                       §§goto(addr72);
                                    }
                                    if(!(_loc9_ && param3))
                                    {
                                       if(!_loc9_)
                                       {
                                          continue loop15;
                                       }
                                       continue loop16;
                                    }
                                 }
                              }
                              return;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      public function get launchIndex() : int
      {
         return this.§8!s§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§8!s§ = param1;
         }
      }
      
      public function get §]![§() : Sprite
      {
         return this.§]3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§&%§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr95:
                     this.§&%§.dispose();
                     addr96:
                     while(true)
                     {
                        this.§&%§ = null;
                        addr70:
                        while(true)
                        {
                        }
                     }
                     addr96:
                  }
                  §§goto(addr96);
               }
               loop0:
               while(true)
               {
                  §§push(this.§]3§);
                  if(!(_loc2_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        addr62:
                        this.§]3§.dispose();
                     }
                     while(_loc1_)
                     {
                        this.§]3§ = null;
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        §§goto(addr96);
                     }
                     continue;
                  }
                  §§goto(addr62);
               }
               return;
            }
         }
         §§goto(addr95);
      }
      
      public function §^"6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§]3§)
            {
               loop0:
               while(true)
               {
                  this.§]3§ = new Sprite();
                  loop1:
                  while(true)
                  {
                     §§push(this.§]![§);
                     while(true)
                     {
                        §§push(this.§&%§);
                        while(true)
                        {
                           §§pop().x = §§pop().x;
                           while(true)
                           {
                              §§push(this.§]![§);
                              while(true)
                              {
                                 §§push(this.§&%§);
                                 addr69:
                                 addr80:
                                 while(true)
                                 {
                                    §§pop().y = §§pop().y;
                                    addr71:
                                    while(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr25);
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr25:
            while(true)
            {
               §§push(this.§]![§);
               if(_loc1_)
               {
                  continue loop5;
               }
               if(!_loc2_)
               {
                  continue loop2;
               }
               §§push(this.§&%§);
               if(!_loc1_)
               {
                  if(_loc1_)
                  {
                     continue loop3;
                  }
                  §§pop().rotation = §§pop().rotation;
                  if(!_loc1_)
                  {
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               else
               {
                  §§goto(addr69);
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"G§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr55);
            }
            §§pop().color = param1;
         }
         addr55:
         if(!(_loc2_ && param1))
         {
            §§push(this.§"G§);
         }
      }
      
      public function get levelItem() : §@-§
      {
         return this.§93§;
      }
      
      public function §8!7§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9!`§ = param1;
            while(!this.§&a§)
            {
               if(!_loc3_)
               {
                  this.§]!B§ = this.§ n§;
               }
               loop1:
               for(; _loc2_ || _loc2_; while(true)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     continue;
                  }
                  continue loop1;
               })
               {
                  while(true)
                  {
                     this.§9=§ = this.§#"&§;
                     addr64:
                     while(true)
                     {
                        this.§0!-§ = this.§4!G§;
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      public function set §??§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6!e§ = param1;
         }
      }
      
      public function get §+!4§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.name.toUpperCase() == "BIRD_GREEN")
            {
               if(!(_loc1_ && this))
               {
                  addr41:
                  §§push(§;!t§);
                  if(!(_loc1_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr60:
                  return § !f§;
               }
               return §§pop();
            }
            §§goto(addr60);
         }
         §§goto(addr41);
      }
      
      public function §<h§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§+!<§);
            if(!(_loc2_ && param1))
            {
               §§push(!§§pop());
               if(_loc3_ || this)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(this.§9!`§);
                           if(!(_loc2_ && param1))
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              addr440:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§goto(addr440);
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§`!Y§);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(0);
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop() != §§pop())
                                          {
                                             addr424:
                                             while(true)
                                             {
                                                this.§4L§ = 0;
                                                addr427:
                                                while(true)
                                                {
                                                   this.§;!U§ = 0;
                                                   loop25:
                                                   while(true)
                                                   {
                                                      this.§0!-§ = 0;
                                                      addr413:
                                                      while(true)
                                                      {
                                                         this.§&!G§ = 0;
                                                         continue loop25;
                                                      }
                                                   }
                                                }
                                             }
                                             addr424:
                                          }
                                          while(true)
                                          {
                                             §§push(Number(Math.min(param1,this.§?!L§)));
                                             loop6:
                                             while(!_loc2_)
                                             {
                                                param1 = §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      §§push(this);
                                                      §§push(this.§]!B§);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            §§push(this.§<V§.x);
                                                            if(!_loc2_)
                                                            {
                                                               §§push(§§pop() - this.§]!B§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  addr358:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr368:
                                                                     §§push(§§pop() / this.§?!L§);
                                                                  }
                                                                  §§pop().§]!B§ = §§pop() + §§pop();
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§9=§);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this.§<V§.y);
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() - this.§9=§);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 addr327:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    addr325:
                                                                                    §§push(§§pop() / this.§?!L§);
                                                                                 }
                                                                                 §§pop().§9=§ = §§pop() + §§pop();
                                                                                 loop9:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§9=§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc3_ || _loc2_)
                                                                                       {
                                                                                          addr284:
                                                                                          §§push(§§pop() / 50);
                                                                                          if(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             addr271:
                                                                                             §§push(this.§?!L§);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() / §5!,§);
                                                                                             }
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          §§pop().§9=§ = §§pop() - §§pop();
                                                                                          loop10:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§0!-§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(360 - this.§0!-§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§goto(addr243);
                                                                                                   }
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                }
                                                                                                addr243:
                                                                                                §§goto(addr244);
                                                                                             }
                                                                                             addr244:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                                §§push(this.§?!L§);
                                                                                             }
                                                                                             §§pop().§0!-§ = §§pop() + §§pop();
                                                                                             loop11:
                                                                                             for(; _loc3_; while(_loc3_ || this)
                                                                                             {
                                                                                                this.§+!<§ = false;
                                                                                                §§goto(addr125);
                                                                                                §§goto(addr106);
                                                                                             })
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§?!L§);
                                                                                                if(!(_loc2_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§?!L§ = §§pop();
                                                                                                loop12:
                                                                                                for(; !(_loc2_ && param1); while(true)
                                                                                                {
                                                                                                   if(!(_loc3_ || _loc2_))
                                                                                                   {
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                   if(!(_loc2_ && _loc3_))
                                                                                                   {
                                                                                                      this.§8!7§(true);
                                                                                                      §§goto(addr106);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr413);
                                                                                                   }
                                                                                                },§§goto(addr394))
                                                                                                {
                                                                                                   §§push(this.§?!L§);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop6;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(§§pop() <= §§pop())
                                                                                                   {
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.updateRenderer();
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      loop19:
                                                                                                      while(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         addr85:
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr106:
                                                                                                         addr106:
                                                                                                         while(!(_loc2_ && _loc3_))
                                                                                                         {
                                                                                                            if(_loc3_ || this)
                                                                                                            {
                                                                                                               this.§0!-§ = 0;
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                            §§goto(addr85);
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            while(!_loc2_)
                                                                                                            {
                                                                                                               this.§9=§ = this.§<V§.y;
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                            addr182:
                                                                                                         }
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(this);
                                                                                                         §§push(this.§<V§.angle);
                                                                                                         if(!(_loc2_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() / Math.PI);
                                                                                                            if(!(_loc2_ && param1))
                                                                                                            {
                                                                                                               addr75:
                                                                                                               §§push(§§pop() * 180);
                                                                                                            }
                                                                                                            §§pop().§4!G§ = §§pop();
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr75);
                                                                                                      }
                                                                                                      addr78:
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr424);
                                                   }
                                                }
                                                §§goto(addr427);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr243);
                           }
                           break;
                        }
                     }
                     addr474:
                  }
                  §§goto(addr441);
               }
            }
            §§goto(addr474);
         }
         §§goto(addr424);
      }
      
      public function §#!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+!<§ = true;
            while(true)
            {
               this.§?!L§ = §5!,§;
            }
            addr97:
         }
         while(true)
         {
            this.§=+§(§89§.§^V§);
            while(true)
            {
               if(!_loc2_)
               {
                  if(this.§;!U§ == 0)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr97);
            }
            return;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:§@_§ = null;
         if(_loc4_)
         {
            §§push(this.§9!`§);
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
                           §§push(this.§3I§);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(0);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() >= §§pop());
                                 loop5:
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(this.§3"5§);
                                             loop6:
                                             while(true)
                                             {
                                                if(§§pop() > this.§<V§.§;c§.§];§.ground)
                                                {
                                                   addr259:
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§<V§.§;c§.§];§.ground);
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(§§pop() - this.§3"5§);
                                                      }
                                                      §§pop().applyGravity(§§pop());
                                                      addr276:
                                                      while(true)
                                                      {
                                                         this.§3I§ = -1;
                                                         addr220:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                   addr259:
                                                }
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§3I§);
                                                   if(!_loc5_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§3I§ = §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(this.§3I§);
                                                      if(!(_loc4_ || this))
                                                      {
                                                         while(_loc4_)
                                                         {
                                                            §§push(0);
                                                         }
                                                         continue loop6;
                                                         addr187:
                                                      }
                                                      §§push(0);
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               addr438:
                                                            }
                                                            else
                                                            {
                                                               addr438:
                                                            }
                                                            continue;
                                                            return;
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr438);
                                                      while(true)
                                                      {
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
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(!isNaN(this.§3"5§))
                                                                     {
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§<V§);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop().§;c§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop().objects);
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§push(§§pop().§?!_§(this.§]!B§,this.§3"5§));
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc2_ = §§pop();
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          addr48:
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§§pop() >= 0)
                                                                                             {
                                                                                                §§push(this.§<V§);
                                                                                                break loop15;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(param1);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() / 100);
                                                                                                         }
                                                                                                         §§push(§§pop().applyGravity(§§pop()));
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop5;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               if(_loc4_ || this)
                                                                                                               {
                                                                                                                  if(_loc4_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        this.§3I§ = -1;
                                                                                                                        addr110:
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           break loop14;
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     §§goto(addr259);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr191:
                                                                                                                     this.§3I§ = this.§4L§;
                                                                                                                  }
                                                                                                               }
                                                                                                               return;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§3I§ = 0;
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc4_ || _loc2_)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue loop18;
                                                                                                                  }
                                                                                                                  addr284:
                                                                                                                  §§goto(addr438);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     continue loop12;
                                                                                                                  }
                                                                                                                  §§goto(addr220);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr110);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop15;
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§goto(addr276);
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr289:
                                                                                 _loc3_ = §§pop().getObject(_loc2_) as §@_§;
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    addr435:
                                                                                    if(!(_loc3_ && _loc3_.§1"+§))
                                                                                    {
                                                                                       addr371:
                                                                                       §§push(Boolean(_loc3_));
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr401:
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(_loc3_.§!'§());
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         addr404:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               addr351:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr353:
                                                                                                                  if(_loc4_ || param1)
                                                                                                                  {
                                                                                                                     this.§;!d§ = false;
                                                                                                                     addr363:
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr315:
                                                                                                                        this.§3I§ = 2000;
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || param1))
                                                                                                                              {
                                                                                                                                 §§goto(addr437);
                                                                                                                              }
                                                                                                                              §§goto(addr438);
                                                                                                                              addr335:
                                                                                                                           }
                                                                                                                           §§goto(addr353);
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     addr409:
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        this.§3I§ = -1;
                                                                                                                        §§goto(addr409);
                                                                                                                        addr431:
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  this.§;!d§ = false;
                                                                                                                  addr418:
                                                                                                                  §§goto(addr431);
                                                                                                               }
                                                                                                               this.§3I§ = 500;
                                                                                                               if(_loc4_ || param1)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(false)
                                                                                                                     {
                                                                                                                        §§goto(addr315);
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr404);
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            §§goto(addr371);
                                                                                                         }
                                                                                                         §§goto(addr401);
                                                                                                      }
                                                                                                      §§goto(addr415);
                                                                                                   }
                                                                                                   §§goto(addr351);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr435);
                                                                                          }
                                                                                          §§goto(addr436);
                                                                                       }
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                    §§goto(addr418);
                                                                                 }
                                                                                 §§goto(addr335);
                                                                              }
                                                                              addr288:
                                                                              §§goto(addr289);
                                                                              §§push(§§pop().objects);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr288);
                                                                        §§push(§§pop().§;c§);
                                                                     }
                                                                     §§goto(addr48);
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                }
                                             }
                                             addr253:
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr438);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           §§goto(addr253);
                        }
                     }
                  }
                  §§goto(addr242);
               }
            }
         }
         §§goto(addr276);
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§9=§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§9=§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§3"5§);
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§3"5§ = §§pop();
            }
            addr186:
         }
         loop1:
         while(true)
         {
            §§push(this.§3"5§);
            if(_loc2_)
            {
               §§push(this.§<V§);
               if(_loc2_)
               {
                  §§push(§§pop().§;c§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop().§];§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop().ground);
                        if(_loc2_ || param1)
                        {
                           if(§§pop() <= §§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 this.updateRenderer();
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr96);
                                    }
                                    break;
                                 }
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(false);
                                    if(_loc2_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                    break loop1;
                                 }
                                 addr143:
                                 §§push(this.§3"5§);
                                 if(_loc2_)
                                 {
                                    addr152:
                                    §§push(§§pop() - this.§<V§.§;c§.§];§.ground);
                                    if(!_loc3_)
                                    {
                                       addr155:
                                       §§push(Number(§§pop()));
                                    }
                                    param1 = §§pop();
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§9=§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - param1);
                                       }
                                       §§pop().§9=§ = §§pop();
                                       addr106:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             addr96:
                                             §§push(this);
                                             §§push(this.§3"5§);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() - param1);
                                             }
                                             §§pop().§3"5§ = §§pop();
                                             while(true)
                                             {
                                                this.updateRenderer();
                                                break loop2;
                                                §§goto(addr108);
                                             }
                                             addr108:
                                             addr96:
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr157:
                                 }
                                 §§goto(addr155);
                                 §§goto(addr96);
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(_loc2_)
                                       {
                                          §§push(true);
                                          break loop1;
                                       }
                                       §§goto(addr186);
                                    }
                                    else
                                    {
                                       §§goto(addr157);
                                    }
                                 }
                                 §§goto(addr106);
                              }
                           }
                           §§goto(addr143);
                        }
                     }
                  }
               }
            }
            §§goto(addr152);
         }
         return §§pop();
      }
      
      protected function §%=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%!S§ = null;
         if(!(_loc2_ && this))
         {
            if(this.§3![§ is §%!S§)
            {
               if(!_loc2_)
               {
                  _loc1_ = §%!S§(this.§3![§);
                  if(!(_loc2_ && _loc1_))
                  {
                     this.§ "1§ = new b2Vec2(_loc1_.§-x§.x,_loc1_.§-x§.y);
                     if(_loc3_ || _loc2_)
                     {
                        this.§,Z§ = _loc1_.radius;
                     }
                  }
               }
            }
            else
            {
               this.§ "1§ = new b2Vec2(0,0);
               if(!(_loc2_ && _loc3_))
               {
                  addr102:
                  this.§,Z§ = 1.5;
               }
            }
            return;
         }
         §§goto(addr102);
      }
      
      protected function §,&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@!5§ = this.§<V§.§;c§.§13§.§6"%§(this.mName);
         }
         while(this.§@!5§)
         {
            this.§;!e§();
            if(_loc2_ && _loc2_)
            {
               return;
            }
            addr19:
            addr62:
            if(_loc2_ && this)
            {
               break;
            }
            if(!_loc1_)
            {
               continue;
            }
            §§goto(addr19);
         }
         this.§^"5§(null);
         §§goto(addr62);
      }
      
      public function §^"5§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§"G§ = param1;
            while(true)
            {
               §§push(this.§"G§);
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
                           addr230:
                           while(true)
                           {
                              §§push(this.§"G§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().parent == this.§&%§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    break;
                                 }
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 addr129:
                                 addr212:
                                 while(true)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                                 loop20:
                                 while(true)
                                 {
                                    addr126:
                                    while(true)
                                    {
                                       §§goto(addr129);
                                       continue loop20;
                                    }
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              this.§&%§.addChild(this.§"G§);
                              §§goto(addr212);
                              loop18:
                              while(true)
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       while(true)
                                       {
                                          this.updateRenderer();
                                          if(_loc2_)
                                          {
                                             continue loop18;
                                          }
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          addr175:
                                          loop17:
                                          while(true)
                                          {
                                             §§push(this.§"G§);
                                             if(_loc3_)
                                             {
                                                if(_loc2_ && _loc3_)
                                                {
                                                   break;
                                                }
                                                §§push(this.§"G§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop().pivotY);
                                                   if(_loc3_)
                                                   {
                                                      addr56:
                                                      §§push(this.§ "1§);
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§push(§§pop().y);
                                                         if(!_loc2_)
                                                         {
                                                            if(!(_loc2_ && this))
                                                            {
                                                               §§push(§#=§.§^!2§);
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  addr85:
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     addr93:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc2_ && param1))
                                                                     {
                                                                        §§pop().pivotY = §§pop();
                                                                        continue loop18;
                                                                     }
                                                                     addr174:
                                                                     while(true)
                                                                     {
                                                                        §§pop().pivotX = §§pop();
                                                                        continue loop17;
                                                                     }
                                                                     addr174:
                                                                  }
                                                                  §§goto(addr174);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  addr172:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr174);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                               }
                                                               addr170:
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         §§goto(addr85);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr56);
                                                         }
                                                         addr169:
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr93);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop().pivotX);
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr169);
                                                         §§push(this.§ "1§);
                                                      }
                                                   }
                                                   addr164:
                                                }
                                                §§goto(addr174);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop17;
                                                }
                                                addr162:
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr129);
                                       }
                                       return;
                                       addr29:
                                    }
                                    break;
                                 }
                                 continue loop7;
                              }
                              §§goto(addr230);
                           }
                        }
                        §§goto(addr126);
                     }
                  }
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               §§goto(addr162);
               §§push(this.§"G§);
            }
         }
         §§goto(addr212);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(_loc5_)
         {
            this.updateGroundControl(param1);
            loop0:
            while(true)
            {
               §§push(this.§+!<§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        this.§4L§ = 0;
                        loop3:
                        while(true)
                        {
                           §§push(false);
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr118:
                              while(_loc5_ || param2)
                              {
                              }
                              addr61:
                              continue loop2;
                              if(!(_loc5_ || param1))
                              {
                                 continue;
                              }
                              §§push(Boolean(§§pop()));
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    addr83:
                                    loop13:
                                    while(!(_loc6_ && this))
                                    {
                                       addr90:
                                       §§pop();
                                       loop12:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(param3);
                                                   if(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(!_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   continue loop13;
                                                }
                                                §§goto(addr118);
                                             }
                                             while(true)
                                             {
                                                this.§'!m§(param1);
                                                break loop12;
                                             }
                                             addr107:
                                          }
                                          break;
                                          §§goto(addr90);
                                       }
                                       while(!_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop0;
                                          }
                                          this.§<O§(param1);
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc5_ || param3))
                                             {
                                                continue loop13;
                                             }
                                             §§goto(addr61);
                                          }
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          §§goto(addr107);
                                       }
                                       break;
                                       §§goto(addr83);
                                    }
                                    addr83:
                                    addr21:
                                    return;
                                    addr106:
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             this.§'!J§(param1,param2);
                                             addr49:
                                             if(!_loc6_)
                                             {
                                                §§goto(addr21);
                                             }
                                             else
                                             {
                                                §§goto(addr91);
                                             }
                                          }
                                          §§goto(addr102);
                                       }
                                       §§goto(addr49);
                                    }
                                    §§goto(addr21);
                                    continue loop1;
                                 }
                                 addr39:
                              }
                              §§goto(addr83);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr106);
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public function §'!m§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§]"&§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     addr192:
                     §§push(this);
                     §§push(this.§]"&§);
                     if(_loc2_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§]"&§ = §§pop();
                     addr200:
                     §§push(this.§]"&§);
                     §§push(0);
                  }
                  else
                  {
                     §§push(this.§+e§);
                     loop2:
                     while(!_loc3_)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           §§push(§§pop() <= §§pop());
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
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr119:
                                             addr148:
                                             while(_loc2_ || _loc3_)
                                             {
                                                if(_loc3_ && this)
                                                {
                                                   this.§!!#§();
                                                }
                                                else
                                                {
                                                   addr177:
                                                   addr175:
                                                   addr134:
                                                }
                                                continue loop9;
                                                return;
                                             }
                                             while(!(_loc3_ && param1))
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   §§push(Math.random() * §=!O§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop2;
                                                   continue loop2;
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr177);
                                          }
                                       }
                                       §§goto(addr42);
                                    }
                                    continue;
                                    addr113:
                                 }
                                 §§goto(addr147);
                              }
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              §§goto(addr113);
                           }
                        }
                        if(_loc2_ || param1)
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                     §§goto(addr192);
                  }
                  §§goto(addr167);
               }
               if(§§pop() <= §§pop())
               {
                  §§goto(addr175);
               }
               §§goto(addr134);
            }
         }
         §§goto(addr177);
      }
      
      public function §!!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§]"&§ = 0;
         }
         do
         {
            this.§;!e§();
         }
         while(!_loc1_);
         
      }
      
      public function §'!S§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§6!e§)
            {
               loop0:
               while(true)
               {
                  this.§]"&§ = §@""§;
                  while(true)
                  {
                     if(!(_loc2_ || _loc2_))
                     {
                        continue loop0;
                     }
                     if(_loc2_)
                     {
                        this.§1i§();
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr49);
               }
            }
            return;
         }
         addr49:
      }
      
      protected function §1i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§^"5§(this.§@!5§.getSubAnimation("blink").getFrame(0,this.§"G§));
         }
      }
      
      public function §<O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§+e§);
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§]"&§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§push(§§pop() <= §§pop());
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          this.§=+§();
                                          addr86:
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       addr109:
                                       this.§'"-§();
                                    }
                                    if(!(_loc2_ && this))
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          break loop1;
                                       }
                                       addr89:
                                       break;
                                       addr125:
                                    }
                                    addr108:
                                    if(this.§+e§ <= 0)
                                    {
                                       §§goto(addr109);
                                    }
                                    §§goto(addr89);
                                    addr153:
                                 }
                                 §§goto(addr86);
                              }
                              return;
                              addr56:
                           }
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                           addr49:
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr56);
                        }
                     }
                     §§goto(addr108);
                  }
               }
               §§push(this);
               §§push(this.§+e§);
               if(!(_loc2_ && param1))
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§+e§ = §§pop();
               §§goto(addr153);
               if(_loc2_ && param1)
               {
                  continue;
               }
               §§push(§§pop() < param1);
               if(_loc3_)
               {
                  §§goto(addr49);
               }
               §§goto(addr102);
            }
         }
         §§goto(addr125);
      }
      
      public function §'"-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§+e§ = 0;
         }
         do
         {
            this.§;!e§();
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      protected function §;!e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^"5§(this.§@!5§.getFrame(0,this.§"G§));
         }
      }
      
      public function §=+§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§6!e§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§+e§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              addr267:
                              while(true)
                              {
                                 this.§'"-§();
                                 addr269:
                                 while(true)
                                 {
                                 }
                              }
                              addr267:
                           }
                           while(true)
                           {
                              §§push(this.§]"&§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§push(0);
                              if(!(_loc3_ && param2))
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§!!#§();
                                       addr251:
                                       while(true)
                                       {
                                       }
                                       addr96:
                                       if(_loc3_ && this)
                                       {
                                          continue;
                                       }
                                       §@_§.§>!z§(param1,this.§+>§);
                                       addr108:
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr115:
                                          if(!(_loc3_ && param2))
                                          {
                                             addr122:
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr139:
                                                if(_loc3_ && param1)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            this.§+e§ = §4"0§;
                                                            addr195:
                                                            while(true)
                                                            {
                                                               this.§]Y§();
                                                               addr181:
                                                               addr273:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break loop8;
                                                                  }
                                                                  if(!(_loc4_ || param1))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(this.§9!`§);
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc3_ && param1)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr169:
                                                                                       do
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          addr80:
                                                                                       }
                                                                                       while(!(_loc3_ && this));
                                                                                       
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          §§goto(addr96);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §@_§.§>!z§(param1,this.§+>§,§+H§);
                                                                                    if(_loc3_ && param1)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(!(_loc3_ && param1))
                                                                                       {
                                                                                          §§goto(addr20);
                                                                                       }
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr169);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr108);
                                                                              }
                                                                              continue loop11;
                                                                              addr158:
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               return;
                                                               §§goto(addr122);
                                                            }
                                                         }
                                                         addr191:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr269);
                                                   addr227:
                                                }
                                                addr20:
                                                return;
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr177);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc4_ || _loc3_)
                                    {
                                       if(§§pop() < 0)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             §§push(§89§.§8!0§);
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr226:
                                                param1 = §§pop();
                                             }
                                             §§goto(addr226);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr226);
                                    §§goto(addr251);
                                 }
                                 continue loop1;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               §§goto(addr273);
            }
         }
         §§goto(addr267);
      }
      
      protected function §]Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§^"5§(this.§@!5§.getSubAnimation("yell").getFrame(0,this.§"G§));
         }
      }
      
      public function §'!J§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!(_loc7_ && this))
         {
            §§push(this.§4L§);
            if(_loc6_)
            {
               §§push(0);
               if(!(_loc7_ && this))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§push(this);
                        §§push(this.§4L§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§4L§ = §§pop();
                        if(!_loc7_)
                        {
                           §§push(this.§4L§);
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§4!_§);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && this))
                                       {
                                          _loc4_.§4!_§ = _loc5_;
                                       }
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(this);
                                          §§push(this.§&!G§);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§&!G§ = §§pop();
                                          addr774:
                                          §§push(!this.§9!`§);
                                          loop34:
                                          while(true)
                                          {
                                             addr776:
                                             if(§§pop())
                                             {
                                                addr777:
                                                §§pop();
                                                addr778:
                                                while(true)
                                                {
                                                   §§push(this.§4!_§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(2);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         while(true)
                                                         {
                                                            loop35:
                                                            while(!§§pop())
                                                            {
                                                               §§push(this.§9!`§);
                                                               if(!_loc7_)
                                                               {
                                                                  addr672:
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                     addr674:
                                                                     if(§§pop())
                                                                     {
                                                                        addr675:
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop();
                                                                              addr649:
                                                                              §§push(param2);
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 break;
                                                                              }
                                                                              continue loop35;
                                                                              addr680:
                                                                           }
                                                                           continue loop34;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           addr768:
                                                                           if(§§pop())
                                                                           {
                                                                              addr769:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr770:
                                                                                 §§push(this.§&!G§);
                                                                                 addr744:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-1);
                                                                                    addr745:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr769:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              addr747:
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    this.§&!G§ = -1;
                                                                                    addr722:
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    loop61:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§2!h§ = this.§4L§;
                                                                                       addr705:
                                                                                       addr687:
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§0!-§ = 0;
                                                                                          addr692:
                                                                                          if(!(_loc6_ || _loc3_))
                                                                                          {
                                                                                             break loop35;
                                                                                          }
                                                                                          this.§`!Y§ = 0;
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                break loop20;
                                                                                             }
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§4L§);
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push(§§pop() * (Math.abs(this.§'H§) / 2));
                                                                                                }
                                                                                                §§pop().§4L§ = §§pop();
                                                                                                addr720:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   §§goto(addr722);
                                                                                                }
                                                                                             }
                                                                                             continue loop61;
                                                                                          }
                                                                                          continue loop61;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          addr583:
                                                                                          addr398:
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             addr393:
                                                                                             while(true)
                                                                                             {
                                                                                                this.updateRenderer();
                                                                                                addr396:
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                addr627:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§&!G§ = 0;
                                                                                                   addr622:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             addr646:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§;!U§ = 0;
                                                                                                addr632:
                                                                                                if(!(_loc7_ && param1))
                                                                                                {
                                                                                                   this.§0!-§ = 0;
                                                                                                   §§goto(addr627);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr654:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         this.§0!O§(1.5);
                                                                                                         addr664:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr705);
                                                                                                      }
                                                                                                   }
                                                                                                   addr654:
                                                                                                }
                                                                                                §§goto(addr583);
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             addr646:
                                                                                          }
                                                                                          §§goto(addr98);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§'H§ = this.§&!G§;
                                                                                 §§goto(addr740);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr767:
                                                                     }
                                                                     break;
                                                                     §§goto(addr672);
                                                                  }
                                                                  addr653:
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§4L§ = 0;
                                                                     §§goto(addr646);
                                                                  }
                                                                  §§goto(addr654);
                                                                  addr673:
                                                               }
                                                               §§goto(addr769);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§4!_§);
                                                               addr765:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                               }
                                                            }
                                                         }
                                                         addr761:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr767);
                                                      }
                                                   }
                                                   §§goto(addr765);
                                                }
                                                addr778:
                                             }
                                             §§goto(addr761);
                                          }
                                          addr797:
                                          addr775:
                                       }
                                       §§goto(addr687);
                                    }
                                    else
                                    {
                                       loop53:
                                       while(true)
                                       {
                                          addr401:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(360);
                                             §§push(§,"2§);
                                             §§push(this.§2!h§);
                                             if(!_loc7_)
                                             {
                                                §§push(this.§4L§);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(!_loc7_)
                                                   {
                                                      addr423:
                                                      §§push(§§pop() / this.§2!h§);
                                                   }
                                                   §§push(§§pop() * §§pop().§+!u§(§§pop()));
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§push(§§pop() * this.§`!Y§);
                                                   }
                                                   §§pop().§0!-§ = §§pop();
                                                   addr437:
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr393);
                                                      }
                                                      else
                                                      {
                                                         loop32:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(this);
                                                                  §§push(_loc3_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() * this.§'H§);
                                                                  }
                                                                  §§pop().§;!U§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop53;
                                                                     }
                                                                     §§goto(addr778);
                                                                  }
                                                                  §§goto(addr765);
                                                                  addr562:
                                                               }
                                                               break;
                                                            }
                                                            loop31:
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(§,"2§.§+!u§(_loc3_));
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           continue loop32;
                                                                        }
                                                                        addr577:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr609:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           continue loop31;
                                                                        }
                                                                        addr609:
                                                                     }
                                                                  }
                                                                  addr569:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr797);
                                                               }
                                                            }
                                                            §§goto(addr775);
                                                         }
                                                         §§goto(addr622);
                                                      }
                                                   }
                                                   §§goto(addr562);
                                                }
                                             }
                                             §§goto(addr423);
                                          }
                                       }
                                       §§goto(addr769);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§4L§);
                                    if(!_loc7_)
                                    {
                                       §§push(this.§2!h§);
                                       loop52:
                                       while(true)
                                       {
                                          §§push(2);
                                          loop41:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc6_)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   addr596:
                                                   §§push(this.§2!h§);
                                                }
                                                else
                                                {
                                                   §§push(this.§2!h§);
                                                   loop42:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§4L§);
                                                                  addr511:
                                                                  loop40:
                                                                  while(_loc6_)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        continue loop52;
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     loop60:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§2!h§);
                                                                        addr518:
                                                                        while(true)
                                                                        {
                                                                           §§push(2);
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              while(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr533:
                                                                                    while(!_loc7_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc7_ && param1)
                                                                                          {
                                                                                             addr598:
                                                                                             §§push(this.§4L§);
                                                                                             break loop41;
                                                                                          }
                                                                                          _loc3_ = §§pop();
                                                                                          if(_loc6_ || param1)
                                                                                          {
                                                                                             §§push(§,"2§.§+!u§(_loc3_,false));
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop60;
                                                                                                }
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   continue loop42;
                                                                                                }
                                                                                                if(_loc6_ || this)
                                                                                                {
                                                                                                   addr487:
                                                                                                   _loc3_ = Number(§§pop());
                                                                                                   addr488:
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§'H§);
                                                                                                      if(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            §§push(this.§'H§);
                                                                                                            if(_loc6_ || param2)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§pop().§;!U§ = §§pop();
                                                                                                      addr469:
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr720);
                                                                                                }
                                                                                                §§goto(addr744);
                                                                                             }
                                                                                             addr475:
                                                                                          }
                                                                                          §§goto(addr685);
                                                                                       }
                                                                                       §§push(this.§2!h§);
                                                                                       break loop40;
                                                                                    }
                                                                                    §§goto(addr577);
                                                                                 }
                                                                              }
                                                                              break loop41;
                                                                              addr524:
                                                                           }
                                                                           continue loop41;
                                                                        }
                                                                        addr604:
                                                                        §§push(§§pop() / (§§pop() / §§pop()));
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr609);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr609);
                                                                     }
                                                                  }
                                                                  §§goto(addr604);
                                                               }
                                                               addr509:
                                                            }
                                                            §§goto(addr569);
                                                         }
                                                         §§goto(addr533);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr745);
                                                }
                                                §§goto(addr598);
                                             }
                                             break;
                                          }
                                          §§goto(addr601);
                                       }
                                    }
                                 }
                                 §§goto(addr609);
                              }
                              §§goto(addr745);
                           }
                           §§goto(addr509);
                        }
                        §§goto(addr646);
                     }
                     else
                     {
                        addr178:
                     }
                     addr98:
                     return;
                  }
                  §§push(Math.random() * §9x§);
                  if(!(_loc7_ && this))
                  {
                     if(!(_loc7_ && this))
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || param2)
                           {
                              §§push(param1);
                              if(_loc6_ || param1)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(§§pop() < §§pop());
                                          loop0:
                                          for(; !_loc7_; while(true)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§goto(addr267);
                                                   §§push(!§§pop());
                                                }
                                                break;
                                             }
                                             continue loop0;
                                             §§goto(addr186);
                                          },§§goto(addr675))
                                          {
                                             §§push(§§pop());
                                             loop1:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(!(_loc7_ && this))
                                                   {
                                                      §§pop();
                                                      while(!(_loc7_ && param2))
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push(this.§9!`§);
                                                            continue loop0;
                                                         }
                                                         §§goto(addr632);
                                                      }
                                                      §§goto(addr396);
                                                   }
                                                   §§goto(addr747);
                                                   addr365:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      addr268:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         continue loop1;
                                                      }
                                                   }
                                                   addr267:
                                                }
                                             }
                                          }
                                          §§goto(addr673);
                                       }
                                       §§goto(addr604);
                                    }
                                    §§goto(addr511);
                                 }
                                 §§goto(addr518);
                              }
                              §§goto(addr524);
                           }
                           §§goto(addr532);
                        }
                        §§goto(addr533);
                     }
                     §§goto(addr475);
                  }
                  §§goto(addr487);
               }
               §§goto(addr745);
            }
            §§goto(addr516);
         }
         §§goto(addr729);
      }
      
      public function §0!O§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§6!e§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§4!_§ = 0;
                     loop2:
                     while(!(_loc2_ && _loc3_))
                     {
                        this.§4L§ = §9X§;
                        while(true)
                        {
                           this.§;!U§ = 0;
                           while(!(_loc2_ && param1))
                           {
                              §§push(this);
                              §§push(0.75);
                              if(_loc3_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       addr269:
                                       §§push(-§§pop());
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr278:
                                          §§push(§§pop() * param1);
                                       }
                                    }
                                    §§pop().§'H§ = §§pop();
                                    while(!(_loc2_ && _loc3_))
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          §§goto(addr337);
                                       }
                                       while(true)
                                       {
                                          this.§&!G§ = this.§'H§;
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§4L§);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() * (Math.abs(this.§'H§) / 3));
                                             }
                                             §§pop().§4L§ = §§pop();
                                             while(true)
                                             {
                                                this.§2!h§ = this.§4L§;
                                                while(true)
                                                {
                                                   §§push(this.mName);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == "BIRD_WHITE");
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop());
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr193:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr216);
                                                      while(_loc3_ || param1)
                                                      {
                                                         §§goto(addr193);
                                                         §§push(§§pop() == "BIRD_BLACK");
                                                      }
                                                   }
                                                   if(_loc2_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   this.§`!Y§ = 0;
                                                   §§goto(addr178);
                                                }
                                             }
                                             if(_loc2_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr20);
                                          }
                                       }
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr20);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr269);
                           }
                        }
                     }
                  }
               }
               addr337:
               return;
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr154);
            }
         }
         §§goto(addr294);
      }
      
      public function updateRenderer() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§<V§);
            loop0:
            while(true)
            {
               §§push(§§pop().§2"1§);
               addr345:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§&%§);
                        addr89:
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        addr96:
                        §§push(this.§]![§);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr38:
                           §§push(this.§&%§);
                           if(_loc1_ || _loc1_)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 §§pop().rotation = §§pop().rotation;
                                 if(!_loc2_)
                                 {
                                    addr58:
                                    if(!(_loc1_ || this))
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          §§push(this.§&%§);
                                          if(_loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                §§push(this.§0!-§);
                                                if(!(_loc2_ && this))
                                                {
                                                   §§push(this.§4!G§);
                                                   if(_loc1_)
                                                   {
                                                      if(!(_loc2_ && this))
                                                      {
                                                         if(_loc1_ || this)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc2_)
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  §§push(§§pop() / 180);
                                                                  if(_loc1_)
                                                                  {
                                                                     addr194:
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              addr203:
                                                                              §§push(§§pop() * Math.PI);
                                                                              if(_loc1_ || this)
                                                                              {
                                                                                 addr320:
                                                                                 if(_loc1_ || _loc1_)
                                                                                 {
                                                                                    §§pop().rotation = §§pop();
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       addr97:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§]![§);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§]![§);
                                                                                                }
                                                                                                addr107:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc1_ || this)
                                                                                                   {
                                                                                                      §§push(this.§&%§);
                                                                                                      break loop16;
                                                                                                      addr328:
                                                                                                   }
                                                                                                   addr341:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                }
                                                                                                addr321:
                                                                                             }
                                                                                          }
                                                                                          addr109:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§&%§);
                                                                                             addr111:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop().x;
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                          continue loop17;
                                                                                       }
                                                                                       §§goto(addr24);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    §§goto(addr321);
                                                                                 }
                                                                                 addr320:
                                                                              }
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§push(this.§;!U§);
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       §§push(§§pop() * Math.sin((this.§4!G§ + 90) / 180 * Math.PI));
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          addr254:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc2_ && this))
                                                                                          {
                                                                                             addr263:
                                                                                             §§push(§#=§.§^!2§);
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * Math.cos((this.§4!G§ + 90) / 180 * Math.PI));
                                                                                                      addr293:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(_loc1_ || this)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!(_loc2_ && _loc1_))
                                                                                                               {
                                                                                                                  if(_loc1_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§#=§.§^!2§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr320);
                                                                                                                     }
                                                                                                                     addr319:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§#=§.§^!2§);
                                                                                                                     addr362:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        addr363:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           §§goto(addr364);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr360:
                                                                                                               }
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                            §§goto(addr362);
                                                                                                         }
                                                                                                         §§goto(addr339);
                                                                                                      }
                                                                                                   }
                                                                                                   addr281:
                                                                                                }
                                                                                                addr268:
                                                                                                §§pop().y = §§pop() / §§pop();
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          §§goto(addr334);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 §§goto(addr363);
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr281);
                                                                        }
                                                                        addr279:
                                                                     }
                                                                     §§goto(addr268);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               §§goto(addr254);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr336);
                                                      }
                                                      §§goto(addr293);
                                                   }
                                                   §§goto(addr263);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr332);
                                          }
                                          break;
                                          §§goto(addr58);
                                       }
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§goto(addr203);
                                             §§push(this.§9=§);
                                          }
                                          else
                                          {
                                             addr275:
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§goto(addr279);
                                                   §§push(this.§]!B§);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr358:
                                                }
                                             }
                                             addr275:
                                          }
                                          §§goto(addr360);
                                          §§goto(addr328);
                                       }
                                       §§goto(addr341);
                                       addr142:
                                    }
                                    addr24:
                                    return;
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr69);
                     }
                  }
                  else
                  {
                     §§goto(addr275);
                     §§push(this.§&%§);
                  }
                  §§goto(addr358);
               }
            }
         }
         §§goto(addr107);
      }
      
      public function §^!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§;!d§ = true;
            loop0:
            while(true)
            {
               this.§9!`§ = false;
               loop1:
               while(true)
               {
                  this.§+!<§ = false;
                  while(true)
                  {
                     this.§4!_§ = 0;
                     while(_loc1_)
                     {
                        this.§3I§ = 0;
                        while(true)
                        {
                           this.§4L§ = 0;
                        }
                        loop7:
                        for(; _loc1_ || _loc2_; if(_loc2_ && this)
                        {
                           continue;
                        },§§goto(addr48))
                        {
                           this.§0!-§ = 0;
                           loop8:
                           do
                           {
                              this.§&!G§ = 0;
                              addr60:
                              addr110:
                              while(!_loc2_)
                              {
                                 continue loop1;
                                 this.§`!Y§ = 0;
                                 if(_loc1_)
                                 {
                                    continue loop8;
                                 }
                              }
                              while(true)
                              {
                                 this.§4L§ = 0;
                                 while(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       this.§;!U§ = 0;
                                       continue loop7;
                                    }
                                    continue loop0;
                                    if(!(_loc2_ && this))
                                    {
                                       return;
                                    }
                                 }
                                 §§goto(addr115);
                                 §§goto(addr60);
                              }
                           }
                           while(!(_loc1_ || this));
                           
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Number = Math.sqrt((param1 - this.§]!B§) * (param1 - this.§]!B§) + (param2 - this.§9=§) * (param2 - this.§9=§));
         if(_loc4_)
         {
            §§push(_loc3_);
            §§push(this.§,Z§);
            if(_loc4_ || param2)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!(_loc5_ && this))
               {
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
         }
         §§goto(addr85);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §§push(this.§]!B§);
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr156:
                           while(true)
                           {
                              §§pop();
                              addr157:
                              while(true)
                              {
                                 §§push(this.§]!B§);
                                 addr120:
                                 while(true)
                                 {
                                    §§push(param4);
                                    addr121:
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() <= §§pop());
                                    }
                                 }
                              }
                           }
                           addr156:
                        }
                        while(true)
                        {
                           addr125:
                           while(true)
                           {
                              §§push(§§pop());
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr156);
               }
            }
         }
         §§goto(addr157);
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = false;
         if(_loc5_ || param1)
         {
            §§push(this.§]!B§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr162:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc5_ || param3)
                  {
                     §§push(!§§pop());
                  }
                  addr181:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr155:
                                    loop9:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          addr158:
                                          while(true)
                                          {
                                          }
                                          addr158:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             break loop9;
                                          }
                                          addr183:
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr154:
                              }
                              while(true)
                              {
                                 this.§]!B§ = param1;
                                 while(true)
                                 {
                                    this.§9=§ = param2;
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          this.§0!-§ = param3;
                                          continue;
                                       }
                                       §§goto(addr154);
                                    }
                                 }
                              }
                              if(_loc6_ && param3)
                              {
                                 continue;
                              }
                              if(_loc6_)
                              {
                                 continue loop2;
                              }
                              if(§§pop())
                              {
                                 if(_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(!(_loc5_ || param1))
                                       {
                                          continue loop0;
                                       }
                                       this.§<V§.§`#§();
                                       addr63:
                                       if(_loc6_)
                                       {
                                          §§goto(addr158);
                                       }
                                       §§goto(addr26);
                                    }
                                    §§goto(addr69);
                                 }
                                 §§goto(addr63);
                              }
                              §§goto(addr26);
                           }
                        }
                        addr152:
                     }
                     §§goto(addr183);
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function get §]k§() : Number
      {
         return this.§4L§;
      }
      
      public function get §]!j§() : Number
      {
         return this.§3I§;
      }
      
      public function set §]!j§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3I§ = param1;
         }
      }
      
      public function get §3!G§() : Number
      {
         return this.§2!O§;
      }
      
      public function get §&a§() : Boolean
      {
         return this.§9!`§;
      }
      
      public function get radius() : Number
      {
         return this.§,Z§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3!G§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2!O§ = param1;
         }
      }
      
      public function get §,!P§() : Number
      {
         return this.§0R§;
      }
      
      public function set §,!P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§0R§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§2c§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function get §"!a§() : Number
      {
         return this.§ n§;
      }
      
      public function get §<"&§() : Number
      {
         return this.§#"&§;
      }
   }
}
