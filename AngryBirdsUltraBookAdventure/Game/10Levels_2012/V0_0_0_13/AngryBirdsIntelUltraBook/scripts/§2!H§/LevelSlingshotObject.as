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
               addr122:
               loop1:
               while(true)
               {
                  §[W§ = 200;
                  while(true)
                  {
                     §2!e§ = 200;
                     addr61:
                     if(_loc2_ || _loc1_)
                     {
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr122);
            }
         }
         §§goto(addr112);
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§8E§ = param1;
               while(true)
               {
                  this.§'6§ = param2;
                  addr115:
                  if(!(_loc6_ && param2))
                  {
                     this.§+%§ = false;
                     loop10:
                     while(true)
                     {
                        if(_loc7_ || param2)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           this.§&!=§ = false;
                           while(!(_loc6_ && param3))
                           {
                              this.§79§ = 0;
                              while(!(_loc6_ && param3))
                              {
                                 this.§?E§();
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop10;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    this.§`!%§ = param4;
                                    loop5:
                                    while(true)
                                    {
                                       this.§else§ = param5;
                                       loop6:
                                       while(true)
                                       {
                                          this.§-!c§ = param4;
                                          while(_loc7_)
                                          {
                                             if(!_loc6_)
                                             {
                                                this.§%!#§ = param5;
                                                do
                                                {
                                                   this.§1!8§ = 0;
                                                   continue loop6;
                                                }
                                                while(_loc6_);
                                                
                                                if(!_loc6_)
                                                {
                                                   return;
                                                }
                                                continue;
                                             }
                                             addr171:
                                             while(true)
                                             {
                                                this.§0!_§ = LevelItemManager.§&!i§(this.mName).§,!9§;
                                                continue loop4;
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                                 if(!(_loc7_ || param2))
                                 {
                                    continue;
                                 }
                                 §§goto(addr42);
                              }
                           }
                           while(true)
                           {
                              this.mName = param3;
                              §§goto(addr171);
                              §§goto(addr72);
                           }
                           addr72:
                        }
                        §§goto(addr108);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §&#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
                  if(!_loc1_)
                  {
                     addr51:
                     this.§'6§.dispose();
                  }
                  do
                  {
                     this.§'6§ = null;
                  }
                  while(_loc1_);
                  
                  addr40:
               }
               return;
            }
            §§goto(addr51);
         }
         §§goto(addr40);
      }
      
      public function §&!A§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§&!=§);
            if(_loc2_ || _loc2_)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        loop27:
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(this.§+%§);
                              if(_loc3_ && _loc2_)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§4P§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop5:
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      this.§-Q§ = 0;
                                                      loop7:
                                                      while(true)
                                                      {
                                                         this.§7h§ = 0;
                                                         loop8:
                                                         while(true)
                                                         {
                                                            this.§1!8§ = 0;
                                                            loop9:
                                                            while(true)
                                                            {
                                                               this.§,r§ = 0;
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  this.§4P§ = 0;
                                                                  while(true)
                                                                  {
                                                                     loop16:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§else§);
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 §§push(param1);
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() / 50);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(this.§%!X§);
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          §§push(§§pop() / §<_§);
                                                                                       }
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() - §§pop());
                                                                              }
                                                                              §§pop().§else§ = §§pop();
                                                                              loop17:
                                                                              do
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§1!8§);
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(360 - this.§1!8§);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr188:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc2_ || _loc3_)
                                                                                          {
                                                                                             §§push(this.§%!X§);
                                                                                          }
                                                                                          §§pop().§1!8§ = §§pop() + §§pop();
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§%!X§);
                                                                                             if(_loc2_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() - param1);
                                                                                             }
                                                                                             §§pop().§%!X§ = §§pop();
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§%!X§);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   if(_loc3_ && param1)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(0);
                                                                                                   if(_loc3_ && param1)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      loop26:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§;E§();
                                                                                                         if(_loc2_ || _loc2_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         loop25:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc3_ && this))
                                                                                                            {
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            addr94:
                                                                                                            addr316:
                                                                                                            while(_loc2_ || param1)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  this.§1!8§ = 0;
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            for(; _loc2_; §§goto(addr62))
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  if(_loc2_ || this)
                                                                                                                  {
                                                                                                                     this.§+%§ = true;
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                            }
                                                                                                            addr62:
                                                                                                            while(!_loc3_)
                                                                                                            {
                                                                                                               this.§&!=§ = false;
                                                                                                               §§goto(addr76);
                                                                                                            }
                                                                                                            addr76:
                                                                                                            while(_loc2_)
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(this.§else§);
                                                                                                               if(_loc2_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     §§push(this.§8E§.§else§);
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - this.§else§);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr264:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              addr269:
                                                                                                                              §§push(§§pop() / this.§%!X§);
                                                                                                                           }
                                                                                                                           §§pop().§else§ = §§pop() + §§pop();
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        §§goto(addr269);
                                                                                                                     }
                                                                                                                     §§goto(addr264);
                                                                                                                  }
                                                                                                                  §§goto(addr269);
                                                                                                               }
                                                                                                               §§goto(addr264);
                                                                                                            }
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         this.§`!%§ = this.§8E§.§`!%§;
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                      continue loop18;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1 = §§pop();
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr327:
                                                                                                }
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   if(_loc3_ && _loc2_)
                                                                                                   {
                                                                                                      §§goto(addr399);
                                                                                                   }
                                                                                                   §§push(this);
                                                                                                   §§push(this.§`!%§);
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §§push(param1);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§8E§.§`!%§);
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§`!%§);
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               addr308:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  addr313:
                                                                                                                  §§push(§§pop() / this.§%!X§);
                                                                                                               }
                                                                                                               §§pop().§`!%§ = §§pop() + §§pop();
                                                                                                               §§goto(addr316);
                                                                                                            }
                                                                                                            §§goto(addr313);
                                                                                                         }
                                                                                                         §§goto(addr308);
                                                                                                      }
                                                                                                      §§goto(addr313);
                                                                                                   }
                                                                                                   §§goto(addr308);
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() / §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr188);
                                                                              }
                                                                              while(_loc3_ && _loc3_);
                                                                              
                                                                              if(_loc2_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop10;
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
                                                   §§goto(addr327);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr399);
                                 }
                                 break;
                              }
                              addr398:
                              continue loop27;
                           }
                        }
                        addr424:
                     }
                     while(true)
                     {
                        §§goto(addr398);
                        §§goto(addr386);
                     }
                  }
               }
            }
            §§goto(addr424);
         }
         addr399:
      }
      
      public function §61§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
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
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                     addr88:
                     while(_loc1_)
                     {
                        continue loop1;
                        this.§7h§ = 0;
                        if(_loc1_ || _loc2_)
                        {
                           addr39:
                           break loop2;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §=!F§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§+%§);
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc3_ || _loc3_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(this.§]§);
                              while(true)
                              {
                                 §§push(0);
                                 while(true)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(_loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                       }
                                       addr415:
                                    }
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(this.§'0§);
                                          while(true)
                                          {
                                             if(§§pop() > this.§8E§.§"!>§.§'g§.§ !c§)
                                             {
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§8E§.§"!>§.§'g§.§ !c§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() - this.§'0§);
                                                   }
                                                   §§push(§§pop().§3T§(§§pop()));
                                                   addr447:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr448:
                                                      while(true)
                                                      {
                                                         this.§]§ = -1;
                                                         addr406:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                addr425:
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(this.§]§);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§]§ = §§pop();
                                                §§goto(addr401);
                                             }
                                          }
                                       }
                                    }
                                    return;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr415);
                  }
               }
            }
         }
         addr401:
         loop16:
         while(true)
         {
            §§push(this.§]§);
            if(!_loc4_)
            {
               §§push(0);
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() > §§pop())
                  {
                     break loop7;
                  }
                  if(_loc3_)
                  {
                     addr362:
                     §§push(this.§-Q§);
                     if(_loc3_ || param1)
                     {
                        continue loop5;
                     }
                     continue loop9;
                  }
               }
               else
               {
                  addr377:
                  if(_loc4_)
                  {
                     continue loop6;
                  }
                  if(§§pop() > §§pop())
                  {
                     addr380:
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(0);
                        loop18:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop19:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              loop20:
                              while(!(_loc4_ && _loc3_))
                              {
                                 §§push(!isNaN(this.§'0§));
                                 loop21:
                                 while(!_loc4_)
                                 {
                                    if(§§pop())
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          §§push(this.§8E§);
                                          addr310:
                                          while(true)
                                          {
                                             §§push(§§pop().§"!>§);
                                             addr311:
                                             while(true)
                                             {
                                                §§push(§§pop().objects);
                                                addr312:
                                                while(true)
                                                {
                                                   §§push(§§pop().§ !f§(this.§`!%§,this.§'0§));
                                                   addr317:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      addr318:
                                                      while(_loc3_ || this)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr262:
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               continue loop22;
                                                            }
                                                         }
                                                      }
                                                      continue loop18;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc3_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                continue loop19;
                                             }
                                             if(§§pop() < 0)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§goto(addr262);
                                                }
                                                break;
                                             }
                                             §§push(this.§8E§);
                                             while(true)
                                             {
                                                §§push(§§pop().§"!>§);
                                                addr181:
                                                addr76:
                                                while(true)
                                                {
                                                   §§push(§§pop().objects);
                                                   addr182:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      addr183:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§`T§(§§pop()));
                                                         addr184:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§9!-§);
                                                            if(_loc3_ || this)
                                                            {
                                                               §§push(!§§pop());
                                                            }
                                                            addr193:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               §§push(§§pop().§&E§());
                                                               addr124:
                                                               continue loop7;
                                                               if(!(_loc3_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     this.§]§ = 500;
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 break loop7;
                                                                              }
                                                                              addr227:
                                                                              if(_loc3_)
                                                                              {
                                                                                 this.§0V§ = false;
                                                                                 this.§]§ = -1;
                                                                                 addr232:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr425);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr144:
                                                                              if(_loc3_)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop20;
                                                                                 }
                                                                                 this.§0V§ = false;
                                                                                 addr151:
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr239);
                                                                              }
                                                                           }
                                                                           if(_loc4_ && _loc2_)
                                                                           {
                                                                              §§goto(addr232);
                                                                           }
                                                                           break loop7;
                                                                        }
                                                                        §§goto(addr151);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr59:
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              break loop7;
                                                                           }
                                                                           §§goto(addr380);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr296);
                                                                        }
                                                                     }
                                                                     §§goto(addr175);
                                                                  }
                                                                  §§goto(addr144);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr285);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§push(this.§8E§);
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc4_)
                                                {
                                                   §§push(§§pop().§"!>§);
                                                   if(_loc3_)
                                                   {
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(§§pop().objects);
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  §§push(§§pop().§`T§(§§pop()));
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§goto(addr124);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr184);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr312);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr182);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr311);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                else
                                                {
                                                   §§goto(addr310);
                                                }
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr317);
                                       }
                                       §§goto(addr318);
                                       §§goto(addr326);
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr447);
                              }
                              §§goto(addr391);
                           }
                        }
                     }
                  }
                  §§goto(addr448);
               }
               §§goto(addr380);
            }
            §§goto(addr362);
         }
         this.§]§ = this.§-Q§;
         addr391:
      }
      
      public function §3T§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§else§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§else§ = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this);
            §§push(this.§'0§);
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'0§ = §§pop();
            loop1:
            do
            {
               §§push(this.§'0§);
               if(!_loc2_)
               {
                  §§push(this.§8E§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop().§"!>§);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop().§'g§);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop().§ !c§);
                           if(_loc3_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 loop2:
                                 do
                                 {
                                    this.§;E§();
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             if(!(_loc2_ && param1))
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(false);
                                                   if(_loc3_ || _loc3_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§goto(addr59);
                                                }
                                                continue loop0;
                                             }
                                             addr151:
                                             §§push(this.§'0§);
                                             if(_loc3_ || this)
                                             {
                                                addr175:
                                                addr174:
                                                addr173:
                                                addr172:
                                                §§push(§§pop() - this.§8E§.§"!>§.§'g§.§ !c§);
                                                if(!_loc3_)
                                                {
                                                }
                                                addr179:
                                                param1 = §§pop();
                                                §§push(this);
                                                §§push(this.§else§);
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() - param1);
                                                }
                                                §§pop().§else§ = §§pop();
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§'0§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(§§pop() - param1);
                                                   }
                                                   §§pop().§'0§ = §§pop();
                                                   break loop2;
                                                }
                                                continue loop1;
                                                addr180:
                                                addr116:
                                             }
                                             §§goto(addr179);
                                             §§push(Number(§§pop()));
                                          }
                                          §§goto(addr180);
                                       }
                                       else
                                       {
                                          §§push(true);
                                          addr67:
                                       }
                                       addr59:
                                    }
                                    continue;
                                    return §§pop();
                                 }
                                 while(_loc3_);
                                 
                                 while(true)
                                 {
                                    if(_loc3_ || this)
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr116);
                                 }
                              }
                              §§goto(addr151);
                           }
                           §§goto(addr175);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr173);
                  }
                  §§goto(addr172);
               }
               §§goto(addr175);
            }
            while(_loc2_ && param1);
            
            this.§;E§();
            §§goto(addr67);
         }
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
               addr158:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               loop6:
               while(true)
               {
                  this.§2!V§ = _loc1_.§6!^§()[0];
                  loop7:
                  while(true)
                  {
                     this.§2!§ = _loc1_.§[v§;
                     loop8:
                     while(true)
                     {
                        addr83:
                        loop4:
                        while(true)
                        {
                           this.§=n§ = this.§8E§.§"!>§.animationManager.getAnimation(this.mName);
                           loop5:
                           while(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 continue loop7;
                              }
                              if(_loc5_ && this)
                              {
                                 continue loop6;
                              }
                              if(this.§=n§)
                              {
                                 this.§9!1§(this.§=n§.getFrame(0));
                                 if(!(_loc5_ && this))
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          addr33:
                                          return;
                                          addr58:
                                       }
                                       continue loop8;
                                    }
                                    addr64:
                                    if(!_loc4_)
                                    {
                                       continue;
                                    }
                                    this.§9!1§(null);
                                 }
                                 if(_loc4_)
                                 {
                                    break loop4;
                                 }
                                 addr146:
                                 while(true)
                                 {
                                    this.§2!§ = 1.5;
                                    break loop5;
                                 }
                              }
                              §§goto(addr64);
                           }
                           while(true)
                           {
                              continue loop4;
                           }
                        }
                        §§goto(addr33);
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §9!1§(param1:§;K§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc4_)
         {
            if(!param1)
            {
               addr27:
               _loc2_ = this.§8E§.levelMain.textureManager.§;?§();
               if(_loc4_)
               {
                  §§goto(addr54);
               }
               §§goto(addr292);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc4_)
               {
                  §§push(param1.scale);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            addr54:
            §§push(this.§"!P§);
            if(!_loc5_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc5_ && this))
                  {
                     this.§"!P§ = new §-m§(_loc2_);
                     if(!_loc5_)
                     {
                        this.§'6§.addChild(this.§"!P§);
                        while(true)
                        {
                           while(true)
                           {
                              if(param1)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    addr292:
                                    while(true)
                                    {
                                       §§push(this.§"!P§);
                                       loop23:
                                       while(true)
                                       {
                                          §§push(param1.pivotX);
                                          loop24:
                                          while(true)
                                          {
                                             §§push(-§§pop());
                                             loop14:
                                             while(true)
                                             {
                                                §§push(this.§2!V§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(LevelMain.§8N§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§pop().x = §§pop();
                                                               addr316:
                                                               while(true)
                                                               {
                                                                  §§push(this.§"!P§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     §§push(param1.pivotY);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     addr241:
                                                                     §§push(-§§pop());
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        §§push(this.§2!V§);
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        §§push(§§pop().y);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(LevelMain.§8N§);
                                                                           if(!(_loc4_ || param1))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ && _loc2_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           §§pop().y = §§pop();
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§"!P§);
                                                                                 §§goto(addr122);
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
                                       }
                                    }
                                    addr292:
                                 }
                                 §§goto(addr316);
                              }
                              else
                              {
                                 §§push(this.§"!P§);
                              }
                              §§goto(addr215);
                           }
                        }
                     }
                     §§goto(addr292);
                  }
                  §§goto(addr316);
               }
               else
               {
                  §§push(this.§"!P§);
               }
               §§goto(addr321);
            }
            addr122:
            loop28:
            while(true)
            {
               §§push(_loc3_);
               addr123:
               loop29:
               while(_loc4_)
               {
                  if(!(_loc5_ && param1))
                  {
                     §§pop().scaleX = §§pop();
                     while(!_loc5_)
                     {
                        continue loop28;
                        §§pop().scaleY = §§pop();
                        do
                        {
                           this.§;E§();
                        }
                        while(!(_loc4_ || param1));
                        
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              break loop28;
                           }
                        }
                        else
                        {
                           loop7:
                           while(true)
                           {
                              if(!(_loc4_ || _loc2_))
                              {
                                 continue loop18;
                              }
                              §§push(this.§"!P§);
                              loop8:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       continue loop17;
                                    }
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(this.§"!P§);
                                       if(_loc4_)
                                       {
                                          §§push(-§§pop().height);
                                          if(_loc4_ || param1)
                                          {
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue loop9;
                                                }
                                                addr192:
                                                §§push(2);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   break loop29;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop20;
                                                   }
                                                   §§push(2);
                                                }
                                                addr219:
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                addr223:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop7;
                                                }
                                                §§goto(addr192);
                                             }
                                          }
                                          break loop29;
                                       }
                                       while(true)
                                       {
                                       }
                                       addr217:
                                       §§goto(addr219);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§pop().texture = _loc2_;
                                          break loop8;
                                       }
                                       addr321:
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr215:
                                 }
                                 §§goto(addr217);
                              }
                           }
                        }
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           continue loop19;
                        }
                        continue loop25;
                     }
                     addr202:
                  }
                  else
                  {
                     §§goto(addr223);
                  }
               }
               while(true)
               {
                  §§pop().y = §§pop();
                  §§goto(addr202);
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(true);
         if(_loc5_ || this)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
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
                     while(true)
                     {
                        this.§-Q§ = 0;
                        while(true)
                        {
                           §§push(false);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Boolean(§§pop()));
                           }
                           addr181:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              addr182:
                              addr115:
                              while(true)
                              {
                              }
                              if(!(_loc5_ || this))
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          addr66:
                                          §§goto(addr29);
                                       }
                                       continue loop1;
                                       addr65:
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr182);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.mName == "BIRD_SARDINE")
                     {
                        addr29:
                        loop12:
                        while(§§pop())
                        {
                           if(!_loc6_)
                           {
                              if(!(_loc5_ || param1))
                              {
                                 loop13:
                                 while(!_loc6_)
                                 {
                                    if(_loc5_ || param3)
                                    {
                                       §§push(param3);
                                       if(_loc5_ || this)
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(true);
                                             if(!_loc6_)
                                             {
                                                continue loop9;
                                             }
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop13;
                                          }
                                          continue;
                                       }
                                       continue loop12;
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              if(_loc6_)
                              {
                                 continue loop0;
                              }
                              addr78:
                              if(_loc5_ || this)
                              {
                                 this.§!F§(param1,param2);
                                 addr100:
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 break loop10;
                              }
                              while(true)
                              {
                                 this.§%!c§(param1);
                                 continue loop0;
                                 §§goto(addr78);
                              }
                           }
                           §§goto(addr100);
                        }
                        return;
                     }
                     if(_loc5_)
                     {
                        while(true)
                        {
                           this.§<!e§(param1);
                        }
                        addr166:
                     }
                     §§goto(addr170);
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      public function §<!e§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§79§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§-!d§);
                     loop2:
                     for(; !_loc2_; while(true)
                     {
                        §§push(Math.random() * §;§);
                        if(_loc2_ && _loc3_)
                        {
                           break;
                        }
                        §§goto(addr87);
                        §§push(§§pop() < param1);
                     })
                     {
                        §§push(0);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() <= §§pop());
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           loop3:
                           while(true)
                           {
                              §§push(§§pop());
                              loop4:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!(_loc3_ || this))
                                             {
                                                break;
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop5;
                                          }
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc2_ && _loc3_)
                                                      {
                                                         §§push(this.§79§);
                                                         break loop2;
                                                      }
                                                      addr212:
                                                      addr212:
                                                      continue loop11;
                                                   }
                                                   continue loop3;
                                                   addr138:
                                                }
                                                else
                                                {
                                                   addr168:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop11;
                                                }
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr40);
                                       }
                                       continue loop4;
                                       addr105:
                                    }
                                    §§goto(addr168);
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr191:
                           if(!_loc3_)
                           {
                              continue loop1;
                           }
                           if(§§pop() <= §§pop())
                           {
                              §§goto(addr194);
                           }
                        }
                        §§goto(addr146);
                     }
                     continue loop0;
                  }
                  §§goto(addr204);
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §3!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§79§ = 0;
            do
            {
               this.§9!1§(this.§=n§.getFrame(0));
            }
            while(!_loc2_);
            
         }
      }
      
      public function § !9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.mName != "BIRD_SARDINE")
            {
               do
               {
                  this.§79§ = §[W§;
                  do
                  {
                     this.§9!1§(this.§=n§.getSubAnimation("blink").getFrame(0));
                  }
                  while(!_loc2_);
                  
               }
               while(!(_loc2_ || this));
               
               if(!(_loc1_ && _loc2_))
               {
                  return;
                  addr75:
               }
            }
            return;
         }
         §§goto(addr75);
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
               addr160:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     §§push(this.§79§);
                     continue loop0;
                  }
                  if(_loc3_ || param1)
                  {
                     §§push(this);
                     §§push(this.§-!d§);
                     if(_loc3_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§-!d§ = §§pop();
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §,3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-!d§ = 0;
         }
         do
         {
            this.§9!1§(this.§=n§.getFrame(0));
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §&_§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
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
                           if(_loc4_)
                           {
                              this.§,3§();
                              addr264:
                              while(true)
                              {
                              }
                              addr264:
                           }
                           §§goto(addr264);
                        }
                        while(true)
                        {
                           §§push(this.§79§);
                           if(_loc3_ && param1)
                           {
                              break;
                           }
                           §§push(0);
                           if(!_loc4_)
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§3!'§();
                                 addr253:
                                 while(true)
                                 {
                                 }
                              }
                              addr250:
                           }
                           loop6:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc4_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    if(!(_loc3_ && param2))
                                    {
                                       §§push(LevelItemSoundResource.§?!,§);
                                       if(_loc4_)
                                       {
                                          addr209:
                                          §§push(int(§§pop()));
                                       }
                                       param1 = §§pop();
                                    }
                                    loop7:
                                    while(!(_loc3_ && param2))
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          §§goto(addr269);
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             continue loop7;
                                          }
                                          if(!_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop0;
                                             }
                                             this.§9!1§(this.§=n§.getSubAnimation("yell").getFrame(0));
                                             loop10:
                                             while(true)
                                             {
                                                §§push(this.§+%§);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop());
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§push(param2);
                                                                           if(_loc4_ || param1)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(!(_loc3_ && this))
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr31:
                                                                                    LevelObject.§=I§(param1,this.§0!_§,§%!j§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop10;
                                                                                    addr86:
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              addr118:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr161:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr162:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§&!=§);
                                                                                       continue loop11;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    break loop16;
                                                                                 }
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    LevelObject.§=I§(param1,this.§0!_§);
                                                                                    break loop16;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              §§goto(addr31);
                                                                           }
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           break loop14;
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                  }
                                                                  §§goto(addr86);
                                                               }
                                                               addr25:
                                                               return;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr250);
                                          }
                                       }
                                       continue loop6;
                                    }
                                    §§goto(addr264);
                                 }
                                 while(true)
                                 {
                                    this.§-!d§ = §2!e§;
                                    §§goto(addr179);
                                 }
                              }
                              §§goto(addr209);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr269:
            return;
         }
         §§goto(addr264);
      }
      
      public function §!F§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         if(_loc7_ || param1)
         {
            §§push(this.§-Q§);
            if(!(_loc6_ && param2))
            {
               §§push(0);
               if(!(_loc6_ && _loc3_))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(this);
                        §§push(this.§-Q§);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - param1);
                        }
                        §§pop().§-Q§ = §§pop();
                        if(_loc7_)
                        {
                           §§push(this.§-Q§);
                           if(_loc7_)
                           {
                              §§push(0);
                              if(!_loc6_)
                              {
                                 addr63:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§+!M§);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_ || param2)
                                       {
                                          _loc4_.§+!M§ = _loc5_;
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(this);
                                          §§push(this.§,r§);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * 0.4);
                                          }
                                          §§pop().§,r§ = §§pop();
                                          addr923:
                                          §§push(this.§+%§);
                                          loop43:
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             loop37:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop27:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr929:
                                                               while(true)
                                                               {
                                                                  §§push(this.§+!M§);
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() < §§pop());
                                                                        loop30:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr882:
                                                                           addr884:
                                                                           loop31:
                                                                           while(!§§pop())
                                                                           {
                                                                              §§push(this.§+%§);
                                                                              loop32:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 addr888:
                                                                                 while(true)
                                                                                 {
                                                                                    addr889:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc7_ || param2)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc7_ || param2)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop27;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       while(§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§,r§);
                                                                                             addr851:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-1);
                                                                                                addr852:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr854:
                                                                                                   §§push(Boolean(§§pop() < §§pop()));
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break loop32;
                                                                                                   }
                                                                                                   continue loop43;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break loop32;
                                                                                       addr917:
                                                                                    }
                                                                                    continue loop37;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       this.§,r§ = -1;
                                                                                       addr861:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    addr858:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§><§ = this.§,r§;
                                                                                    addr840:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc7_ || param2))
                                                                                       {
                                                                                          break loop31;
                                                                                       }
                                                                                       this.§-Q§ = §!!5§;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§-Q§);
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             §§push(§§pop() * (Math.abs(this.§><§) / 2));
                                                                                          }
                                                                                          §§pop().§-Q§ = §§pop();
                                                                                          loop77:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§0a§ = this.§-Q§;
                                                                                             addr807:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§1!8§ = 0;
                                                                                                continue loop77;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§+!M§);
                                                                              break loop29;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr888);
                                                                     }
                                                                     addr887:
                                                                  }
                                                                  break loop29;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr887);
                                                            }
                                                         }
                                                         §§goto(addr882);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr938:
                                          addr923:
                                       }
                                       else
                                       {
                                          loop70:
                                          while(true)
                                          {
                                             §§push(§]n§.§1!R§(_loc3_));
                                             addr615:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr616:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr617:
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(_loc7_ || param2)
                                                      {
                                                         addr600:
                                                         §§push(this);
                                                         §§push(_loc3_);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§§pop() * this.§><§);
                                                         }
                                                         §§pop().§7h§ = §§pop();
                                                         loop71:
                                                         while(true)
                                                         {
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  loop42:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(360);
                                                                     §§push(§]n§);
                                                                     §§push(this.§0a§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(this.§-Q§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              addr428:
                                                                              §§push(§§pop() / this.§0a§);
                                                                           }
                                                                           §§push(§§pop() * §§pop().§1!R§(§§pop()));
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(§§pop() * this.§4P§);
                                                                           }
                                                                           §§pop().§1!8§ = §§pop();
                                                                           addr442:
                                                                           if(!(_loc7_ || this))
                                                                           {
                                                                              while(_loc7_ || this)
                                                                              {
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§><§);
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(this.§><§);
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§pop().§7h§ = §§pop();
                                                                                    addr482:
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop42;
                                                                                    }
                                                                                    §§goto(addr861);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr938);
                                                                                 }
                                                                              }
                                                                              break;
                                                                              addr528:
                                                                           }
                                                                           §§goto(addr386);
                                                                           §§goto(addr923);
                                                                        }
                                                                     }
                                                                     §§goto(addr428);
                                                                  }
                                                                  §§goto(addr929);
                                                               }
                                                               §§goto(addr729);
                                                            }
                                                            else
                                                            {
                                                               while(_loc7_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        §§push(this.§0a§);
                                                                        while(_loc7_)
                                                                        {
                                                                           addr667:
                                                                           §§push(this.§-Q§);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr678:
                                                                                 §§push(this.§0a§);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       addr677:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                    }
                                                                                    addr676:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 addr678:
                                                                              }
                                                                              addr679:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr680:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    continue loop70;
                                                                                 }
                                                                              }
                                                                              §§goto(addr667);
                                                                           }
                                                                           §§goto(addr710);
                                                                        }
                                                                        §§goto(addr851);
                                                                        addr665:
                                                                     }
                                                                     §§goto(addr834);
                                                                  }
                                                                  break loop71;
                                                               }
                                                               §§goto(addr703);
                                                               addr652:
                                                            }
                                                            §§goto(addr834);
                                                         }
                                                         §§goto(addr789);
                                                         addr600:
                                                      }
                                                      §§goto(addr858);
                                                   }
                                                }
                                             }
                                          }
                                          addr681:
                                       }
                                       §§goto(addr710);
                                    }
                                    else
                                    {
                                       loop68:
                                       while(true)
                                       {
                                          this.§?!'§();
                                          loop69:
                                          while(true)
                                          {
                                             if(!(_loc6_ && this))
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr681);
                                                }
                                                §§goto(addr99);
                                             }
                                             else
                                             {
                                                loop9:
                                                for(; !_loc6_; continue loop69)
                                                {
                                                   if(!(_loc6_ && param2))
                                                   {
                                                      §§push(this.§&!=§);
                                                      loop10:
                                                      for(; _loc7_ || param1; if(!(_loc7_ || param2))
                                                      {
                                                         continue;
                                                      },if(_loc7_ || param2)
                                                      {
                                                         §§goto(addr163);
                                                      },§§goto(addr330))
                                                      {
                                                         if(_loc7_ || param1)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc7_ || param1)
                                                            {
                                                               addr240:
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     addr249:
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr260:
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc7_ || param1)
                                                                              {
                                                                                 if(_loc7_ || param2)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop17:
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!(_loc7_ || param1))
                                                                                             {
                                                                                                continue loop69;
                                                                                             }
                                                                                             addr179:
                                                                                             if(_loc7_ || _loc3_)
                                                                                             {
                                                                                                if(_loc7_ || param2)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && param2))
                                                                                                      {
                                                                                                         continue loop68;
                                                                                                      }
                                                                                                      §§goto(addr617);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr590:
                                                                                                      §§push(§]n§.§1!R§(_loc3_,false));
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr499:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop62:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               if(_loc7_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc6_ && param2))
                                                                                                                  {
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        §§goto(addr528);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§0a§);
                                                                                                                           if(_loc7_)
                                                                                                                           {
                                                                                                                              §§push(2);
                                                                                                                              if(_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                    {
                                                                                                                                       §§push(this.§0a§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(2);
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             while(_loc7_)
                                                                                                                                             {
                                                                                                                                                addr554:
                                                                                                                                                §§push(this.§-Q§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§0a§);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               §§push(2);
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  addr576:
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     if(_loc7_)
                                                                                                                                                                     {
                                                                                                                                                                        while(!(_loc6_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              addr589:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                 §§goto(addr590);
                                                                                                                                                                              }
                                                                                                                                                                              addr589:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr665);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr616);
                                                                                                                                                                        addr579:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr589);
                                                                                                                                                                  }
                                                                                                                                                                  addr576:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr677);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr576);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr679);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr579);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                                §§goto(addr678);
                                                                                                                                             }
                                                                                                                                             break loop62;
                                                                                                                                             addr552:
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr852);
                                                                                                                                       addr548:
                                                                                                                                    }
                                                                                                                                    §§goto(addr652);
                                                                                                                                 }
                                                                                                                                 §§goto(addr676);
                                                                                                                              }
                                                                                                                              §§goto(addr677);
                                                                                                                           }
                                                                                                                           §§goto(addr678);
                                                                                                                        }
                                                                                                                        addr636:
                                                                                                                     }
                                                                                                                     §§goto(addr919);
                                                                                                                  }
                                                                                                                  §§goto(addr680);
                                                                                                               }
                                                                                                               §§goto(addr548);
                                                                                                            }
                                                                                                            §§goto(addr552);
                                                                                                         }
                                                                                                         addr499:
                                                                                                      }
                                                                                                      §§goto(addr499);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop5:
                                                                                                   while(!(_loc6_ && this))
                                                                                                   {
                                                                                                      §§push(this.§+%§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(_loc7_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(_loc7_)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              loop18:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr314:
                                                                                                                                 loop12:
                                                                                                                                 while(_loc7_ || param2)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    while(!(_loc6_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!§§pop())
                                                                                                                                       {
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                       while(_loc7_ || param2)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          continue loop9;
                                                                                                                                       }
                                                                                                                                       §§goto(addr889);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       break loop12;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       break loop7;
                                                                                                                                    }
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr240);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        addr310:
                                                                                                                     }
                                                                                                                     §§goto(addr854);
                                                                                                                  }
                                                                                                                  §§goto(addr330);
                                                                                                               }
                                                                                                               §§goto(addr854);
                                                                                                            }
                                                                                                            §§goto(addr713);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr163:
                                                                                                         if(!(_loc6_ && _loc3_))
                                                                                                         {
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr717);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr442);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop16:
                                                                                                for(; _loc7_; §§goto(addr179))
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(this.§0V§);
                                                                                                      if(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      addr147:
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr373:
                                                                                                      addr277:
                                                                                                      while(_loc7_ || _loc3_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr374:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr375);
                                                                                                         }
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      addr277:
                                                                                                   }
                                                                                                   §§goto(addr718);
                                                                                                }
                                                                                                §§goto(addr482);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr99);
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr763);
                                                                                 }
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr322);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr260);
                                                                     }
                                                                     §§goto(addr773);
                                                                  }
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            §§goto(addr249);
                                                         }
                                                         §§goto(addr883);
                                                      }
                                                      §§goto(addr758);
                                                   }
                                                   §§goto(addr600);
                                                }
                                                §§goto(addr390);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr600);
                                 }
                                 else
                                 {
                                    §§push(this.§-Q§);
                                 }
                                 §§goto(addr636);
                              }
                              §§goto(addr852);
                           }
                           else
                           {
                              addr365:
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr373);
                                       §§push(§§pop() < §§pop());
                                    }
                                    §§goto(addr669);
                                 }
                                 §§goto(addr556);
                              }
                           }
                           §§goto(addr576);
                        }
                        §§goto(addr459);
                     }
                     §§goto(addr884);
                  }
                  else
                  {
                     §§push(Math.random() * §4"§);
                     if(_loc7_)
                     {
                        if(_loc7_ || _loc3_)
                        {
                           §§goto(addr365);
                        }
                        §§goto(addr589);
                     }
                  }
                  §§goto(addr499);
               }
               §§goto(addr63);
            }
            §§goto(addr589);
         }
         §§goto(addr834);
      }
      
      public function §?!'§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.mName);
            loop0:
            while(true)
            {
               §§push("BIRD_SARDINE");
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     while(true)
                     {
                        this.§+!M§ = 0;
                        while(true)
                        {
                           this.§-Q§ = §!!5§;
                           while(true)
                           {
                              this.§7h§ = 0;
                              while(true)
                              {
                                 §§push(this);
                                 §§push(0.75);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(Math.random() * 1.5);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc3_)
                                       {
                                       }
                                       §§goto(addr365);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§goto(addr365);
                              }
                           }
                        }
                     }
                  }
                  addr365:
                  §§push(-§§pop());
                  if(_loc3_)
                  {
                     §§push(param1);
                  }
                  §§pop().§><§ = §§pop();
                  loop6:
                  while(!_loc2_)
                  {
                     this.§,r§ = this.§><§;
                     loop7:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§-Q§);
                        if(_loc3_ || this)
                        {
                           §§push(§§pop() * (Math.abs(this.§><§) / 3));
                        }
                        §§pop().§-Q§ = §§pop();
                        loop8:
                        while(true)
                        {
                           this.§0a§ = this.§-Q§;
                           loop9:
                           while(true)
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
                                       §§push(Boolean(§§pop()));
                                       loop13:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop14:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop15:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop24:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_)
                                                      {
                                                         if(!(_loc3_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc2_ && this)
                                                      {
                                                         continue loop15;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop8;
                                                         }
                                                         addr271:
                                                      }
                                                      else
                                                      {
                                                         loop25:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(this.§-Q§ >= 350)
                                                               {
                                                                  §§push(this);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(Math.random() > 0.5)
                                                                     {
                                                                        §§goto(addr85);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(-1);
                                                                     }
                                                                     §§goto(addr103);
                                                                  }
                                                                  addr85:
                                                                  §§push(1);
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc3_ || param1)
                                                                     {
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr103:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  §§pop().§4P§ = §§pop();
                                                                  do
                                                                  {
                                                                     if(_loc2_ && _loc3_)
                                                                     {
                                                                        addr148:
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(!(_loc3_ || param1))
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr231:
                                                                        }
                                                                        §§goto(addr25);
                                                                     }
                                                                     if(_loc2_)
                                                                     {
                                                                        addr131:
                                                                        if(!(_loc2_ && _loc2_))
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr292:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(this.mName);
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§push(this.mName);
                                                                                 continue loop0;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 addr168:
                                                                                 §§push("RED_BIG");
                                                                                 if(!(_loc2_ && this))
                                                                                 {
                                                                                    if(!(_loc3_ || this))
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    if(!(_loc3_ || _loc3_))
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop13;
                                                                                          }
                                                                                          if(!(_loc3_ || param1))
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          addr215:
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop25;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop24;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr291);
                                                                                          addr246:
                                                                                       }
                                                                                       §§goto(addr271);
                                                                                    }
                                                                                    §§goto(addr215);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr168);
                                                                                    }
                                                                                    addr245:
                                                                                 }
                                                                                 §§goto(addr246);
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     if(!(_loc2_ && this))
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this);
                                                                           if(_loc3_ || this)
                                                                           {
                                                                              if(Math.random() <= 0.5)
                                                                              {
                                                                                 §§push(Number(0));
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           §§push(this.§4P§);
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc2_ && this)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           continue;
                                                                        }
                                                                        addr390:
                                                                        while(true)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr219:
                                                                        if(!(_loc3_ || _loc3_))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        this.§4P§ = 0;
                                                                     }
                                                                     §§goto(addr231);
                                                                  }
                                                                  while(§§pop().§4P§ = §§pop(), _loc2_);
                                                                  
                                                                  addr25:
                                                                  return;
                                                               }
                                                               §§goto(addr131);
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                      }
                                                   }
                                                   continue loop14;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                }
                                                addr291:
                                                §§goto(addr292);
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
                  return;
               }
            }
         }
         §§goto(addr390);
      }
      
      public function §;E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§'6§);
            loop0:
            while(true)
            {
               §§push(this.§`!%§);
               addr151:
               while(true)
               {
                  §§push(LevelMain.§8N§);
                  addr154:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     addr155:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr156:
                        while(true)
                        {
                           §§push(this.§'6§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §3=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§0V§ = true;
            loop0:
            while(true)
            {
               this.§+%§ = false;
               loop1:
               while(true)
               {
                  this.§&!=§ = false;
                  loop2:
                  while(true)
                  {
                     this.§+!M§ = 0;
                     while(true)
                     {
                        this.§]§ = 0;
                        while(_loc2_)
                        {
                           continue loop2;
                           addr85:
                           if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    this.§1!8§ = 0;
                                    loop9:
                                    while(_loc2_)
                                    {
                                       this.§,r§ = 0;
                                       while(true)
                                       {
                                          if(_loc2_ || _loc1_)
                                          {
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop9;
                                       }
                                       continue loop1;
                                    }
                                    while(!(_loc1_ && _loc2_))
                                    {
                                       §§goto(addr85);
                                    }
                                    §§goto(addr99);
                                 }
                                 return;
                                 addr94:
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
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
            if(!(_loc5_ && param1))
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc4_)
               {
                  §§push(true);
                  if(!_loc5_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr81:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr81);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§`!%§);
            loop0:
            while(true)
            {
               §§push(param3);
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc5_ || param3)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                              }
                              addr177:
                           }
                           else
                           {
                              addr150:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr151:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    continue loop4;
                                 }
                              }
                              addr150:
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc6_ && param1)
                  {
                     continue loop0;
                  }
                  §§goto(addr121);
                  §§push(param4);
               }
            }
         }
         §§goto(addr178);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(false);
         if(!_loc5_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§`!%§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr175:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr176:
                  while(true)
                  {
                     §§push(!§§pop());
                     addr177:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr178:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                           }
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
                                          addr162:
                                          addr183:
                                          while(_loc4_ || _loc3_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr171:
                                                §§goto(addr114);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                             §§goto(addr162);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§`!%§ = param1;
                                       §§goto(addr129);
                                    }
                                 }
                              }
                              addr159:
                           }
                           §§goto(addr183);
                        }
                     }
                  }
               }
            }
         }
         addr114:
         while(true)
         {
         }
         loop18:
         while(true)
         {
            §§push(_loc3_);
            if(_loc4_ || _loc3_)
            {
               if(!(_loc5_ && _loc3_))
               {
                  if(!_loc5_)
                  {
                     if(_loc4_ || this)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_)
                              {
                                 if(!(_loc4_ || _loc3_))
                                 {
                                    continue loop17;
                                 }
                                 this.§8E§.§<!i§();
                                 addr69:
                                 if(_loc4_ || param2)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(!(_loc5_ && param2))
                                          {
                                             break;
                                          }
                                          §§goto(addr171);
                                       }
                                       while(true)
                                       {
                                          this.§else§ = param2;
                                       }
                                       addr129:
                                    }
                                    while(true)
                                    {
                                       this.§]§ = 100;
                                       §§goto(addr76);
                                    }
                                    addr76:
                                 }
                                 while(true)
                                 {
                                    this.§;E§();
                                    §§goto(addr69);
                                 }
                              }
                              while(!(_loc5_ && param1))
                              {
                                 continue loop18;
                              }
                              continue loop0;
                           }
                           §§goto(addr69);
                        }
                        break;
                     }
                     continue loop2;
                  }
                  continue loop16;
               }
               continue loop7;
            }
            continue loop8;
         }
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
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
         if(!_loc2_)
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
