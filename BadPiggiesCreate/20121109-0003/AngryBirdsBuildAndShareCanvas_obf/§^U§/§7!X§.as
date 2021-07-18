package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!1§.§>3§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import §]§.§[!m§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §7!X§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelStartState";
      
      private static var §;_§:BitmapData = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!Q§ = "LevelStartState";
         }
         do
         {
            §;_§ = null;
         }
         while(!_loc1_);
         
      }
      
      private var §%?§:Boolean = false;
      
      private var §2"!§:Boolean = false;
      
      private var §6"=§:§[!m§ = null;
      
      private var §&!Q§:Boolean = false;
      
      private var §,C§:Boolean = false;
      
      private var §[!`§:Number = 0;
      
      private var §>!y§:Number = 0;
      
      private var §>z§:Number = 0;
      
      private var §@!9§:Number = 0;
      
      private var §5!8§:Number;
      
      private var §2"5§:Number;
      
      private var §'!h§:Number;
      
      private var §8Y§:Number;
      
      private var §`]§:§>3§;
      
      public function §7!X§(param1:Boolean = false, param2:String = "LevelStartState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      public static function get §[p§() : BitmapData
      {
         return §;_§;
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            while(true)
            {
               §`!v§ = new §>!V§(this);
               loop1:
               while(true)
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_LevelStart[0]);
                  while(true)
                  {
                     this.§6"=§ = new §[!m§(§'_§.§=M§);
                     while(!(_loc1_ && _loc2_))
                     {
                        this.§5!8§ = (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).height;
                        continue loop1;
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                           addr47:
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§2"5§ = (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).height;
               loop5:
               while(true)
               {
                  this.§'!h§ = §`!v§.getItemByName("Button_LeftMenuOpen").y - 50;
                  while(true)
                  {
                     if(!_loc1_)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop5;
                  }
                  §§goto(addr91);
               }
               §§goto(addr47);
               addr81:
            }
         }
         §§goto(addr81);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            loop0:
            while(true)
            {
               §'_§.§=M§.§'"@§(true);
               addr109:
               if(_loc2_ && this)
               {
                  continue;
               }
               §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.getSoundsEnabled());
               loop5:
               while(true)
               {
                  §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!§'_§.§&R§());
                  loop6:
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr75:
                        if(!(_loc2_ && _loc1_))
                        {
                           addr82:
                           if(_loc1_ || this)
                           {
                              continue;
                           }
                           addr143:
                           while(true)
                           {
                              §'_§.§^`§(this.§6"=§);
                              while(true)
                              {
                                 this.§6"=§.init();
                                 addr121:
                                 while(true)
                                 {
                                    this.§do §();
                                    break loop6;
                                 }
                                 addr42:
                                 if(_loc1_ || this)
                                 {
                                    return;
                                 }
                              }
                              §§goto(addr82);
                           }
                        }
                        break;
                     }
                     continue loop5;
                  }
                  while(true)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr109);
                     }
                     else
                     {
                        §§goto(addr121);
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr143);
      }
      
      protected function §do §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            AngryBirdsFP11.§do §();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     this.§'!h§ = §`!v§.getItemByName("Button_LeftMenuOpen").y - 50;
                     loop1:
                     while(true)
                     {
                        this.§8Y§ = §`!v§.getItemByName("Button_RightMenuOpen").y - 50;
                        loop2:
                        while(true)
                        {
                           this.§9" §(param1);
                           loop3:
                           while(_loc4_ || _loc2_)
                           {
                              while(true)
                              {
                                 if(this.§2"!§)
                                 {
                                    while(mNextState.length > 0)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr40);
                                       }
                                       else if(!_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr92);
                                    }
                                 }
                                 while(_loc4_ || _loc2_)
                                 {
                                    §'_§.§=R§.update(param1);
                                    while(_loc4_)
                                    {
                                    }
                                    continue loop3;
                                    if(_loc4_ || _loc2_)
                                    {
                                       return §'B§.STATE_STATUS_COMPLETED;
                                    }
                                 }
                                 addr27:
                                 continue loop1;
                                 return §'B§.STATE_STATUS_RUNNING;
                              }
                           }
                        }
                     }
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr106);
      }
      
      private function §9" §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).mClip.scrollRect = new Rectangle(0,0,(§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).width,this.§5!8§ + 20 - (this.§5!8§ - this.§>z§));
            while(true)
            {
               (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).mClip.scrollRect = new Rectangle(0,0,(§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).width,this.§2"5§ + 20 - (this.§2"5§ - this.§@!9§));
               while(true)
               {
                  §§push(this.§&!Q§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§[!`§);
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§[!`§);
                                    if(_loc2_ || this)
                                    {
                                       §§push(0.3);
                                       if(_loc2_)
                                       {
                                          §§push(§§pop() * param1);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§[!`§ = §§pop();
                                    while(true)
                                    {
                                       addr276:
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc2_ || _loc3_)
                                       {
                                          §§push(this);
                                          §§push(this.§@!9§);
                                          if(_loc2_)
                                          {
                                             §§push(0.5);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§pop().§@!9§ = §§pop();
                                          loop40:
                                          while(true)
                                          {
                                             if(!(_loc3_ && this))
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§@!9§);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr212:
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               §§push(0);
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(!(_loc3_ && this))
                                                                     {
                                                                        addr231:
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              while(!_loc2_)
                                                                              {
                                                                                 continue loop40;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).setVisibility(false);
                                                                                 addr250:
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    this.§@!9§ = 0;
                                                                                    addr194:
                                                                                    if(_loc2_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          (§`!v§.getItemByName("Button_LeftMenuOpen") as §9"8§).mClip.MovieClip_LeftMenuImage.mouseEnabled = false;
                                                                                          addr189:
                                                                                          while(true)
                                                                                          {
                                                                                             (§`!v§.getItemByName("Button_RightMenuOpen") as §9"8§).mClip.MovieClip_RightMenuImage.mouseEnabled = false;
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc2_ || param1)
                                                                                                {
                                                                                                   (§`!v§.getItemByName("Button_LeftMenuOpen") as §9"8§).mClip.MovieClip_LeftMenuImage.rotation = this.§[!`§;
                                                                                                   continue;
                                                                                                }
                                                                                                addr470:
                                                                                                while(true)
                                                                                                {
                                                                                                   (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y = (§`!v§.getItemByName("Container_MenuRightButtons") as §6W§).y + 0.5 * param1;
                                                                                                   break loop35;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§@!9§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(0.5);
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * param1);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§pop().§@!9§ = §§pop();
                                                                                          §§goto(addr525);
                                                                                       }
                                                                                       addr508:
                                                                                       addr179:
                                                                                    }
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          if(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             if(!(_loc3_ && param1))
                                                                                             {
                                                                                                §§goto(addr329);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   (§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§).setVisibility(true);
                                                                                                   break loop24;
                                                                                                }
                                                                                                addr809:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr741);
                                                                                       }
                                                                                       §§goto(addr633);
                                                                                       §§goto(addr194);
                                                                                    }
                                                                                    §§goto(addr816);
                                                                                 }
                                                                                 §§goto(addr508);
                                                                              }
                                                                              §§goto(addr702);
                                                                              addr239:
                                                                           }
                                                                           §§goto(addr179);
                                                                        }
                                                                        §§goto(addr701);
                                                                     }
                                                                     §§goto(addr590);
                                                                  }
                                                                  §§goto(addr368);
                                                               }
                                                               §§goto(addr259);
                                                            }
                                                            §§goto(addr442);
                                                         }
                                                         §§goto(addr256);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr274);
                                                         }
                                                         break;
                                                      }
                                                      while(!_loc3_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§goto(addr542);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr496);
                                                         }
                                                      }
                                                      §§goto(addr654);
                                                   }
                                                   §§goto(addr767);
                                                }
                                                break;
                                             }
                                             §§goto(addr371);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr493);
                                          }
                                       }
                                       §§goto(addr782);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr698);
                              }
                           }
                        }
                     }
                     §§goto(addr809);
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§push(§`!v§.getItemByName("Container_MenuLeftButtons") as §6W§);
               §§push(this.§'!h§);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - this.§>z§);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  if(_loc2_)
                  {
                     if(_loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           continue;
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr194);
                  }
                  §§goto(addr137);
               }
               §§goto(addr705);
            }
         }
         §§goto(addr767);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            (§`!v§.getItemByName("Button_Play") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
            while(true)
            {
               this.§%?§ = false;
               while(_loc1_ || _loc2_)
               {
                  super.deActivate();
                  if(!_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = param2;
         if(!(_loc8_ && this))
         {
            if("OPEN_LEFT_MENU" === _loc6_)
            {
               if(!(_loc8_ && param1))
               {
                  §§push(0);
                  if(_loc8_ && this)
                  {
                     addr433:
                  }
               }
               else
               {
                  addr467:
                  §§push(6);
                  if(_loc8_ && this)
                  {
                     addr484:
                  }
               }
            }
            else if("OPEN_RIGHT_MENU" === _loc6_)
            {
               if(_loc7_ || param3)
               {
                  §§push(1);
                  if(!_loc7_)
                  {
                     addr503:
                  }
               }
               else
               {
                  addr509:
                  §§push(9);
                  if(!_loc8_)
                  {
                     addr512:
                  }
                  else
                  {
                     addr535:
                  }
               }
            }
            else if("PLAY_LEVEL" === _loc6_)
            {
               if(_loc7_ || this)
               {
                  §§push(2);
                  if(_loc8_)
                  {
                     addr552:
                  }
               }
               else
               {
                  addr481:
                  §§push(7);
                  if(!_loc8_)
                  {
                     §§goto(addr484);
                  }
                  else
                  {
                     §§goto(addr512);
                  }
               }
            }
            else if("OPEN_MENU" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§push(3);
                  if(_loc7_)
                  {
                     §§goto(addr433);
                  }
                  else
                  {
                     addr521:
                  }
               }
               else
               {
                  §§goto(addr467);
               }
            }
            else if("OPEN_AVATAR_CREATOR" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§push(4);
                  if(_loc8_)
                  {
                  }
                  §§goto(addr557);
               }
               else
               {
                  §§goto(addr467);
               }
            }
            else if("TOGGLE_SOUNDS" === _loc6_)
            {
               if(_loc7_ || this)
               {
                  §§push(5);
                  if(!(_loc7_ || param1))
                  {
                     §§goto(addr521);
                  }
               }
               else
               {
                  §§goto(addr509);
               }
            }
            else if("TOGGLE_PARTICLES" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr467);
               }
               else
               {
                  §§goto(addr509);
               }
            }
            else if("FULLSCREEN_BUTTON" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr481);
               }
               else
               {
                  §§goto(addr509);
               }
            }
            else if("OPEN_CREDITS" === _loc6_)
            {
               if(!(_loc8_ && this))
               {
                  §§push(8);
                  if(_loc7_ || this)
                  {
                     §§goto(addr503);
                  }
                  §§goto(addr557);
               }
               else
               {
                  §§goto(addr509);
               }
            }
            else if("CREDITS_BUTTON" === _loc6_)
            {
               if(!_loc8_)
               {
                  §§goto(addr509);
               }
               else
               {
                  addr527:
                  §§push(11);
                  if(!(_loc8_ && this))
                  {
                     §§goto(addr535);
                  }
               }
            }
            else
            {
               if("SOUNDS_BUTTON" === _loc6_)
               {
                  if(!_loc8_)
                  {
                     §§push(10);
                     if(_loc7_)
                     {
                        §§goto(addr521);
                     }
                     else
                     {
                        §§goto(addr535);
                     }
                  }
               }
               else if("POPUP_CREDITS_CLOSE" === _loc6_)
               {
                  if(_loc7_)
                  {
                     §§goto(addr527);
                  }
               }
               else if("ME_POPUP_VIDEO" !== _loc6_)
               {
                  addr557:
                  loop10:
                  switch(§§pop())
                  {
                     case 0:
                        addr361:
                        if(!this.§&!Q§)
                        {
                           this.§&!Q§ = true;
                           if(!_loc7_)
                           {
                           }
                           break;
                        }
                        addr362:
                        this.§&!Q§ = false;
                        addr365:
                        break;
                     case 1:
                        addr341:
                        if(this.§,C§)
                        {
                           addr342:
                           if(!_loc8_)
                           {
                              this.§,C§ = false;
                              addr347:
                           }
                           else
                           {
                              §§goto(addr362);
                           }
                        }
                        else
                        {
                           this.§,C§ = true;
                           addr335:
                        }
                        break;
                     case 2:
                        §0"#§.§9"2§("Menu_Confirm");
                        mNextState = §2u§.§%!Q§;
                        break;
                        addr328:
                        addr321:
                     case 3:
                        §`!v§.setItemVisibility("Container_MenuButtons",!§`!v§.getItemByName("Container_MenuButtons").visible);
                        break;
                        addr315:
                     case 4:
                        break;
                     case 5:
                        break;
                     case 6:
                        addr300:
                        _loc4_ = !§'_§.§&R§();
                        addr301:
                        if(_loc7_)
                        {
                           §'_§.§?R§(_loc4_);
                           §`!v§.getItemByName("MovieClip_ParticlesOff").setVisibility(!_loc4_);
                           addr272:
                           if(_loc7_)
                           {
                              break;
                           }
                           §§goto(addr365);
                           addr289:
                        }
                        else
                        {
                           §§goto(addr335);
                        }
                        break;
                        addr299:
                     case 7:
                        §0"#§.§9"2§("Menu_Confirm");
                        AngryBirdsFP11.§@"7§.§>!5§();
                        addr257:
                        break;
                        addr257:
                        addr264:
                     case 8:
                        §0"#§.§9"2§("Menu_Confirm");
                        break;
                        addr252:
                     case 9:
                        §0"#§.§9"2§("Menu_Confirm");
                        addr231:
                        if(!(_loc8_ && param2))
                        {
                           if(!(_loc8_ && this))
                           {
                              mNextState = §<K§.§%!Q§;
                              this.§&!Q§ = false;
                              addr211:
                              if(_loc7_ || param2)
                              {
                                 break;
                              }
                              §§goto(addr301);
                              addr224:
                           }
                           §§goto(addr272);
                        }
                        else
                        {
                           §§goto(addr257);
                        }
                     case 10:
                        §0"#§.§9"2§("Menu_Confirm");
                        loop0:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.getSoundsEnabled());
                           if(!(_loc8_ && param3))
                           {
                              §§push(!§§pop());
                           }
                           loop1:
                           for(; !_loc8_; §§push(_loc5_),if(!_loc7_)
                           {
                              continue;
                           },if(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr136);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr361);
                           },§§goto(addr341))
                           {
                              if(!(_loc8_ && param3))
                              {
                                 _loc5_ = §§pop();
                                 loop2:
                                 for(; !(_loc8_ && param2); if(_loc8_ && this)
                                 {
                                    continue;
                                 },if(!_loc8_)
                                 {
                                    if(!_loc8_)
                                    {
                                       this.§do §();
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §`!v§.getItemByName("MovieClip_SoundsOff").setVisibility(!_loc5_);
                                             if(!_loc8_)
                                             {
                                                §§goto(addr117);
                                             }
                                             break loop10;
                                          }
                                       }
                                       addr156:
                                    }
                                    §§goto(addr328);
                                 },§§goto(addr211))
                                 {
                                    AngryBirdsFP11.setSoundsEnabled(_loc5_);
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc8_ && this)
                                       {
                                          §§goto(addr224);
                                          while(true)
                                          {
                                             if(!(_loc8_ && param3))
                                             {
                                                continue loop2;
                                             }
                                             continue loop3;
                                             addr117:
                                             if(!(_loc7_ || param2))
                                             {
                                                continue;
                                             }
                                             if(!_loc8_)
                                             {
                                                break loop10;
                                             }
                                             §§goto(addr252);
                                          }
                                       }
                                       continue loop1;
                                       addr136:
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr347);
                              }
                              else
                              {
                                 §§goto(addr299);
                              }
                           }
                           §§goto(addr300);
                        }
                        break;
                     case 11:
                        break;
                     case 12:
                        if(this.§`]§ == null)
                        {
                           loop6:
                           for(; _loc7_; if(!(_loc7_ || this))
                           {
                              continue;
                           },if(false)
                           {
                              §§goto(addr40);
                           })
                           {
                              if(!(_loc8_ && this))
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || param3)
                                    {
                                       this.§`]§ = new §>3§("http://www.youtube.com/v/-eyig_V-_5o");
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc7_ || param3)
                                          {
                                             while(true)
                                             {
                                                (§`!v§.getItemByName("MovieClip_YouTubeArea") as §@u§).changeMovieClip(this.§`]§);
                                                if(!(_loc7_ || param3))
                                                {
                                                   break loop10;
                                                }
                                                continue loop7;
                                             }
                                             continue loop6;
                                             addr40:
                                          }
                                          §§goto(addr264);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr342);
                                 }
                                 §§goto(addr321);
                              }
                              else
                              {
                                 §§goto(addr315);
                              }
                           }
                           §§goto(addr289);
                        }
                  }
                  return;
                  §§push(13);
               }
               §§goto(addr557);
               if(_loc7_)
               {
                  §§goto(addr552);
               }
            }
            §§goto(addr557);
         }
         §§goto(addr467);
      }
   }
}
