package §?A§
{
   import §'N§.§"3§;
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §3Y§.LevelObject;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §?!&§.b2Vec2;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemShape;
   import §^L§.LevelItemSoundResource;
   
   public class LevelSlingshotObject
   {
      
      public static const §7!T§:String = "ChannelSlingshot";
      
      public static const §;n§:Number = 900;
      
      public static const §&3§:Number = 200;
      
      public static const §]!J§:Number = 200;
      
      public static const §+L§:Number = 1500;
      
      public static const §?!Y§:Number = 5000;
      
      public static const §3b§:Number = 1000;
      
      public static const §6W§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §7!T§ = "ChannelSlingshot";
            while(true)
            {
               §;n§ = 900;
               loop2:
               for(; !(_loc2_ && LevelSlingshotObject); if(!(_loc1_ || LevelSlingshotObject))
               {
                  continue;
               },§§goto(addr70))
               {
                  §]!J§ = 200;
                  while(_loc1_)
                  {
                     §+L§ = 1500;
                     loop4:
                     while(!(_loc2_ && _loc1_))
                     {
                        §?!Y§ = 5000;
                        do
                        {
                           §3b§ = 1000;
                           while(true)
                           {
                              if(_loc1_ || LevelSlingshotObject)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                              addr70:
                              §6W§ = 1000;
                              if(_loc2_ && LevelSlingshotObject)
                              {
                                 continue;
                              }
                              §§goto(addr34);
                           }
                           continue loop2;
                        }
                        while(_loc2_ && _loc2_);
                        
                        return;
                     }
                  }
                  while(true)
                  {
                     §&3§ = 200;
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      protected var mName:String;
      
      protected var §`!Z§:Number;
      
      protected var §[§:Number;
      
      protected var §!!Y§:Number;
      
      protected var §"!I§:Number;
      
      private var §@!Z§:LevelItemSoundResource;
      
      protected var §#3§:Number;
      
      protected var §8Q§:Number = 1;
      
      private var §1!J§:Sprite;
      
      protected var §9!d§:Animation;
      
      private var §=@§:§&p§;
      
      protected var §2Z§:LevelSlingshot;
      
      private var §;4§:Number;
      
      private var §'!S§:Boolean = false;
      
      private var §-v§:Boolean = false;
      
      protected var §;?§:Boolean = false;
      
      private var §+j§:Number;
      
      private var §!p§:Number = 0;
      
      private var §<T§:Number = 0;
      
      private var §#8§:Number = 0;
      
      private var §'^§:Number = 1000;
      
      private var §"§:Number;
      
      private var §0_§:Number;
      
      private var §-e§:int;
      
      private var §7T§:Number = 0;
      
      protected var §!m§:Number;
      
      protected var §@=§:Number;
      
      private var §,!]§:Number = 1;
      
      private var §>d§:Number = 0;
      
      private var § !4§:b2Vec2;
      
      private var §[+§:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            super();
            while(true)
            {
               this.§2Z§ = param1;
               while(true)
               {
                  this.§1!J§ = param2;
                  loop2:
                  while(!(_loc7_ && param2))
                  {
                     this.mName = param3;
                     loop3:
                     while(true)
                     {
                        this.§@!Z§ = LevelItemManager.§><§(this.mName).§3!,§;
                        while(!_loc7_)
                        {
                           this.§`!Z§ = param4;
                           while(true)
                           {
                              this.§[§ = param5;
                              loop6:
                              while(true)
                              {
                                 this.§!!Y§ = param4;
                                 loop7:
                                 while(true)
                                 {
                                    this.§"!I§ = param5;
                                    addr114:
                                    while(_loc6_)
                                    {
                                       this.§#3§ = 0;
                                       continue loop6;
                                       if(_loc6_)
                                       {
                                          this.§-!§();
                                          continue loop7;
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      public function §import§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§'!S§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§1!J§);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§1!J§);
                     addr76:
                     addr62:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§1!J§ = null;
                        }
                        while(!_loc2_);
                        
                        if(!(_loc1_ && _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr35);
                  }
               }
               addr35:
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr62);
      }
      
      public function §`!d§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§-v§);
            if(_loc2_ || _loc3_)
            {
               §§push(!§§pop());
            }
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
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
                        §§pop();
                        addr455:
                        while(true)
                        {
                           §§push(this.§'!S§);
                           if(_loc3_ && param1)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              break;
                           }
                           addr430:
                           continue loop0;
                        }
                     }
                     addr454:
                  }
                  loop1:
                  while(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§8Q§);
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
                                    this.§#8§ = 0;
                                    addr399:
                                    while(_loc2_)
                                    {
                                       this.§7T§ = 0;
                                       while(_loc2_)
                                       {
                                          while(true)
                                          {
                                             this.§#3§ = 0;
                                             addr376:
                                             while(true)
                                             {
                                                if(!(_loc2_ || param1))
                                                {
                                                   break loop1;
                                                }
                                                this.§0_§ = 0;
                                                while(true)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      this.§8Q§ = 0;
                                                      while(true)
                                                      {
                                                      }
                                                      addr359:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr455);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 §§push(Number(Math.min(param1,this.§+j§)));
                                 loop9:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this);
                                       §§push(this.§`!Z§);
                                       if(_loc2_)
                                       {
                                          §§push(param1);
                                          if(_loc2_)
                                          {
                                             §§push(this.§2Z§.§`!Z§);
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(§§pop() - this.§`!Z§);
                                                if(_loc2_ || _loc3_)
                                                {
                                                   addr340:
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§+j§);
                                                   }
                                                   §§pop().§`!Z§ = §§pop() + §§pop();
                                                   loop11:
                                                   for(; !_loc3_; if(_loc3_ && this)
                                                   {
                                                      continue;
                                                   },this.§#3§ = 0,§§goto(addr39))
                                                   {
                                                      §§push(this);
                                                      §§push(this.§[§);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         §§push(param1);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(this.§2Z§.§[§);
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               §§push(§§pop() - this.§[§);
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  addr303:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc2_ || param1)
                                                                  {
                                                                     addr301:
                                                                     §§push(§§pop() / this.§+j§);
                                                                  }
                                                                  §§pop().§[§ = §§pop() + §§pop();
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(this.§[§);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr241:
                                                                           §§push(§§pop() / 50);
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              addr232:
                                                                              §§push(this.§+j§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop() / §;n§);
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§pop().§[§ = §§pop() - §§pop();
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 if(_loc2_ || this)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§#3§);
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§push(360 - this.§#3§);
                                                                                          if(_loc2_ || _loc2_)
                                                                                          {
                                                                                             addr196:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc2_ || _loc2_)
                                                                                             {
                                                                                                §§push(this.§+j§);
                                                                                             }
                                                                                             §§pop().§#3§ = §§pop() + §§pop();
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                §§push(this.§+j§);
                                                                                                if(_loc2_ || _loc2_)
                                                                                                {
                                                                                                   §§push(§§pop() - param1);
                                                                                                }
                                                                                                §§pop().§+j§ = §§pop();
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§+j§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(_loc3_ && _loc3_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§+§();
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr39:
                                                                                                         addr39:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_ && param1)
                                                                                                            {
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            addr46:
                                                                                                            if(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               loop17:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§[§ = this.§2Z§.§[§;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc2_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 this.§-v§ = false;
                                                                                                                                 while(!_loc3_)
                                                                                                                                 {
                                                                                                                                    this.§'!S§ = true;
                                                                                                                                    continue loop15;
                                                                                                                                    §§goto(addr46);
                                                                                                                                 }
                                                                                                                                 continue;
                                                                                                                                 addr88:
                                                                                                                              }
                                                                                                                              §§goto(addr388);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     addr132:
                                                                                                                     while(_loc2_ || this)
                                                                                                                     {
                                                                                                                        this.§`!Z§ = this.§2Z§.§`!Z§;
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                     §§goto(addr399);
                                                                                                                  }
                                                                                                                  §§goto(addr359);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr88);
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      return;
                                                                                                   }
                                                                                                   §§goto(addr132);
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr196);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              continue loop10;
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr232);
                                                                     }
                                                                     §§goto(addr241);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr301);
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr376);
                                                }
                                                §§goto(addr340);
                                                §§push(§§pop() / §§pop());
                                             }
                                          }
                                       }
                                       §§goto(addr340);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return;
               }
               §§goto(addr454);
            }
         }
         §§goto(addr390);
      }
      
      public function §9d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§-v§ = true;
            loop0:
            while(true)
            {
               this.§+j§ = §;n§;
               while(true)
               {
                  this.§,8§(LevelItemSoundResource.§9! §);
                  addr91:
                  addr20:
                  loop4:
                  while(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        this.§7T§ = 0;
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           if(_loc1_)
                           {
                              §§goto(addr91);
                           }
                           §§goto(addr20);
                        }
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§[§);
                           if(!(_loc1_ && this))
                           {
                              §§push(§§pop() + this.§7T§);
                           }
                           §§pop().§[§ = §§pop();
                           continue loop4;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  while(this.§7T§ != 0)
                  {
                  }
                  return;
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §[e§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || param1)
         {
            §§push(this.§'!S§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               addr458:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr459:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc4_ || this)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr470:
                           while(true)
                           {
                              §§push(this.§!m§);
                              if(!_loc3_)
                              {
                                 §§push(0);
                                 loop36:
                                 while(true)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    addr413:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc4_)
                                       {
                                          addr416:
                                          loop4:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§@=§);
                                                   addr420:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(§§pop() > this.§2Z§.§6f§.§7!%§.§7!5§)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(this.§2Z§.§6f§.§7!%§.§7!5§);
                                                            if(!(_loc3_ && this))
                                                            {
                                                               §§push(§§pop() - this.§@=§);
                                                            }
                                                            §§push(§§pop().§30§(§§pop()));
                                                            addr453:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr454:
                                                               while(true)
                                                               {
                                                                  this.§!m§ = -1;
                                                                  while(true)
                                                                  {
                                                                     addr383:
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        return;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr426:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§!m§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().§!m§ = §§pop();
                                                         addr400:
                                                         while(true)
                                                         {
                                                            §§push(this.§!m§);
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(0);
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc3_ && _loc2_)
                                                                  {
                                                                     continue loop36;
                                                                  }
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§#8§);
                                                                        addr370:
                                                                        while(_loc4_ || this)
                                                                        {
                                                                           §§push(0);
                                                                        }
                                                                        addr48:
                                                                        continue loop6;
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§goto(addr27);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr27);
                                                                  }
                                                               }
                                                               while(§§pop() <= §§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     addr334:
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        addr335:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr336:
                                                                           while(!(_loc3_ && param1))
                                                                           {
                                                                              §§push(!isNaN(this.§@=§));
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr383);
                                                                        }
                                                                     }
                                                                     addr346:
                                                                  }
                                                               }
                                                               addr379:
                                                               this.§!m§ = this.§#8§;
                                                               §§goto(addr383);
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         continue loop36;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr418:
                                             }
                                             addr27:
                                             return;
                                          }
                                          addr416:
                                       }
                                       §§goto(addr453);
                                    }
                                 }
                              }
                              §§goto(addr420);
                           }
                        }
                        addr469:
                     }
                     §§goto(addr416);
                  }
               }
            }
         }
         §§goto(addr470);
      }
      
      public function §30§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this);
            §§push(this.§[§);
            if(_loc3_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§[§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§@=§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§@=§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(this.§@=§);
                  if(_loc3_)
                  {
                     §§push(this.§2Z§);
                     if(_loc3_)
                     {
                        §§push(§§pop().§6f§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(§§pop().§7!%§);
                           if(_loc3_)
                           {
                              §§push(§§pop().§7!5§);
                              if(_loc3_ || _loc3_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.§@=§);
                                       if(!(_loc2_ && this))
                                       {
                                          addr170:
                                          §§push(§§pop() - this.§2Z§.§6f§.§7!%§.§7!5§);
                                          if(!_loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       param1 = §§pop();
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§+§();
                                       if(!(_loc2_ && this))
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(false);
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr58);
                                          }
                                          loop3:
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             addr114:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§@=§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§@=§ = §§pop();
                                                continue loop3;
                                             }
                                          }
                                          this.§+§();
                                          break;
                                       }
                                       if(!_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                       addr68:
                                    }
                                    addr58:
                                    return §§pop();
                                    §§push(true);
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§[§);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§[§ = §§pop();
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr170);
               }
            }
         }
         §§goto(addr114);
      }
      
      public function §-!§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§?!B§ = null;
         var _loc3_:Texture = null;
         var _loc1_:LevelItemShape = LevelItemManager.§><§(this.mName).shape;
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc1_.§'!,§());
            loop0:
            while(true)
            {
               §§push(LevelItemShape.§"c§);
               addr168:
               addr169:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               while(true)
               {
                  this.§ !4§ = _loc1_.§?[§()[0];
               }
            }
         }
         §§goto(addr175);
      }
      
      public function §2B§(param1:§?!B§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc5_ || param1)
         {
            if(!param1)
            {
               addr33:
               _loc2_ = this.§2Z§.levelMain.textureManager.§0G§();
               if(_loc5_)
               {
                  addr55:
                  §§push(this.§=@§);
                  if(!_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           this.§=@§ = new §&p§(_loc2_);
                           if(_loc5_)
                           {
                              this.§1!J§.addChild(this.§=@§);
                              loop0:
                              while(true)
                              {
                                 addr292:
                                 loop1:
                                 while(true)
                                 {
                                    if(param1)
                                    {
                                       continue loop0;
                                    }
                                    §§push(this.§=@§);
                                    loop2:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             §§push(this.§=@§);
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
                                                         if(_loc5_)
                                                         {
                                                            §§pop().x = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.§=@§);
                                                                  continue loop2;
                                                               }
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=@§);
                                                                     addr127:
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(_loc3_);
                                                                           loop13:
                                                                           while(_loc5_ || this)
                                                                           {
                                                                              §§pop().scaleX = §§pop();
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(this.§=@§);
                                                                                 if(!(_loc5_ || this))
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop().scaleY = §§pop();
                                                                                       addr307:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          addr308:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§ !4§);
                                                                                             addr320:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr321:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(LevelMain.§!5§);
                                                                                                   addr324:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      addr325:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr326:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            addr327:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_ || param1)
                                                                                                               {
                                                                                                                  §§push(this.§=@§);
                                                                                                                  break loop12;
                                                                                                                  addr334:
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr307:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ && this)
                                                                                          {
                                                                                             break loop14;
                                                                                          }
                                                                                          §§push(2);
                                                                                          if(_loc4_ && _loc3_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                       addr184:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ || _loc2_))
                                                                                    {
                                                                                       break loop11;
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc4_ && this)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    break loop10;
                                                                                 }
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr327);
                                                                              }
                                                                              while(_loc4_ && param1)
                                                                              {
                                                                                 §§goto(addr308);
                                                                              }
                                                                              §§pop().y = §§pop();
                                                                              continue loop10;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     addr238:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.pivotY);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(this.§ !4§);
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    §§push(§§pop().y);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(!(_loc4_ && _loc2_))
                                                                                       {
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             §§push(LevelMain.§!5§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr282:
                                                                                                §§goto(addr283);
                                                                                                §§push(§§pop() - §§pop() / §§pop());
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          §§goto(addr321);
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                           addr243:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr307);
                                                                        }
                                                                        §§goto(addr308);
                                                                        §§goto(addr334);
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr243);
                                                      }
                                                   }
                                                }
                                                addr173:
                                                while(true)
                                                {
                                                   §§push(this.§=@§);
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§goto(addr184);
                                                   §§push(-§§pop().height);
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
                                             addr339:
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr305:
                                       }
                                       §§goto(addr307);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr292);
                           }
                        }
                        §§goto(addr303);
                     }
                     else
                     {
                        §§push(this.§=@§);
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr173);
               }
               §§goto(addr303);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc5_)
               {
                  §§push(param1.scale);
                  if(_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr55);
         }
         §§goto(addr33);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(true);
         if(_loc6_ || param3)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || param2)
         {
            this.§[e§(param1);
            loop0:
            while(true)
            {
               §§push(this.§-v§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§#8§ = 0;
                     }
                     addr183:
                  }
                  else
                  {
                     loop6:
                     while(true)
                     {
                        if(this.mName == "BIRD_SARDINE")
                        {
                           addr35:
                           return;
                        }
                        while(true)
                        {
                           this.§+g§(param1);
                           addr147:
                           while(!_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        addr178:
                        while(true)
                        {
                           continue loop6;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(false);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      public function §+g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§!p§);
            while(true)
            {
               §§push(0);
               while(§§pop() <= §§pop())
               {
                  §§push(this.§<T§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §§push(§§pop() <= §§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc2_ && _loc3_))
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          continue loop4;
                                       }
                                       continue;
                                       addr111:
                                    }
                                 }
                              }
                           }
                           addr169:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                     }
                     §§goto(addr175);
                  }
               }
            }
         }
         §§push(this);
         §§push(this.§!p§);
         if(_loc3_ || param1)
         {
            §§push(§§pop() - param1);
         }
         §§pop().§!p§ = §§pop();
         §§goto(addr197);
      }
      
      public function §5=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§!p§ = 0;
         }
         do
         {
            this.§2B§(this.§9!d§.getFrame(0));
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §1;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               while(true)
               {
                  this.§!p§ = §&3§;
                  while(!_loc1_)
                  {
                     this.§2B§(this.§9!d§.getSubAnimation("blink").getFrame(0));
                     if(_loc1_ && _loc1_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function §4X§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§<T§);
            loop0:
            do
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§!p§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(!_loc2_)
                     {
                        if(_loc2_ && param1)
                        {
                           break;
                        }
                        §§push(§§pop() <= §§pop());
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           addr119:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr102:
                                          break;
                                          addr158:
                                       }
                                       this.§,8§();
                                    }
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       if(_loc3_ || this)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr101:
                                             break;
                                          }
                                          break loop1;
                                       }
                                       §§push(this.§<T§);
                                       continue loop0;
                                       addr176:
                                    }
                                    continue loop2;
                                 }
                                 return;
                                 addr61:
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop2;
                              }
                           }
                        }
                     }
                     else
                     {
                        addr152:
                        if(§§pop() <= §§pop())
                        {
                           if(!_loc2_)
                           {
                              this.§?!j§();
                           }
                           §§goto(addr158);
                        }
                     }
                     §§goto(addr102);
                  }
               }
               §§push(this);
               §§push(this.§<T§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§<T§ = §§pop();
               §§goto(addr176);
            }
            while(_loc2_ && param1);
            
            §§goto(addr152);
            §§push(0);
         }
         §§goto(addr101);
      }
      
      public function §?!j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§<T§ = 0;
         }
         do
         {
            this.§2B§(this.§9!d§.getFrame(0));
         }
         while(_loc2_ && this);
         
      }
      
      public function §,8§(param1:int = -1, param2:Boolean = false) : void
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
                  §§push(this.§<T§);
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
                              this.§?!j§();
                              addr263:
                              while(true)
                              {
                              }
                           }
                           addr260:
                        }
                        while(true)
                        {
                           §§push(this.§!p§);
                           if(!_loc3_)
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
                                 this.§5=§();
                                 addr252:
                                 while(!_loc4_)
                                 {
                                 }
                                 continue loop0;
                              }
                              addr249:
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc4_ && param1))
                              {
                                 if(§§pop() < 0)
                                 {
                                    loop9:
                                    for(; _loc3_; loop13:
                                    while(true)
                                    {
                                       if(_loc4_ && this)
                                       {
                                          continue loop9;
                                       }
                                       §§push(this.§'!S§);
                                       loop14:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop16:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr170:
                                                         while(_loc3_)
                                                         {
                                                            loop27:
                                                            while(true)
                                                            {
                                                               §§push(this.§-v§);
                                                               addr113:
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr114:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc4_ && param1))
                                                                     {
                                                                        break loop20;
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                                  continue loop27;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      addr169:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      addr143:
                                                      if(!_loc3_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop19:
                                                            while(true)
                                                            {
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  §§goto(addr268);
                                                               }
                                                               §§push(param2);
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        addr61:
                                                                        §§push(Boolean(§§pop()));
                                                                        if(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    if(!(_loc3_ || param2))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 LevelObject.§1!"§(param1,this.§@!Z§,§7!T§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr196);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr100:
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       continue loop19;
                                                                                    }
                                                                                    §§goto(addr102);
                                                                                 }
                                                                                 §§goto(addr19);
                                                                              }
                                                                              §§goto(addr100);
                                                                           }
                                                                           §§goto(addr170);
                                                                           addr63:
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr113);
                                                               }
                                                               §§goto(addr61);
                                                            }
                                                            §§goto(addr114);
                                                         }
                                                      }
                                                      §§goto(addr63);
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                          }
                                          §§goto(addr169);
                                       }
                                    },§§goto(addr224))
                                    {
                                       §§push(LevelItemSoundResource.§#!i§);
                                       if(_loc3_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          addr222:
                                       }
                                       while(true)
                                       {
                                          param1 = §§pop();
                                          addr224:
                                          loop10:
                                          while(true)
                                          {
                                             addr191:
                                             while(true)
                                             {
                                                this.§<T§ = §]!J§;
                                                addr196:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§2B§(this.§9!d§.getSubAnimation("yell").getFrame(0));
                                                      continue loop9;
                                                   }
                                                   §§goto(addr249);
                                                }
                                                continue loop10;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr222);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr268:
            return;
         }
         §§goto(addr172);
      }
      
      public function §[@§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_ || this)
         {
            §§push(this.§#8§);
            if(_loc7_ || param2)
            {
               §§push(0);
               if(!(_loc6_ && param2))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(this);
                        §§push(this.§#8§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§#8§ = §§pop();
                        if(_loc7_ || param1)
                        {
                           §§push(this.§#8§);
                           if(_loc7_ || param2)
                           {
                              §§push(0);
                              if(_loc7_ || this)
                              {
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§-e§);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          _loc4_.§-e§ = _loc5_;
                                       }
                                       if(!_loc6_)
                                       {
                                          §§push(this);
                                          §§push(this.§0_§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§0_§ = §§pop();
                                          §§push(this.§'!S§);
                                          loop34:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop23:
                                             while(true)
                                             {
                                                addr956:
                                                §§push(Boolean(§§pop()));
                                                if(Boolean(§§pop()))
                                                {
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr959:
                                                      loop43:
                                                      while(true)
                                                      {
                                                         §§push(this.§-e§);
                                                         if(_loc7_ || this)
                                                         {
                                                            §§push(2);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr919:
                                                               §§push(§§pop() < §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  addr921:
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           addr816:
                                                                           §§push(this.§'!S§);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr819:
                                                                              §§push(Boolean(!§§pop()));
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr824:
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr825:
                                                                                    §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          addr795:
                                                                                          §§push(Boolean(param2));
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                break loop19;
                                                                                             }
                                                                                             continue loop23;
                                                                                          }
                                                                                          §§goto(addr948);
                                                                                       }
                                                                                       §§goto(addr843);
                                                                                    }
                                                                                    addr826:
                                                                                 }
                                                                                 break loop19;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop24;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§-e§);
                                                                           addr925:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              addr926:
                                                                              while(true)
                                                                              {
                                                                                 addr928:
                                                                                 §§push(Boolean(§§pop() > §§pop()));
                                                                                 if(_loc6_ && param2)
                                                                                 {
                                                                                    continue loop34;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    addr948:
                                                                                    §§pop();
                                                                                    addr890:
                                                                                    addr891:
                                                                                    addr896:
                                                                                    §§push(this.§0_§ < -1);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr895:
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr897:
                                                                                       this.§0_§ = -1;
                                                                                       addr900:
                                                                                    }
                                                                                    this.§"§ = this.§0_§;
                                                                                    do
                                                                                    {
                                                                                       this.§#8§ = §6W§;
                                                                                    }
                                                                                    while(_loc6_);
                                                                                    
                                                                                    §§push(this);
                                                                                    §§push(this.§#8§);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() * (Math.abs(this.§"§) / 2));
                                                                                    }
                                                                                    §§pop().§#8§ = §§pop();
                                                                                    this.§'^§ = this.§#8§;
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§#3§ = 0;
                                                                                       addr843:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             break loop29;
                                                                                          }
                                                                                          continue loop29;
                                                                                       }
                                                                                    }
                                                                                    this.§8Q§ = 0;
                                                                                    addr438:
                                                                                    this.§+§();
                                                                                    return;
                                                                                    addr838:
                                                                                    addr714:
                                                                                    addr949:
                                                                                    addr872:
                                                                                    addr442:
                                                                                 }
                                                                                 §§goto(addr895);
                                                                              }
                                                                              continue loop43;
                                                                           }
                                                                        }
                                                                        §§goto(addr843);
                                                                     }
                                                                     continue loop24;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     addr806:
                                                                     this.§<9§(2.25);
                                                                     addr810:
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§#8§ = 0;
                                                                     this.§7T§ = 0;
                                                                     this.§#3§ = 0;
                                                                     addr777:
                                                                     if(_loc7_)
                                                                     {
                                                                        this.§0_§ = 0;
                                                                        addr779:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr838);
                                                                     }
                                                                     addr784:
                                                                     addr791:
                                                                  }
                                                                  §§goto(addr714);
                                                                  §§goto(addr919);
                                                               }
                                                               addr920:
                                                            }
                                                            §§goto(addr926);
                                                         }
                                                         §§goto(addr925);
                                                      }
                                                   }
                                                }
                                                §§goto(addr921);
                                             }
                                          }
                                          addr968:
                                       }
                                       else
                                       {
                                          loop42:
                                          while(true)
                                          {
                                             §§push(§"3§.§5M§(_loc3_,false));
                                             if(_loc7_ || param2)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      addr568:
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr580:
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§"§);
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(this.§"§);
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                           §§pop().§7T§ = §§pop();
                                                                           addr530:
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 loop47:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(360);
                                                                                    §§push(§"3§);
                                                                                    §§push(this.§'^§);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(this.§#8§);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr481:
                                                                                             §§push(§§pop() / this.§'^§);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop().§5M§(§§pop()));
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() * this.§8Q§);
                                                                                          }
                                                                                          §§pop().§#3§ = §§pop();
                                                                                          addr495:
                                                                                          if(_loc7_ || this)
                                                                                          {
                                                                                             addr502:
                                                                                             break;
                                                                                          }
                                                                                          addr732:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§'^§);
                                                                                             addr734:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§#8§);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr739:
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   §§push(this.§'^§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(2);
                                                                                                      addr742:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         addr743:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr744:
                                                                                                            §§push(Number(§§pop() / §§pop()));
                                                                                                            addr745:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               loop33:
                                                                                                               while(!(_loc6_ && param2))
                                                                                                               {
                                                                                                                  if(_loc7_ || param1)
                                                                                                                  {
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§"3§.§5M§(_loc3_));
                                                                                                                        while(_loc7_ || param2)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop53:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              while(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 if(!(_loc6_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * this.§"§);
                                                                                                                                 }
                                                                                                                                 §§pop().§7T§ = §§pop();
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ || param1))
                                                                                                                                    {
                                                                                                                                       break loop53;
                                                                                                                                    }
                                                                                                                                    continue loop47;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop33;
                                                                                                                           }
                                                                                                                           §§goto(addr767);
                                                                                                                        }
                                                                                                                        addr767:
                                                                                                                        §§goto(addr890);
                                                                                                                        addr702:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr968);
                                                                                                                     }
                                                                                                                     §§goto(addr806);
                                                                                                                  }
                                                                                                                  §§goto(addr923);
                                                                                                               }
                                                                                                               §§goto(addr949);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr741:
                                                                                                }
                                                                                                §§goto(addr741);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr481);
                                                                                 }
                                                                                 §§goto(addr438);
                                                                              }
                                                                              §§goto(addr900);
                                                                           }
                                                                           §§goto(addr810);
                                                                        }
                                                                        §§goto(addr959);
                                                                     }
                                                                     §§goto(addr897);
                                                                  }
                                                                  §§goto(addr826);
                                                               }
                                                               §§goto(addr734);
                                                            }
                                                            §§goto(addr745);
                                                         }
                                                         else
                                                         {
                                                            loop45:
                                                            while(true)
                                                            {
                                                               §§push(this.§#8§);
                                                               addr605:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  addr606:
                                                                  while(!_loc6_)
                                                                  {
                                                                     §§push(this.§'^§);
                                                                     while(_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(2);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    addr629:
                                                                                    while(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             addr646:
                                                                                             if(!(_loc6_ && param2))
                                                                                             {
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   if(_loc7_ || this)
                                                                                                   {
                                                                                                      continue loop42;
                                                                                                   }
                                                                                                   §§goto(addr872);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr784);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr682);
                                                                                             }
                                                                                             §§goto(addr948);
                                                                                          }
                                                                                          §§goto(addr739);
                                                                                       }
                                                                                       §§goto(addr744);
                                                                                    }
                                                                                    §§goto(addr710);
                                                                                 }
                                                                                 addr625:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          §§push(this.§'^§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc7_ || param1))
                                                                                             {
                                                                                                continue loop31;
                                                                                             }
                                                                                             §§push(2);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop45;
                                                                                                }
                                                                                                addr602:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr891);
                                                                                             }
                                                                                          }
                                                                                          addr592:
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr739);
                                                                              }
                                                                              §§goto(addr732);
                                                                           }
                                                                           §§goto(addr742);
                                                                        }
                                                                        §§goto(addr739);
                                                                     }
                                                                     §§goto(addr743);
                                                                  }
                                                                  §§goto(addr702);
                                                                  continue loop45;
                                                               }
                                                            }
                                                            addr603:
                                                         }
                                                         §§goto(addr739);
                                                      }
                                                      addr568:
                                                   }
                                                   §§goto(addr592);
                                                }
                                                §§goto(addr606);
                                             }
                                             §§goto(addr568);
                                          }
                                       }
                                       §§goto(addr948);
                                    }
                                    §§goto(addr959);
                                 }
                                 else
                                 {
                                    §§push(this.§#8§);
                                 }
                                 §§goto(addr718);
                              }
                              §§goto(addr948);
                           }
                           §§goto(addr603);
                        }
                        §§goto(addr502);
                     }
                     §§goto(addr779);
                  }
                  else
                  {
                     §§push(Math.random() * §3b§);
                     if(_loc7_ || param2)
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(param1);
                           if(!_loc6_)
                           {
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() < §§pop());
                                    loop0:
                                    for(; !_loc6_; while(true)
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             §§pop();
                                             §§goto(addr286);
                                          }
                                          break;
                                       }
                                       continue loop0;
                                       §§goto(addr133);
                                    },§§goto(addr819))
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop());
                                          loop1:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop2:
                                             while(_loc7_ || this)
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop15:
                                                         for(; _loc7_ || _loc3_; continue loop14)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  §§push(this.§'!S§);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           loop16:
                                                                           while(!_loc6_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop17:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 addr320:
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop4:
                                                                                       while(!(_loc6_ && this))
                                                                                       {
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             loop5:
                                                                                             for(; !(_loc6_ && _loc3_); if(!(_loc7_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             },if(!(_loc7_ || this))
                                                                                             {
                                                                                                continue loop4;
                                                                                             },if(_loc7_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr157);
                                                                                                }
                                                                                                §§goto(addr956);
                                                                                             },§§goto(addr824))
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop7:
                                                                                                      while(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(this.§-v§);
                                                                                                            if(!(_loc6_ && param2))
                                                                                                            {
                                                                                                               §§push(!§§pop());
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(!(_loc6_ && this))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc6_ && _loc3_)
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§goto(addr824);
                                                                                                                           }
                                                                                                                           continue loop16;
                                                                                                                           addr233:
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     §§goto(addr896);
                                                                                                                     §§goto(addr948);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr795);
                                                                                                                  }
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr133:
                                                                                                                     if(_loc6_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     if(!(_loc6_ && this))
                                                                                                                     {
                                                                                                                        addr150:
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(_loc7_ || param2)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    addr166:
                                                                                                                                    if(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       this.§<9§();
                                                                                                                                       addr176:
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       if(_loc6_ && this)
                                                                                                                                       {
                                                                                                                                          continue loop15;
                                                                                                                                       }
                                                                                                                                       if(!(_loc6_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§goto(addr948);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr580);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc6_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§;?§);
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr118);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr150);
                                                                                                                                                }
                                                                                                                                                §§goto(addr791);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr530);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          §§goto(addr166);
                                                                                                                                       }
                                                                                                                                       §§goto(addr495);
                                                                                                                                       addr286:
                                                                                                                                    }
                                                                                                                                    §§goto(addr530);
                                                                                                                                 }
                                                                                                                                 §§goto(addr176);
                                                                                                                              }
                                                                                                                              §§goto(addr948);
                                                                                                                           }
                                                                                                                           addr157:
                                                                                                                        }
                                                                                                                        §§goto(addr819);
                                                                                                                     }
                                                                                                                     §§goto(addr816);
                                                                                                                  }
                                                                                                                  §§goto(addr150);
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            §§goto(addr233);
                                                                                                         }
                                                                                                         §§goto(addr777);
                                                                                                      }
                                                                                                      §§goto(addr779);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr240);
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          §§goto(addr947);
                                                                                       }
                                                                                       §§goto(addr824);
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    addr327:
                                                                                 }
                                                                                 §§goto(addr928);
                                                                              }
                                                                              §§goto(addr825);
                                                                           }
                                                                           §§goto(addr928);
                                                                           addr315:
                                                                        }
                                                                        §§goto(addr956);
                                                                     }
                                                                     §§goto(addr795);
                                                                  }
                                                                  §§goto(addr315);
                                                               }
                                                               §§goto(addr878);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr646);
                                                            }
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      addr420:
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr956);
                                             }
                                             §§goto(addr947);
                                          }
                                       }
                                       §§goto(addr420);
                                    }
                                    §§goto(addr920);
                                 }
                                 §§goto(addr605);
                              }
                              §§goto(addr610);
                           }
                           §§goto(addr625);
                        }
                        §§goto(addr629);
                     }
                  }
                  §§goto(addr568);
               }
               §§goto(addr602);
            }
            §§goto(addr710);
         }
         §§goto(addr502);
      }
      
      public function §<9§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mName);
            while(true)
            {
               §§push("BIRD_SARDINE");
               loop1:
               while(§§pop() != §§pop())
               {
                  loop2:
                  while(true)
                  {
                     this.§-e§ = 0;
                     addr349:
                     loop3:
                     while(true)
                     {
                        this.§#8§ = §6W§;
                        loop4:
                        while(true)
                        {
                           this.§7T§ = 0;
                           while(true)
                           {
                              §§push(this);
                              §§push(0.75);
                              if(_loc3_)
                              {
                                 §§push(Math.random() * 1.5);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc3_ || param1)
                                    {
                                       addr325:
                                       §§push(-§§pop());
                                       if(!_loc2_)
                                       {
                                          addr329:
                                          §§push(§§pop() * param1);
                                       }
                                    }
                                    §§pop().§"§ = §§pop();
                                    loop6:
                                    while(_loc3_)
                                    {
                                       this.§0_§ = this.§"§;
                                       loop7:
                                       while(_loc3_ || _loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§#8§);
                                          if(_loc3_ || param1)
                                          {
                                             §§push(§§pop() * (Math.abs(this.§"§) / 3));
                                          }
                                          §§pop().§#8§ = §§pop();
                                          loop8:
                                          while(!_loc2_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break loop1;
                                             }
                                             this.§'^§ = this.§#8§;
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.mName);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push("BIRD_WHITE");
                                                   loop11:
                                                   while(!_loc2_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc2_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr250:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.mName);
                                                                        addr190:
                                                                        while(true)
                                                                        {
                                                                           §§push("BIRD_BLACK");
                                                                           addr191:
                                                                           while(true)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr211:
                                                                              if(!(_loc3_ || _loc3_))
                                                                              {
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr249:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     addr226:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                     addr226:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr178:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 this.§8Q§ = 0;
                                                                              }
                                                                              addr184:
                                                                              if(!_loc3_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(this.§#8§ >= 350)
                                                                              {
                                                                                 §§push(this);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    if(Math.random() > 0.5)
                                                                                    {
                                                                                       addr82:
                                                                                       §§push(1);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc2_)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr90:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§pop().§8Q§ = §§pop();
                                                                                       while(!(_loc2_ && this))
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr116:
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                this.§8Q§ = 0;
                                                                                                break;
                                                                                             }
                                                                                             continue loop2;
                                                                                          }
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             §§push(this);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(Math.random() > 0.5)
                                                                                                {
                                                                                                   addr44:
                                                                                                   §§push(this.§8Q§);
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc3_ || _loc2_)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(0));
                                                                                                }
                                                                                                §§pop().§8Q§ = §§pop();
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   if(!(_loc3_ || this))
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   §§goto(addr25);
                                                                                                   continue loop7;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr44);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr184);
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc2_ && this))
                                                                                       {
                                                                                          §§goto(addr25);
                                                                                       }
                                                                                       addr227:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop6;
                                                                                             }
                                                                                             §§push(this.mName);
                                                                                             if(!(_loc2_ && this))
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§goto(addr190);
                                                                                          }
                                                                                          §§goto(addr250);
                                                                                       }
                                                                                       addr25:
                                                                                       return;
                                                                                       §§goto(addr25);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(-1);
                                                                                    }
                                                                                    §§goto(addr90);
                                                                                 }
                                                                                 §§goto(addr82);
                                                                              }
                                                                              §§goto(addr116);
                                                                           }
                                                                           §§goto(addr25);
                                                                        }
                                                                     }
                                                                     addr177:
                                                                  }
                                                                  §§goto(addr227);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 §§goto(addr329);
                              }
                              §§goto(addr325);
                           }
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr349);
      }
      
      public function §+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§1!J§);
            loop0:
            while(true)
            {
               §§push(this.§`!Z§);
               addr146:
               while(true)
               {
                  §§push(LevelMain.§!5§);
                  addr149:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr150:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
               }
               loop5:
               while(true)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue loop0;
                  }
                  §§push(this.§[§);
                  if(_loc2_)
                  {
                     if(!(_loc2_ || this))
                     {
                        break;
                     }
                     §§push(this.§7T§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc1_)
                        {
                           addr137:
                           §§push(LevelMain.§!5§);
                           if(!_loc1_)
                           {
                              §§push(§§pop() / §§pop());
                           }
                           else
                           {
                              §§goto(addr149);
                           }
                        }
                        while(true)
                        {
                           §§pop().y = §§pop();
                           continue loop5;
                           addr43:
                           if(_loc1_ && _loc2_)
                           {
                              continue;
                           }
                           §§push(§§pop() / 180);
                           if(_loc2_ || _loc2_)
                           {
                              addr59:
                              if(_loc2_ || _loc1_)
                              {
                                 addr80:
                                 §§pop().rotation = §§pop() * Math.PI;
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc2_ || this)
                                 {
                                    return;
                                 }
                              }
                              else
                              {
                                 §§goto(addr150);
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                              addr151:
                           }
                           §§goto(addr80);
                        }
                     }
                  }
                  §§goto(addr137);
               }
               §§goto(addr146);
            }
         }
         §§goto(addr151);
      }
      
      public function §6q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;?§ = true;
         }
         loop0:
         while(true)
         {
            this.§'!S§ = false;
            loop1:
            while(true)
            {
               this.§-v§ = false;
               loop2:
               for(; _loc2_; if(_loc2_ || this)
               {
                  return;
               })
               {
                  this.§-e§ = 0;
                  loop3:
                  while(true)
                  {
                     this.§!m§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§#8§ = 0;
                        loop5:
                        while(true)
                        {
                           if(!(_loc1_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              this.§#8§ = 0;
                              while(_loc2_)
                              {
                                 this.§7T§ = 0;
                                 while(!_loc1_)
                                 {
                                    this.§#3§ = 0;
                                    while(_loc2_)
                                    {
                                       this.§0_§ = 0;
                                       while(_loc2_ || _loc2_)
                                       {
                                          this.§8Q§ = 0;
                                          if(!(_loc1_ && _loc2_))
                                          {
                                             if(!_loc1_)
                                             {
                                                continue loop2;
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           continue loop4;
                        }
                        continue loop1;
                     }
                  }
               }
               continue loop0;
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§`!Z§) * (param1 - this.§`!Z§) + (param2 - this.§[§) * (param2 - this.§[§));
         if(_loc5_)
         {
            §§push(_loc3_);
            §§push(this.§;4§);
            if(_loc5_ || param1)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(!_loc4_)
               {
                  addr78:
                  §§push(true);
                  if(_loc5_ || param2)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr87:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr87);
         }
         §§goto(addr78);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(this.§`!Z§);
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
                     §§push(Boolean(§§pop()));
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        if(!_loc5_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
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
                                    §§push(this.§`!Z§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param4);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!(_loc6_ || param1))
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               return §§pop();
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§push(this.§[§);
                                                                  if(_loc5_ && param3)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§push(param2);
                                                                  if(_loc5_)
                                                                  {
                                                                     addr106:
                                                                     §§push(§§pop() >= §§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!(_loc6_ || param2))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc5_ && this)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(!(_loc6_ || param2))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!(_loc6_ || param1))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr177:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§[§);
                                                                           continue loop7;
                                                                        }
                                                                     }
                                                                     addr176:
                                                                  }
                                                               }
                                                               §§goto(addr177);
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop2;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr176);
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr170);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(false);
         if(_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this.§`!Z§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr162:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc5_ || this)
                     {
                        addr174:
                        §§push(Boolean(§§pop()));
                        loop13:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(true);
                                       addr144:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr145:
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop13;
                                             }
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                    addr143:
                                 }
                                 while(true)
                                 {
                                    this.§`!Z§ = param1;
                                    loop8:
                                    while(_loc5_ || param1)
                                    {
                                       this.§[§ = param2;
                                       loop9:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             this.§!m§ = 100;
                                             while(true)
                                             {
                                                this.§+§();
                                                loop15:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         addr35:
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               return;
                                                            }
                                                            addr25:
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     this.§2Z§.§3!§();
                                                                     continue;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue;
                                                         }
                                                         addr123:
                                                         addr184:
                                                         while(true)
                                                         {
                                                            §§push(!§§pop());
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               break loop15;
                                                            }
                                                            if(_loc4_ && param2)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(!_loc5_)
                                                            {
                                                               break loop9;
                                                            }
                                                            continue loop5;
                                                            §§goto(addr35);
                                                         }
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop0;
                                                         }
                                                      }
                                                      break loop9;
                                                   }
                                                   break;
                                                }
                                                §§goto(addr145);
                                                if(_loc4_ && this)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr25);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr143);
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    §§goto(addr158);
                                 }
                              }
                           }
                        }
                        addr174:
                     }
                     §§goto(addr184);
                  }
                  §§goto(addr174);
               }
            }
         }
         §§goto(addr92);
      }
      
      public function §!,§() : §&p§
      {
         return this.§=@§;
      }
      
      public function get §`T§() : Number
      {
         return this.§#8§;
      }
      
      public function get §<k§() : Number
      {
         return this.§!m§;
      }
      
      public function set §<k§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§!m§ = param1;
         }
      }
      
      public function get §-!9§() : Number
      {
         return this.§,!]§;
      }
      
      public function get §@!5§() : Boolean
      {
         return this.§'!S§;
      }
      
      public function get radius() : Number
      {
         return this.§;4§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §-!9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§,!]§ = param1;
         }
      }
      
      public function get §!i§() : Number
      {
         return this.§>d§;
      }
      
      public function set §!i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§>d§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[+§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function get §[T§() : Number
      {
         return this.§!!Y§;
      }
      
      public function get §+b§() : Number
      {
         return this.§"!I§;
      }
   }
}
