package §'i§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.§^!]§;
   import §62§.§0!t§;
   import §62§.§9o§;
   import §9!O§.§0x§;
   import §^!y§.§'"#§;
   import §^[§.Inventory;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class §5A§ extends EventDispatcher implements §8p§, IEventDispatcher
   {
       
      
      private var §6!^§:§'!;§;
      
      private var §4!X§:§3^§;
      
      private var §=!3§:MovieClip;
      
      private var §3C§:MovieClip;
      
      private var §1<§:MovieClip;
      
      private var §`"%§:§`!T§;
      
      private var § !k§:§`!T§;
      
      private var §[!7§:§`!T§;
      
      private var §>!s§:§`!T§;
      
      private var §"3§:§`!T§;
      
      private var §>!S§:Boolean = false;
      
      private var §5!G§:Number = 1;
      
      private var §%!D§:int = 0;
      
      private var §]!3§:§="#§;
      
      private var §""8§:§="#§;
      
      private var §5!v§:§="#§;
      
      public function §5A§(param1:§'!;§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§6!^§ = param1;
               while(true)
               {
                  this.addEventListener(§9o§.§,0§,this.§^j§);
                  addr379:
                  while(true)
                  {
                     §§push(this.§6!^§);
                     addr355:
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§8#§);
                        addr356:
                        while(true)
                        {
                           §§push(§0!t§.CHANGE);
                           addr358:
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§@^§);
                              continue loop3;
                           }
                        }
                     }
                  }
                  while(_loc3_ || _loc3_)
                  {
                     this.§ !k§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_ProfileBar_Right") as §`!T§;
                     loop8:
                     while(!(_loc2_ && this))
                     {
                        this.§`"%§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_ProfileBar_Left") as §`!T§;
                        while(true)
                        {
                           this.§[!7§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Blocks_Small") as §`!T§;
                           loop10:
                           while(true)
                           {
                              this.§>!s§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Bolts_Small") as §`!T§;
                              while(true)
                              {
                                 this.§"3§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Coins_Small") as §`!T§;
                                 loop12:
                                 while(_loc3_ || param1)
                                 {
                                    this.§]!3§ = this.§[!7§.getItemByName("Button_Add_Blocks") as §="#§;
                                    loop13:
                                    while(true)
                                    {
                                       this.§""8§ = this.§[!7§.getItemByName("Button_Add_Bolts") as §="#§;
                                       loop14:
                                       while(true)
                                       {
                                          this.§]!3§ = this.§"3§.getItemByName("Button_Add_Coins") as §="#§;
                                          loop15:
                                          while(_loc3_)
                                          {
                                             §§push(this);
                                             §§push(this.§ !k§.getItemByName("Container_XP_Bar"));
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push((§§pop() as §`!T§).getItemByName("MovieClip_XP_Progress_Small"));
                                             }
                                             §§pop().§=!3§ = (§§pop() as §%+§).mClip;
                                             loop16:
                                             while(!_loc2_)
                                             {
                                                §§push(this);
                                                §§push(this.§[!7§.getItemByName("Container_Blocks_Bar"));
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§push((§§pop() as §`!T§).getItemByName("MovieClip_Blocks_Progress_Small"));
                                                }
                                                §§pop().§3C§ = (§§pop() as §%+§).mClip;
                                                loop17:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§>!s§.getItemByName("Container_Bolts_Bar"));
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push((§§pop() as §`!T§).getItemByName("MovieClip_Bolts_Progress_Small"));
                                                   }
                                                   §§pop().§1<§ = (§§pop() as §%+§).mClip;
                                                   loop18:
                                                   for(; !_loc2_; if(_loc3_ || _loc3_)
                                                   {
                                                      continue loop15;
                                                   })
                                                   {
                                                      §§push(param1.§+"2§);
                                                      while(true)
                                                      {
                                                         §§push(§0!t§.§+8§);
                                                         addr120:
                                                         while(true)
                                                         {
                                                            §§pop().addEventListener(§§pop(),this.§=[§);
                                                            continue loop10;
                                                         }
                                                         addr34:
                                                         if(!(_loc3_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§0!t§.§%"+§);
                                                         if(!(_loc2_ && this))
                                                         {
                                                            addr50:
                                                            §§pop().addEventListener(§§pop(),this.§=[§);
                                                            if(!(_loc2_ && _loc3_))
                                                            {
                                                               continue loop18;
                                                            }
                                                            while(true)
                                                            {
                                                               if(_loc2_ && param1)
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               addr114:
                                                               §§push(param1.§+"2§);
                                                               if(!(_loc2_ && _loc2_))
                                                               {
                                                                  §§goto(addr34);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§0!t§.§>!n§);
                                                                     §§goto(addr114);
                                                                  }
                                                                  addr96:
                                                               }
                                                               §§goto(addr50);
                                                            }
                                                            §§goto(addr361);
                                                            addr103:
                                                         }
                                                         while(!_loc2_)
                                                         {
                                                            §§pop().addEventListener(§§pop(),this.§=[§);
                                                            §§goto(addr103);
                                                         }
                                                         §§goto(addr120);
                                                      }
                                                   }
                                                   continue loop16;
                                                }
                                             }
                                             continue loop13;
                                             if(!(_loc2_ && this))
                                             {
                                                continue loop14;
                                             }
                                          }
                                          continue loop12;
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc3_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    return;
                                 }
                                 continue loop0;
                              }
                              continue loop8;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr178);
      }
      
      protected function §=[§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = param1.type;
         if(!(_loc3_ && _loc3_))
         {
            §§push(§0!t§.§+8§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() === _loc2_)
               {
                  if(_loc4_ || param1)
                  {
                     §§push(0);
                     if(_loc4_ || param1)
                     {
                     }
                     §§goto(addr151);
                  }
                  else
                  {
                     §§goto(addr115);
                  }
               }
               else
               {
                  §§push(§0!t§.§>!n§);
                  if(_loc4_)
                  {
                     addr111:
                     if(§§pop() === _loc2_)
                     {
                        if(_loc4_)
                        {
                           addr115:
                           §§push(1);
                           if(!(_loc4_ || param1))
                           {
                              addr146:
                           }
                        }
                        else
                        {
                           addr128:
                           §§push(2);
                           if(_loc4_ || param1)
                           {
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr151);
                     }
                     else
                     {
                        §§push(§0!t§.§%"+§);
                     }
                     §§goto(addr128);
                  }
                  if(§§pop() === _loc2_)
                  {
                     §§goto(addr128);
                  }
                  else
                  {
                     §§push(3);
                  }
               }
               addr151:
               switch(§§pop())
               {
                  case 0:
                     §^!]§.§>!c§();
                     addr45:
                     break;
                     addr55:
                  case 1:
                     §^!]§.§ !]§();
                     break;
                     addr50:
                  case 2:
                     §0x§.§2=§.§"""§(§0x§.§5!C§,1);
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!(_loc3_ && param1))
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr55);
                           }
                           §§goto(addr45);
                        }
                        else
                        {
                           §§goto(addr50);
                        }
                     }
               }
               return;
            }
            §§goto(addr111);
         }
         §§goto(addr128);
      }
      
      protected function §&!#§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §^!]§.§3"4§("We have run out of blocks! Buy me some new ones!");
         }
      }
      
      private function §@^§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§3^§ = null;
         if(!(_loc8_ && param1))
         {
            §§push(this.§6!^§);
            loop0:
            while(true)
            {
               §§push(§§pop().§8#§);
               addr266:
               while(true)
               {
                  §§push(§§pop().§4!3§());
                  addr267:
                  while(§§pop() != (AngryBirdsFP11.§>" § as §'"#§).blocks)
                  {
                     while(true)
                     {
                        §§push((AngryBirdsFP11.§>" § as §'"#§).blocks);
                        addr278:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr279:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr280:
                              while(true)
                              {
                                 §§push(this.§6!^§);
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
                  addr325:
                  return;
               }
            }
         }
         §§goto(addr224);
      }
      
      private function §8!>§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3^§ = this.§1d§(0,1,§7!E§.§+!E§);
         if(!(_loc3_ && _loc3_))
         {
            _loc1_.play();
         }
         do
         {
            §§push(this.§[!7§.getItemByName("Container_Blocks_Bar"));
            if(!_loc3_)
            {
               §§push((§§pop() as §`!T§).getItemByName("TextField_Blocks_Progress_Small_Text"));
            }
            (§§pop() as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).§!T§.toString());
         }
         while(_loc3_ && _loc3_);
         
      }
      
      private function §^j§(param1:§9o§ = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§%!D§ = (AngryBirdsFP11.§>" § as §'"#§).§!T§;
            loop0:
            while(true)
            {
               this.§4a§();
               while(true)
               {
                  this.§2!s§();
                  while(!_loc7_)
                  {
                     if(!_loc7_)
                     {
                        do
                        {
                           this.§<![§();
                           do
                           {
                              this.§',§();
                           }
                           while(!_loc6_);
                           
                        }
                        while(_loc6_);
                        
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr33);
         }
         var _loc2_:§3^§ = this.§,!i§();
         §§push((AngryBirdsFP11.§>" § as §'"#§).§=!Q§ / (AngryBirdsFP11.§>" § as §'"#§).§!T§);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || _loc3_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop())
               {
               }
               §§goto(addr112);
            }
            _loc3_ = §§pop();
         }
         addr112:
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(1));
         }
         var _loc4_:§3^§ = this.§1d§(0,_loc3_);
         var _loc5_:§3^§ = this.§ !g§();
         if(!(_loc7_ && param1))
         {
            this.§4!X§ = §7!E§.§2=§.§7#§(_loc2_,_loc4_,_loc5_);
         }
         loop6:
         do
         {
            §§push(this.§4!X§);
            while(true)
            {
               §§pop().onComplete = this.§6"#§;
               while(true)
               {
                  §§push(this.§4!X§);
                  if(!_loc6_)
                  {
                     break;
                  }
                  §§pop().play();
                  if(!(_loc7_ && this))
                  {
                     continue loop6;
                  }
               }
            }
         }
         while(!_loc6_);
         
      }
      
      private function § !g§() : §3^§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Number = 0;
         §§push((AngryBirdsFP11.§>" § as §'"#§).bolts / (AngryBirdsFP11.§>" § as §'"#§).boltsMax);
         if(_loc3_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§1<§.scaleX = _loc1_;
            do
            {
               §§push(this.§4!X§);
               if(!(_loc4_ && this))
               {
                  if(§§pop() == null)
                  {
                     return §7!E§.§2=§.§<!C§(this.§1<§,{"scaleX":_loc2_},{"scaleX":_loc1_},2,§7!E§.§8""§);
                     addr42:
                  }
                  if(_loc4_ && this)
                  {
                     continue;
                  }
                  §§push(this.§4!X§);
               }
               §§pop().stop();
            }
            while(!(_loc3_ || this));
            
         }
         §§goto(addr42);
      }
      
      private function §1d§(param1:Number, param2:Number, param3:Function = null) : §3^§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            §§push(param3);
            if(_loc5_)
            {
               if(§§pop() == null)
               {
                  if(!_loc4_)
                  {
                     addr33:
                     param3 = §7!E§.§+!E§;
                     addr35:
                     §§push(param1);
                     if(!(_loc4_ && param3))
                     {
                        §§push(0);
                        if(_loc5_ || param3)
                        {
                           if(§§pop() < §§pop())
                           {
                              if(_loc5_)
                              {
                                 addr54:
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc5_)
                                    {
                                       param1 = §§pop();
                                       if(!_loc4_)
                                       {
                                          addr198:
                                          §§push(param1);
                                          loop0:
                                          while(true)
                                          {
                                             §§push(1);
                                             addr200:
                                             loop1:
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   addr201:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      addr202:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr203:
                                                         while(true)
                                                         {
                                                            param1 = §§pop();
                                                            addr204:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr201:
                                                }
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop6:
                                                   while(true)
                                                   {
                                                      param2 = §§pop();
                                                      while(true)
                                                      {
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_ || this)
                                                               {
                                                                  addr115:
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc5_ || param3)
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           addr152:
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              if(!(_loc5_ || param3))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§push(1);
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr149:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             break loop5;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    addr148:
                                                                                 }
                                                                                 §§goto(addr202);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr185:
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr201);
                                                                           }
                                                                           addr152:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§3C§.scaleX = param1;
                                                                           if(!(_loc4_ && param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        return §7!E§.§2=§.§<!C§(this.§3C§,{"scaleX":param2},{"scaleX":param1},0.4,param3);
                                                                     }
                                                                     addr172:
                                                                     while(!_loc4_)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr185);
                                                                           }
                                                                           addr184:
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop1;
                                                                     §§goto(addr204);
                                                                  }
                                                                  addr115:
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr149);
                                                         }
                                                         param2 = §§pop();
                                                         §§goto(addr152);
                                                      }
                                                   }
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr54);
               }
               §§goto(addr35);
            }
            §§goto(addr33);
         }
         §§goto(addr201);
      }
      
      private function §,!i§() : §3^§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push((AngryBirdsFP11.§>" § as §'"#§).oldXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push((AngryBirdsFP11.§>" § as §'"#§).newXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push(Number(0));
                     addr123:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr124:
                        while(true)
                        {
                        }
                     }
                     addr99:
                     if(!(_loc3_ || _loc1_))
                     {
                        continue;
                     }
                     return §7!E§.§2=§.§<!C§(this.§=!3§,{"scaleX":_loc2_},{"scaleX":_loc1_},0.8,§7!E§.§8""§);
                     addr106:
                  }
               }
               while(true)
               {
                  this.§=!3§.scaleX = _loc1_;
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  §§goto(addr99);
               }
               §§goto(addr106);
            }
            §§goto(addr123);
         }
         §§goto(addr124);
      }
      
      private function §4a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§[!7§.getItemByName("Container_Blocks_Bar"));
            if(_loc1_)
            {
               §§push((§§pop() as §`!T§).getItemByName("TextField_Blocks_Progress_Small_Text"));
            }
            (§§pop() as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).blocks.toString());
         }
      }
      
      private function §2!s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§ !k§.getItemByName("Container_XP_Small"));
            if(!(_loc2_ && _loc1_))
            {
               §§push((§§pop() as §`!T§).getItemByName("Container_Profile_XP"));
               if(!(_loc2_ && _loc2_))
               {
                  addr50:
                  §§push((§§pop() as §`!T§).getItemByName("TextField_Progress_Level"));
               }
               (§§pop() as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).§'L§().toString());
               §§goto(addr73);
            }
            §§goto(addr50);
         }
         addr73:
      }
      
      private function §<![§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§>!s§.getItemByName("Container_Bolts_Bar"));
            if(_loc1_)
            {
               §§push((§§pop() as §`!T§).getItemByName("TextField_Bolts_Small_Text"));
            }
            (§§pop() as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).bolts.toString());
         }
      }
      
      private function §',§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§"3§.getItemByName("Container_Coins_Bar"));
            if(!(_loc1_ && _loc2_))
            {
               §§push((§§pop() as §`!T§).getItemByName("TextField_Coins_Small_Text"));
            }
            (§§pop() as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).coins.toString());
         }
      }
      
      private function §6"#§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§`!T§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Blocks_Small") as §`!T§;
         if(_loc6_)
         {
            _loc1_.getItemByName("Container_Blocks_Bar");
            if(!_loc5_)
            {
               addr34:
               §§push(_loc1_.getItemByName("Container_Blocks_Bar"));
               if(!(_loc5_ && _loc1_))
               {
                  §§push((§§pop() as §`!T§).getItemByName("TextField_Blocks_Progress_Small_Text"));
               }
               (§§pop() as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).blocks.toString());
            }
            var _loc2_:§`!T§ = this.§6!^§.§+"2§.§9B§().getItemByName("Container_Bolts_Small") as §`!T§;
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.getItemByName("Container_Bolts_Bar");
            }
            §§push(_loc1_.getItemByName("Container_Blocks_Bar"));
            if(_loc6_)
            {
               §§push((§§pop() as §`!T§).getItemByName("MovieClip_Blocks_Progress_Small"));
            }
            var _loc3_:MovieClip = (§§pop() as §%+§).mClip;
            §§push(_loc2_.getItemByName("Container_Bolts_Bar"));
            if(!_loc5_)
            {
               §§push((§§pop() as §`!T§).getItemByName("MovieClip_Bolts_Progress_Small"));
            }
            var _loc4_:MovieClip = (§§pop() as §%+§).mClip;
            return;
         }
         §§goto(addr34);
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^j§();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_ || param1)
         {
            if(!this.§>!S§)
            {
               loop0:
               while(true)
               {
                  this.§>!S§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.§>" §);
                     while(true)
                     {
                        §§push((§§pop() as §'"#§).newXp);
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§>" §);
                           while(true)
                           {
                              §§push((§§pop() as §'"#§).maxXp);
                              while(true)
                              {
                                 §§push(§§pop() / §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          this.§=!3§.scaleX = _loc2_;
                                          loop9:
                                          while(!_loc5_)
                                          {
                                             §§push(AngryBirdsFP11.§>" §);
                                             loop10:
                                             while(true)
                                             {
                                                §§push((§§pop() as §'"#§).§=!Q§);
                                                addr152:
                                                while(true)
                                                {
                                                   §§push(AngryBirdsFP11.§>" §);
                                                   addr154:
                                                   while(true)
                                                   {
                                                      §§push((§§pop() as §'"#§).§!T§);
                                                      addr157:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr158:
                                                         while(!_loc5_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               loop16:
                                                               while(!_loc5_)
                                                               {
                                                                  this.§3C§.scaleX = _loc3_;
                                                                  while(!_loc5_)
                                                                  {
                                                                     continue loop10;
                                                                     _loc4_ = §§pop();
                                                                     do
                                                                     {
                                                                        this.§1<§.scaleX = _loc4_;
                                                                     }
                                                                     while(!_loc6_);
                                                                     
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              addr31:
                                                                              return;
                                                                              addr63:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        continue loop16;
                                                                     }
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          continue loop0;
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
            §§goto(addr31);
         }
         §§goto(addr63);
      }
      
      public function activate() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§>!S§ = false;
         }
         §§push((AngryBirdsFP11.§>" § as §'"#§).newXp / (AngryBirdsFP11.§>" § as §'"#§).maxXp);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc4_ && this))
         {
            this.§=!3§.scaleX = 0;
            if(_loc5_ || _loc2_)
            {
               this.§=!3§.scaleX = _loc1_;
               addr65:
            }
            §§push((AngryBirdsFP11.§>" § as §'"#§).§=!Q§ / (AngryBirdsFP11.§>" § as §'"#§).§!T§);
            if(_loc5_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
            {
               this.§3C§.scaleX = _loc2_;
            }
            §§push((AngryBirdsFP11.§>" § as §'"#§).bolts / (AngryBirdsFP11.§>" § as §'"#§).boltsMax);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc5_ || _loc2_)
            {
               this.§1<§.scaleX = _loc3_;
            }
            do
            {
               this.§8!>§();
            }
            while(!(_loc5_ || _loc1_));
            
            return;
         }
         §§goto(addr65);
      }
      
      public function §["$§(param1:String) : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:String = null;
         var _loc2_:Vector.<String> = (AngryBirdsFP11.§>" § as §'"#§).§]!s§;
         if(_loc7_ || _loc2_)
         {
            if(_loc2_ == null)
            {
               if(_loc7_ || _loc2_)
               {
                  return true;
               }
            }
         }
         var _loc4_:int = 0;
         var _loc5_:* = _loc2_;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_ || param1)
               {
                  §§push(Inventory.§1!>§(param1,_loc3_));
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(true);
                        break;
                     }
                  }
               }
            }
            return false;
         }
         return §§pop();
      }
   }
}
