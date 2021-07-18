package §0D§
{
   import §%!I§.§6"'§;
   import §%!I§.§7"1§;
   import §%!I§.§]!M§;
   import §,l§.§#!>§;
   import §,l§.§;!O§;
   import §5!Y§.§9"6§;
   import §8!^§.§,p§;
   import §8!^§.§15§;
   import §8!^§.§;!7§;
   import §8";§.§+d§;
   import §9@§.§4Z§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import flash.events.Event;
   
   public class §3!R§
   {
      
      public static const §4!9§:String = "STANDARD";
      
      public static const §%!B§:int = 100000;
      
      private static var § N§:int = 0;
      
      private static var §+!Y§:§3!R§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §4!9§ = "STANDARD";
         }
         while(true)
         {
            §%!B§ = 100000;
            while(!_loc1_)
            {
               § N§ = 0;
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §4!P§:Boolean = false;
      
      private var §+]§:Object;
      
      private var §9"[§:§3j§;
      
      private var §9"$§:§4Z§;
      
      private var §1!s§:String = "STANDARD";
      
      private var §2e§:Number;
      
      public function §3!R§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§&W§();
         }
         while(!_loc2_);
         
      }
      
      public static function get §&"5§() : §3!R§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§+!Y§);
            if(_loc1_ || §3!R§)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §+!Y§ = new §3!R§();
                     addr49:
                     §§push(§+!Y§);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
      
      public static function §"A§(param1:Number) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() / 60);
         }
         var _loc2_:int = §§pop();
         var _loc3_:* = "";
         var _loc4_:int = Math.round(_loc2_ / 1440);
         var _loc5_:int;
         §§push(_loc5_ = Math.round(_loc2_ / 60));
         if(!(_loc7_ && _loc3_))
         {
            §§push(24);
            if(!(_loc7_ && _loc2_))
            {
               if(§§pop() < §§pop())
               {
                  if(_loc6_)
                  {
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§push(2);
                        if(!_loc7_)
                        {
                           addr64:
                           §§push(§§pop() < §§pop());
                           if(!(_loc7_ && _loc3_))
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    addr232:
                                    if(!_loc7_)
                                    {
                                       addr303:
                                       §§push(_loc2_ >= 60);
                                    }
                                    §§push(_loc2_);
                                    §§push(" ");
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(_loc2_ == 1)
                                          {
                                             addr261:
                                             §§push("Minute" + (!(_loc7_ && §3!R§) ? §§pop() : §§pop()));
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr280:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr269:
                                             }
                                             else
                                             {
                                                addr309:
                                                _loc3_ = §§pop();
                                                addr310:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr80);
                                             }
                                             addr128:
                                          }
                                          else
                                          {
                                             §§push("Minutes");
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr261);
                                    }
                                    else
                                    {
                                       addr308:
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§goto(addr309);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              addr306:
                              §§goto(addr308);
                              §§push(_loc5_);
                              §§push(" Hour");
                           }
                           else
                           {
                              addr286:
                              if(_loc5_ < 2)
                              {
                                 §§push(param1);
                                 while(§§pop() < 60)
                                 {
                                    §§push(param1);
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + " Seconds");
                                    if(!_loc7_)
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          _loc3_ = §§pop();
                                          addr216:
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(!(_loc6_ || param1))
                                          {
                                             addr293:
                                             _loc3_ = Math.max(0,_loc5_) + " Hours";
                                             if(!(_loc6_ || _loc2_))
                                             {
                                                §§goto(addr310);
                                             }
                                             addr287:
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr293);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr287);
                           }
                           §§goto(addr309);
                        }
                        §§goto(addr286);
                     }
                     §§goto(addr303);
                  }
                  §§goto(addr232);
               }
               else
               {
                  §§push(_loc4_);
                  if(_loc6_ || §3!R§)
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        §§push(1);
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc6_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    addr174:
                                    §§push(_loc4_);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       addr183:
                                       §§push(§§pop() + " Day");
                                       if(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             addr188:
                                             if(!_loc7_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§goto(addr80);
                                                }
                                                else
                                                {
                                                   §§goto(addr293);
                                                }
                                             }
                                             §§goto(addr280);
                                          }
                                          else
                                          {
                                             §§goto(addr261);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr206);
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr188);
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(" Days");
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc7_ && _loc2_))
                                                         {
                                                            addr80:
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr269);
                                                               continue loop1;
                                                            }
                                                            return §§pop();
                                                         }
                                                         §§goto(addr306);
                                                         §§goto(addr261);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr216);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                else
                                                {
                                                   §§goto(addr183);
                                                }
                                             }
                                             §§goto(addr232);
                                          }
                                          else
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr306);
                                    }
                                    else
                                    {
                                       §§goto(addr286);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr174);
                                 }
                                 §§goto(addr232);
                              }
                           }
                           else
                           {
                              §§goto(addr303);
                           }
                           §§goto(addr306);
                        }
                        §§goto(addr286);
                     }
                     else
                     {
                        §§goto(addr303);
                     }
                  }
                  §§goto(addr174);
               }
            }
            §§goto(addr64);
         }
         §§goto(addr232);
      }
      
      private function §&W§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3j§ = null;
         if(!(_loc3_ && _loc3_))
         {
            this.§9"$§ = new §4Z§();
         }
         _loc1_ = new §3j§(§4!9§,null,"","",false);
         if(!_loc3_)
         {
            _loc1_.§+!>§(§]!M§.STATE_NAME,§]!M§);
            while(true)
            {
               _loc1_.§+!>§(§6"'§.STATE_NAME,§6"'§);
               loop3:
               while(_loc2_ || this)
               {
                  this.§9"$§[_loc1_.§1!8§] = _loc1_;
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  addr56:
                  if(_loc2_ || _loc3_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           _loc1_.§+!>§(§7"1§.STATE_NAME,§7"1§);
                           continue loop3;
                        }
                        addr92:
                        _loc1_ = new §3j§("EASTER_1",null,"","EASTER_BUTTON_1",false);
                        §§push(_loc2_ || this);
                        addr65:
                     }
                     else
                     {
                        §§goto(addr92);
                     }
                     if(§§pop())
                     {
                        _loc1_.§;[§ = null;
                     }
                     while(true)
                     {
                        _loc1_.§+!>§(§,p§.STATE_NAME,§,p§);
                        loop5:
                        while(true)
                        {
                           _loc1_.§+!>§(§15§.STATE_NAME,§15§);
                           loop6:
                           while(true)
                           {
                              addr139:
                              while(true)
                              {
                                 _loc1_.§+!>§(§7"1§.STATE_NAME,§;!7§);
                                 continue loop6;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§goto(addr56);
                     }
                     addr85:
                  }
                  §§goto(addr65);
               }
            }
         }
         §§goto(addr85);
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            if(!this.§4!P§)
            {
               if(_loc5_)
               {
                  §§push(this.§5"S§());
                  if(!(_loc4_ && param1))
                  {
                     §§push(0);
                     if(_loc5_ || this)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              this.§4!P§ = true;
                              if(_loc5_)
                              {
                                 addr59:
                                 if(§%"S§.§!C§.§%^§().indexOf("Tournament") != -1)
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr83:
                                       var _loc2_:*;
                                       §§push((_loc2_ = §§findproperty(§ N§)).§ N§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + 1);
                                       }
                                       var _loc3_:* = §§pop();
                                       if(_loc5_ || param1)
                                       {
                                          _loc2_.§ N§ = _loc3_;
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          addr152:
                                          if(§ N§ > 2)
                                          {
                                             if(!_loc4_)
                                             {
                                                addr155:
                                                §9"6§.§'m§();
                                             }
                                             § N§ = 0;
                                             addr157:
                                          }
                                          else
                                          {
                                             §9"6§.§6T§();
                                             if(!(_loc4_ && this))
                                             {
                                                if(_loc4_ && param1)
                                                {
                                                   §§goto(addr157);
                                                }
                                                else
                                                {
                                                   addr144:
                                                }
                                                addr112:
                                                return;
                                                addr111:
                                             }
                                          }
                                          addr110:
                                       }
                                       §§goto(addr111);
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr83);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr152);
               }
               §§goto(addr59);
            }
            §§goto(addr112);
         }
         §§goto(addr144);
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            AngryBirdsFP11.§>m§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               this.§4!P§ = false;
               loop1:
               while(true)
               {
                  param1.currentStandings = §;!O§.§>k§(param1.currentStandings,"players");
                  loop2:
                  while(true)
                  {
                     this.§+]§ = param1;
                     while(true)
                     {
                        §§push(Boolean(this.§+]§));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr332:
                                    while(true)
                                    {
                                       §§push(Boolean(this.§+]§.currentTournament));
                                       addr303:
                                       while(!_loc2_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(_loc3_)
                                    {
                                       this.§2e§ = this.currentTournament.endTime;
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop2;
                                    addr307:
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    §§push(this.§#"Z§);
                                    loop13:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop());
                                          loop14:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop13;
                                                      }
                                                      loop39:
                                                      while(true)
                                                      {
                                                         this.§9"[§ = this.§9"$§[this.§#"Z§];
                                                         loop40:
                                                         while(true)
                                                         {
                                                            loop25:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§%!^§));
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop27:
                                                                  while(_loc3_ || _loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(_loc3_ || _loc3_)
                                                                           {
                                                                              if(_loc2_ && _loc2_)
                                                                              {
                                                                                 break loop26;
                                                                              }
                                                                              §§pop();
                                                                              loop29:
                                                                              while(_loc3_)
                                                                              {
                                                                                 §§push(Boolean(this.§+]§.currentTournament));
                                                                                 loop30:
                                                                                 for(; !(_loc2_ && _loc3_); if(_loc3_ || _loc2_)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    continue loop28;
                                                                                 })
                                                                                 {
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          continue loop27;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop40;
                                                                                                         }
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            this.§9"[§.§=l§ = this.§+]§.currentTournament.powerUpFrenzy;
                                                                                                            while(_loc3_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§%"S§.§!C§.§'!t§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     continue loop30;
                                                                                                                  }
                                                                                                                  addr104:
                                                                                                                  addr144:
                                                                                                                  while(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                                  while(_loc3_)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     break loop36;
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            loop20:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§9"$§);
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(§4!9§);
                                                                                                               if(!(_loc2_ && param1))
                                                                                                               {
                                                                                                                  addr216:
                                                                                                                  §§push(Boolean(§§pop()[§§pop()]));
                                                                                                                  while(!(_loc2_ && _loc2_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           break loop31;
                                                                                                                        }
                                                                                                                        continue loop25;
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     continue loop20;
                                                                                                                     §§goto(addr216);
                                                                                                                  }
                                                                                                                  addr216:
                                                                                                                  addr262:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  addr269:
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr269);
                                                                                                            }
                                                                                                            addr123:
                                                                                                            addr267:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr307);
                                                                                                         }
                                                                                                      }
                                                                                                      break loop31;
                                                                                                   }
                                                                                                   break;
                                                                                                   addr81:
                                                                                                   if(!(_loc2_ && this))
                                                                                                   {
                                                                                                      if(!_loc2_)
                                                                                                      {
                                                                                                         if(!(_loc2_ && _loc2_))
                                                                                                         {
                                                                                                            addr20:
                                                                                                            return;
                                                                                                         }
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      continue loop29;
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break loop28;
                                                                                                   }
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§goto(addr24);
                                                                                          }
                                                                                          §§goto(addr303);
                                                                                       }
                                                                                       §§goto(addr144);
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       this.§9"[§ = this.§9"$§[§4!9§];
                                                                                       addr231:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop27;
                                                                                    §§goto(addr132);
                                                                                 }
                                                                                 addr132:
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr216);
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr139);
                                                                  }
                                                                  continue loop14;
                                                                  if(!(_loc3_ || this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr46);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc3_ || this))
                        {
                           continue;
                        }
                        this.§>4§();
                        §§goto(addr81);
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr267);
         }
      }
      
      public function §>4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+d§ = null;
         var _loc1_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§#"Z§);
            loop0:
            while(true)
            {
               §§push("");
               addr266:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr267:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr277:
                              loop19:
                              while(true)
                              {
                                 §§pop();
                                 addr278:
                                 loop20:
                                 while(true)
                                 {
                                    §§push(this.§1!s§);
                                    addr238:
                                    while(true)
                                    {
                                       §§push(this.§#"Z§);
                                       addr240:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc3_ || this)
                                          {
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                             }
                                             addr249:
                                          }
                                          addr250:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr251:
                                             while(!_loc4_)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         §§pop();
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(this.§9"[§);
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(this.§1!s§);
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§9"[§);
                                                                        addr231:
                                                                        while(true)
                                                                        {
                                                                           §§pop().§6k§();
                                                                           while(!_loc4_)
                                                                           {
                                                                              this.§1!s§ = this.§#"Z§;
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr199:
                                                                                 _loc1_ = true;
                                                                                 addr279:
                                                                                 §§push(_loc1_);
                                                                                 break loop8;
                                                                                 addr200:
                                                                              }
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr227:
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         if(§§pop())
                                                         {
                                                            _loc2_ = §?l§.§ "G§.§2!d§();
                                                            addr281:
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               if(_loc2_ != null)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                            if(_loc2_.mName == §]!M§.STATE_NAME)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop19;
                                                      addr320:
                                                      return;
                                                   }
                                                   continue loop20;
                                                   addr254:
                                                }
                                                §§goto(addr227);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr277:
                           }
                           §§goto(addr249);
                        }
                     }
                     §§goto(addr277);
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      public function §%!f§(param1:String) : §3j§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§9"$§;
         while(true)
         {
            if(!(§§hasnext(_loc4_,_loc3_)))
            {
               return null;
            }
         }
         return this.§9"$§[_loc2_];
      }
      
      public function get currentTournament() : Object
      {
         return this.§+]§.currentTournament;
      }
      
      public function get §5h§() : Object
      {
         return this.currentTournament.enteredDraw;
      }
      
      public function get §%!^§() : §3j§
      {
         return this.§9"[§;
      }
      
      private function get §#"Z§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.currentTournament == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(§§pop())
                     {
                        if(!_loc1_)
                        {
                           return (this.currentTournament.brandedTournament as String).toUpperCase();
                        }
                        if(!_loc1_)
                        {
                           break;
                        }
                        addr107:
                        while(true)
                        {
                           §§push(this.currentTournament.brandedTournament == null);
                           if(!(_loc1_ && this))
                           {
                              addr53:
                              if(_loc2_ || this)
                              {
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     return "";
                     addr79:
                  }
               }
               §§goto(addr106);
            }
         }
         §§goto(addr107);
      }
      
      public function get §&"N§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.currentTournament == null);
            if(!_loc1_)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§pop();
                        addr89:
                        while(true)
                        {
                           §§push(this.§+]§.nextTournamentBrand == null);
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           addr66:
                           if(!_loc1_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                     }
                     addr88:
                  }
                  while(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§goto(addr72);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr89);
                  }
                  return "";
               }
            }
            §§goto(addr88);
         }
         addr72:
         return this.§+]§.nextTournamentBrand;
      }
      
      public function get currentStandings() : Object
      {
         return this.§+]§.currentStandings;
      }
      
      public function get previousTournament() : Object
      {
         return this.§+]§.previousTournament;
      }
      
      public function get lastResult() : Object
      {
         return this.§+]§.lastResult;
      }
      
      public function get players() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.currentStandings)
            {
               if(!_loc2_)
               {
                  return this.currentStandings.players;
               }
            }
         }
         return [];
      }
      
      public function isLevelOpen(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in this.§?x§)
         {
            if(!_loc6_)
            {
               if(_loc2_.levelId == param1)
               {
                  if(_loc5_)
                  {
                     return this.§8J§(_loc2_);
                  }
               }
            }
         }
         return false;
      }
      
      public function §,"4§(param1:String, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Object = null;
         for each(_loc3_ in this.§?x§)
         {
            if(!(_loc6_ && this))
            {
               if(_loc3_.levelId == param1)
               {
                  if(_loc7_)
                  {
                     _loc3_.secondsToUnlock = -1;
                     if(_loc7_ || param2)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      public function secondsToUnlock(param1:String) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         §§push(§%"S§.§!C§.§9"%§.§ Y§.§?!;§);
         if(_loc6_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         for each(_loc3_ in this.§?x§)
         {
            if(_loc6_)
            {
               if(_loc3_.levelId == param1)
               {
                  if(_loc6_)
                  {
                     §§push(_loc3_.unlockTime - _loc2_);
                     if(!(_loc7_ && this))
                     {
                        return §§pop() / 1000;
                     }
                  }
               }
            }
         }
         return -1;
      }
      
      private function §8J§(param1:Object) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(param1.unlockTime)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(this.secondsToUnlock(param1.levelId) > 0)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr67:
                        §§push(false);
                        if(_loc3_ || _loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr76:
                        return true;
                     }
                     return §§pop();
                  }
                  §§goto(addr76);
               }
               §§goto(addr67);
            }
         }
         §§goto(addr76);
      }
      
      public function get §8I§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.§?x§)
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_.levelId);
            }
         }
         return _loc1_;
      }
      
      public function get §?x§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.currentTournament)
            {
               if(_loc1_)
               {
                  §§goto(addr23);
               }
            }
            return [];
         }
         addr23:
         return this.currentTournament.levels;
      }
      
      public function get levelScores() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.currentStandings)
            {
               if(!_loc1_)
               {
                  return this.currentStandings.levelScores;
               }
            }
         }
         return [];
      }
      
      public function get §7k§() : Array
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(this.previousTournament)
            {
               if(_loc2_)
               {
                  addr39:
                  if(this.previousTournament.priceCounts)
                  {
                     if(_loc1_)
                     {
                        §§goto(addr49);
                     }
                  }
                  §§goto(addr49);
               }
               return this.previousTournament.priceCounts;
            }
            addr49:
            return [1000,500,100];
         }
         §§goto(addr39);
      }
      
      public function get §7!f§() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.lastResult)
            {
               if(_loc1_ || _loc1_)
               {
                  if(this.lastResult.priceCounts)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr44);
                     }
                  }
               }
               §§goto(addr44);
            }
            return [6,4,2];
         }
         addr44:
         return this.lastResult.priceCounts;
      }
      
      public function get bronzeTrophies() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.previousTournament)
            {
               if(!_loc2_)
               {
                  §§goto(addr23);
               }
            }
            return 0;
         }
         addr23:
         return this.previousTournament.bronzeTrophies;
      }
      
      public function get silverTrophies() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.previousTournament)
            {
               if(_loc1_ || this)
               {
                  §§goto(addr28);
               }
            }
            return 0;
         }
         addr28:
         return this.previousTournament.silverTrophies;
      }
      
      public function get goldTrophies() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.previousTournament)
            {
               if(!(_loc2_ && this))
               {
                  return this.previousTournament.goldTrophies;
               }
            }
         }
         return 0;
      }
      
      public function §5"S§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = Number(0);
         if(_loc4_ || _loc2_)
         {
            §§push(§%"S§.§!C§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop().§9"%§);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§pop().§ Y§);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        addr86:
                        if(!_loc3_)
                        {
                           addr63:
                           §§push(§%"S§.§!C§.§9"%§.§ Y§);
                        }
                        §§push(this.§2e§);
                        if(!_loc3_)
                        {
                           addr90:
                           §§push(§§pop() - _loc1_);
                           if(!_loc3_)
                           {
                              §§push(§§pop() / 1000);
                           }
                        }
                        var _loc2_:* = int(§§pop());
                        if(_loc4_)
                        {
                           §§push(int(Math.max(0,_loc2_)));
                           if(!(_loc3_ && _loc1_))
                           {
                              _loc2_ = §§pop();
                              addr113:
                              return _loc2_;
                           }
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr86);
                  }
                  §§push(§§pop().§?!;§);
                  if(_loc4_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(_loc4_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr86);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr86);
               }
            }
            §§goto(addr63);
         }
         §§goto(addr86);
      }
      
      public function §3L§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§8I§.indexOf(param1);
         var _loc3_:String = this.§8I§[_loc2_ + 1];
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr82);
                        }
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§push(§§pop() < this.§8I§.length);
                        continue loop0;
                        if(!(_loc5_ && _loc2_))
                        {
                           continue;
                        }
                        addr94:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr94:
                     }
                     return "";
                  }
               }
               §§goto(addr94);
            }
         }
         addr82:
         return _loc3_;
      }
      
      public function §="S§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = this.§8I§.indexOf(param1);
         var _loc3_:String = this.§8I§[_loc2_ + 1];
         if(_loc4_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(§§pop() >= 0);
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§pop();
                                    addr126:
                                    loop8:
                                    while(!(_loc5_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(this.isLevelOpen(_loc3_));
                                          if(!_loc5_)
                                          {
                                             addr49:
                                             if(_loc5_ && _loc3_)
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(_loc5_ && this)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr139:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop8;
                                                   }
                                                   §§goto(addr49);
                                                }
                                                continue loop1;
                                                addr91:
                                             }
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                              while(§§pop())
                              {
                                 if(_loc5_ && _loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    return _loc3_;
                                 }
                                 §§goto(addr126);
                              }
                              return "";
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr139);
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      public function §5K§(param1:String) : int
      {
         return this.§8I§.indexOf(param1) + 1;
      }
      
      public function §^E§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.players)
         {
            if(!_loc5_)
            {
               if(_loc2_.i)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §^"'§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in this.players)
         {
            if(!(_loc5_ && _loc3_))
            {
               if(_loc2_.i)
               {
                  if(_loc6_ || _loc3_)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §2>§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Object = null;
         var _loc2_:* = int(this.players.length - 1);
         loop0:
         while(true)
         {
            if(_loc2_ < 0)
            {
               return;
            }
            _loc3_ = this.players[_loc2_];
            if(_loc4_)
            {
               if(_loc3_.u == param1)
               {
                  break;
               }
               addr78:
               addr97:
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc2_ = §§pop();
                  if(!(_loc5_ && _loc3_))
                  {
                     continue loop0;
                  }
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  addr87:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               return;
            }
            §§goto(addr87);
         }
         this.players.splice(_loc2_,1);
         §§goto(addr97);
      }
      
      public function §@!X§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc1_:Array = [];
         var _loc3_:int = 0;
         for each(_loc2_ in this.players)
         {
            if(_loc6_ || _loc3_)
            {
               if(_loc2_.i)
               {
                  if(_loc6_ || this)
                  {
                     _loc1_.push(§#!>§.§?$§(_loc2_));
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §^!y§() : Array
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§5"S§());
         if(!_loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         return this.§2"I§(_loc1_);
      }
      
      public function §2"I§(param1:Number) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() / 60);
         }
         var _loc2_:int = §§pop();
         var _loc3_:* = "";
         var _loc4_:* = uint(11324655);
         var _loc5_:int = Math.floor(_loc2_ / 1440);
         var _loc6_:int;
         §§push(_loc6_ = Math.floor(_loc2_ / 60));
         if(!_loc7_)
         {
            §§push(24);
            if(!_loc7_)
            {
               if(§§pop() < §§pop())
               {
                  if(_loc8_ || _loc3_)
                  {
                     §§push(16762174);
                     if(_loc8_ || _loc3_)
                     {
                        §§push(uint(§§pop()));
                        if(_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(_loc8_ || param1)
                           {
                              addr359:
                              §§push(_loc6_);
                              §§push(2);
                              loop14:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          §§pop();
                                          addr366:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr340:
                                             while(true)
                                             {
                                                §§push(60);
                                                addr341:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§push(§§pop() >= §§pop());
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop16;
                                                   }
                                                }
                                                continue loop16;
                                             }
                                             continue loop16;
                                          }
                                       }
                                       addr365:
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(_loc6_);
                                          while(true)
                                          {
                                             §§push(2);
                                             addr317:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(§§pop() < §§pop())
                                                      {
                                                         §§push(param1);
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(§§pop() >= 60)
                                                            {
                                                               addr311:
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ && _loc3_)
                                                                        {
                                                                           addr356:
                                                                           _loc3_ = §§pop() + " Hour Left";
                                                                           addr354:
                                                                           break loop21;
                                                                        }
                                                                        §§push(" ");
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           break loop22;
                                                                        }
                                                                     }
                                                                     addr273:
                                                                  }
                                                                  break loop21;
                                                               }
                                                               loop0:
                                                               while(true)
                                                               {
                                                                  §§push(16464956);
                                                                  loop1:
                                                                  while(!(_loc7_ && _loc2_))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        addr243:
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           addr244:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc7_ && this))
                                                                              {
                                                                                 break loop2;
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_ && this)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(uint(§§pop()));
                                                                           if(_loc8_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              addr204:
                                                                              if(!(_loc8_ || _loc3_))
                                                                              {
                                                                                 addr353:
                                                                                 §§push(_loc6_);
                                                                                 break loop0;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr243);
                                                                           }
                                                                           §§goto(addr116);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr273);
                                                               }
                                                               §§goto(addr354);
                                                               addr311:
                                                            }
                                                            else
                                                            {
                                                               §§push(param1);
                                                               if(!_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() + " Seconds Left!");
                                                               loop8:
                                                               while(_loc8_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ || _loc2_))
                                                                        {
                                                                           addr320:
                                                                           §§push(Math.max(0,_loc6_) + " Hours Left");
                                                                           break loop8;
                                                                        }
                                                                        §§goto(addr193);
                                                                        §§push(16464956);
                                                                     }
                                                                     addr225:
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                               _loc3_ = §§pop();
                                                            }
                                                            §§goto(addr116);
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_ == 1)
                                                            {
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  §§push("Minute" + (!_loc7_ ? §§pop() : §§pop()));
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(" Left");
                                                               }
                                                               addr308:
                                                            }
                                                            else
                                                            {
                                                               §§push("Minutes");
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§goto(addr306);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               addr310:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  §§goto(addr311);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr320);
                                                   }
                                                   addr116:
                                                   return [_loc3_,_loc4_];
                                                   addr319:
                                                }
                                                §§goto(addr341);
                                             }
                                          }
                                          addr316:
                                       }
                                       §§goto(addr353);
                                    }
                                 }
                                 §§goto(addr365);
                              }
                              addr360:
                           }
                           else
                           {
                              addr190:
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr242);
                  }
                  §§goto(addr366);
               }
               else
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(_loc8_)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           §§push(1);
                           if(_loc8_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc8_)
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr148:
                                             §§push(_loc5_);
                                             if(_loc8_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   addr153:
                                                   §§push(" Day Left");
                                                   if(!_loc7_)
                                                   {
                                                      addr156:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr183:
                                                               if(_loc8_ || param1)
                                                               {
                                                                  §§goto(addr190);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr311);
                                                               }
                                                            }
                                                            §§goto(addr356);
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr340);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr337);
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr183);
                              }
                              else
                              {
                                 §§push(_loc5_);
                                 if(_loc8_)
                                 {
                                    §§push(" Days Left");
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc7_)
                                          {
                                             if(_loc8_)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr204);
                                                   }
                                                   §§goto(addr116);
                                                }
                                                else
                                                {
                                                   §§goto(addr183);
                                                }
                                             }
                                             §§goto(addr220);
                                          }
                                          else
                                          {
                                             §§goto(addr156);
                                          }
                                       }
                                       §§goto(addr356);
                                    }
                                    else
                                    {
                                       §§goto(addr153);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr148);
                                 }
                                 §§goto(addr193);
                              }
                           }
                           §§goto(addr317);
                        }
                        else
                        {
                           §§goto(addr359);
                        }
                     }
                     §§goto(addr316);
                  }
                  §§goto(addr148);
               }
            }
            §§goto(addr319);
         }
         §§goto(addr200);
      }
      
      public function §0h§() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         for each(_loc1_ in this.players)
         {
            if(_loc4_)
            {
               if(_loc1_.u == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§)
               {
                  if(_loc4_ || this)
                  {
                     return _loc1_.r;
                  }
               }
            }
         }
         return §%!B§;
      }
   }
}
