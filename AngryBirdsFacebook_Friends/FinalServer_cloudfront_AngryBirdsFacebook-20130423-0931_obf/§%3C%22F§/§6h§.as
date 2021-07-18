package §<"F§
{
   import §,l§.§+I§;
   import §0!i§.§]q§;
   import §0D§.§3!R§;
   import §5!Y§.§9"6§;
   import §@!%§.§#!$§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §6h§ extends Sprite
   {
      
      public static const §?H§:String = "joined";
      
      public static const §8,§:String = "not-joined";
      
      public static const §8D§:String = "max-eggs-for-day";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §?H§ = "joined";
            while(true)
            {
               §8,§ = "not-joined";
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     §8D§ = "max-eggs-for-day";
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      private var §;E§:String;
      
      private var §!!Q§:MovieClip;
      
      private var §3! §:int;
      
      private var §]_§:int;
      
      private var §+!d§:Boolean;
      
      public function §6h§(param1:int, param2:String = "", param3:Boolean = false, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            super();
            while(true)
            {
               this.§]_§ = param1;
               loop1:
               while(true)
               {
                  this.§+!d§ = param3;
                  addr96:
                  while(true)
                  {
                     this.§7!U§(param2);
                     continue loop1;
                  }
               }
            }
         }
         while(param4)
         {
            if(_loc6_)
            {
               if(_loc6_)
               {
                  this.§9"%§.§7"T§.addEventListener(§]q§.§!"D§,this.§^O§);
                  addr54:
                  if(!_loc6_)
                  {
                     continue;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  §§goto(addr82);
               }
               §§goto(addr96);
            }
            §§goto(addr54);
         }
      }
      
      public function §<s§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§!!Q§.eggBasket.gotoAndPlay("pulse");
         }
      }
      
      private function §7!U§(param1:String = "") : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != "")
            {
               this.§`",§(param1);
               if(!_loc3_)
               {
                  if(_loc3_)
                  {
                     addr105:
                     this.§`",§(§8,§);
                     addr108:
                  }
                  return;
               }
               loop0:
               while(true)
               {
                  if(!(_loc3_ && param1))
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(_loc2_)
                        {
                        }
                        §§goto(addr108);
                     }
                     else
                     {
                        loop1:
                        while(true)
                        {
                           this.§`",§(§8D§);
                           addr94:
                           loop2:
                           for(; _loc3_; continue loop1)
                           {
                              while(true)
                              {
                                 §§push(this.§9"%§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§§pop().§7"T§);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop().§<!'§());
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             §§push(this.§9"%§);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop().§7"T§);
                                             if(_loc2_)
                                             {
                                                §§push(§§pop().§+4§());
                                                if(!_loc3_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      continue loop2;
                                                   }
                                                   continue loop0;
                                                }
                                                continue;
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr105);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                           §§goto(addr105);
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr94);
               }
               §§goto(addr105);
            }
            §§goto(addr100);
         }
         §§goto(addr96);
      }
      
      private function §^O§(param1:§]q§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§7!U§();
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§!!Q§ != null)
            {
               while(true)
               {
                  if(this.§!!Q§.eggBasket)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(_loc2_ && _loc2_)
                        {
                           break;
                        }
                        if(this.§!!Q§.eggBasket.currentFrame == this.§!!Q§.eggBasket.totalFrames)
                        {
                        }
                        do
                        {
                           this.§<!z§(this.§9"%§.§7"T§.§5t§());
                           if(_loc2_)
                           {
                              continue;
                           }
                        }
                        while(!(_loc3_ || this));
                        
                        return;
                        addr24:
                     }
                     while(_loc3_ || param1)
                     {
                        this.§!!Q§.eggBasket.gotoAndStop("normal");
                        while(true)
                        {
                        }
                        §§goto(addr33);
                     }
                     continue;
                  }
                  §§goto(addr24);
               }
            }
            return;
         }
         §§goto(addr101);
      }
      
      private function §`",§(param1:String) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Class = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            this.§;E§ = param1;
            if(_loc7_ || this)
            {
               if(this.§!!Q§)
               {
                  if(_loc7_)
                  {
                     if(this.contains(this.§!!Q§))
                     {
                        if(_loc7_)
                        {
                           removeChild(this.§!!Q§);
                        }
                     }
                  }
               }
            }
         }
         var _loc5_:* = param1;
         if(_loc7_ || _loc2_)
         {
            §§push(§?H§);
            if(!_loc6_)
            {
               §§push(_loc5_);
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(0);
                        if(!(_loc7_ || _loc3_))
                        {
                           addr132:
                        }
                     }
                     else
                     {
                        addr136:
                        §§push(2);
                        if(!_loc7_)
                        {
                        }
                     }
                     addr144:
                     switch(§§pop())
                     {
                        case 0:
                           _loc2_ = §?q§.§ q§("WonderlandEggRaffle");
                           if(_loc7_)
                           {
                              break;
                           }
                           loop0:
                           while(true)
                           {
                              (this.§!!Q§.enterCompetition as SimpleButton).addEventListener(MouseEvent.CLICK,this.§8S§);
                              loop1:
                              while(true)
                              {
                                 addr390:
                                 while(true)
                                 {
                                    addChild(this.§!!Q§);
                                    loop2:
                                    while(true)
                                    {
                                       if(this.§!!Q§.eggMeter)
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          addr389:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(this.§9"%§);
                                             addr347:
                                             while(true)
                                             {
                                                §§push(§§pop().§7"T§);
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(§§pop().§-"5§);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      loop7:
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr351:
                                                         while(_loc7_ || _loc2_)
                                                         {
                                                            §§push(this.§9"%§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop().§7"T§);
                                                               addr317:
                                                               while(_loc7_ || _loc3_)
                                                               {
                                                                  §§push(§§pop().§,"!§);
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!(_loc7_ || this))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!(_loc7_ || param1))
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     this.§!!Q§.eggMeter.eggsCollectedTextfield.text = _loc3_ + "/" + _loc4_ + " collected";
                                                                     while(!_loc6_)
                                                                     {
                                                                        this.§!!Q§.eggMeter.stretcher.gotoAndStop(Math.floor(_loc3_ / _loc4_ * this.§!!Q§.eggMeter.stretcher.totalFrames));
                                                                        while(!_loc6_)
                                                                        {
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                     addr237:
                                                                     while(_loc7_ || param1)
                                                                     {
                                                                        this.§!!Q§.collectMoreTextfield.text = "Raffle Ends in:";
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
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
                                          if(this.§!!Q§.eggBasket)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                this.§!!Q§.eggBasket.gotoAndStop("normal");
                                                loop16:
                                                while(_loc7_)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      while(this.§!!Q§.collectMoreTextfield)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || _loc3_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            continue loop16;
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr157);
                                                      addr200:
                                                   }
                                                   §§goto(addr351);
                                                }
                                                §§goto(addr294);
                                             }
                                          }
                                          §§goto(addr200);
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           break;
                           addr400:
                        case 1:
                           _loc2_ = §?q§.§ q§("WonderlandEggRaffleNotJoined");
                           break;
                        case 2:
                           _loc2_ = §?q§.§ q§("WonderlandEggRaffleMaxEggs");
                     }
                     this.§!!Q§ = new _loc2_();
                     if(!_loc6_)
                     {
                        if(this.§!!Q§.enterCompetition)
                        {
                           §§goto(addr400);
                        }
                        §§goto(addr390);
                     }
                     §§goto(addr180);
                  }
                  else
                  {
                     §§push(§8,§);
                     if(_loc7_ || _loc2_)
                     {
                        §§push(_loc5_);
                        if(!(_loc6_ && param1))
                        {
                           addr126:
                           if(§§pop() === §§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr129:
                                 §§push(1);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr132);
                                 }
                              }
                              else
                              {
                                 §§goto(addr136);
                              }
                              §§goto(addr144);
                           }
                           else
                           {
                              addr134:
                              §§push(§8D§);
                              §§push(_loc5_);
                           }
                           §§goto(addr136);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr136);
                        }
                        else
                        {
                           §§push(3);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr134);
                  }
               }
               §§goto(addr126);
            }
            §§goto(addr134);
         }
         §§goto(addr129);
      }
      
      protected function §8S§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§9"%§.§7"T§.§+!!§())
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr46:
                  §9"6§.§2!U§(AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§4"P§ + §["M§.§0<§));
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§!!Q§ != null)
            {
               loop0:
               while(true)
               {
                  (this.§!!Q§.enterCompetition as SimpleButton).removeEventListener(MouseEvent.MOUSE_UP,this.§8S§);
                  while(true)
                  {
                     this.§9"%§.§7"T§.removeEventListener(§]q§.§!"D§,this.§^O§);
                     loop2:
                     for(; _loc2_; if(_loc1_ && _loc1_)
                     {
                        continue;
                     },if(_loc2_ || _loc2_)
                     {
                        return;
                     })
                     {
                        this.§!!Q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                        loop3:
                        while(true)
                        {
                           if(this.contains(this.§!!Q§))
                           {
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              this.§!!Q§ = null;
                              if(_loc2_ || _loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              addr79:
                              while(!_loc1_)
                              {
                                 continue loop6;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr130);
      }
      
      public function §<!z§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(this.§!!Q§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc3_)
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§!!Q§.timeLeft.text = §3!R§.§"A§(Math.round(param1 / 1000));
                           addr80:
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(this.§!!Q§.timeLeft));
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr86:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr80);
                  }
                  return;
               }
               §§goto(addr86);
            }
         }
         §§goto(addr80);
      }
      
      public function get eggs() : int
      {
         return this.§3! §;
      }
      
      public function set eggs(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§3! § = param1;
            loop0:
            while(true)
            {
               §§push(Boolean(this.§!!Q§));
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(§§pop())
                     {
                        if(_loc2_ || _loc2_)
                        {
                           while(true)
                           {
                              this.§!!Q§.eggAmount.text = param1 + "/" + this.§]_§;
                           }
                           addr71:
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                                 break loop4;
                              }
                              continue loop0;
                           }
                           addr92:
                           while(true)
                           {
                              §§push(Boolean(this.§!!Q§.eggAmount));
                              if(!(_loc2_ || _loc3_))
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              §§pop();
                              §§goto(addr93);
                           }
                           addr93:
                        }
                     }
                     return;
                     addr52:
                  }
                  §§goto(addr92);
               }
            }
         }
         §§goto(addr71);
      }
      
      private function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
