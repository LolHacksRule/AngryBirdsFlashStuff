package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§^n§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §4!<§.§%6§;
   import §5!Y§.§3"H§;
   import §5!Y§.§9"6§;
   import §9!n§.§!J§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §<!V§.§"!j§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §@!P§ extends §4!Q§
   {
       
      
      private var §<!1§:§"!j§;
      
      private var §;!l§:§3"H§;
      
      private var §3!l§:int;
      
      private var §2!j§:String;
      
      private var §]!4§:§""B§;
      
      public function §@!P§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §>!%§ = true;
            while(true)
            {
               §2"@§ = new §`_§(this);
               while(!(_loc2_ && _loc3_))
               {
                  loop3:
                  while(true)
                  {
                     this.§<!1§ = new §"!j§(§2"@§);
                     do
                     {
                        this.§<!1§.§%"?§();
                     }
                     while(!_loc3_);
                     
                     if(_loc2_)
                     {
                        break;
                     }
                     addr28:
                     if(!(_loc2_ && this))
                     {
                        if(true)
                        {
                           var _loc1_:§4"9§ = §2"@§.getItemByName("TextField_ChapterName") as §4"9§;
                           if(_loc3_ || _loc2_)
                           {
                              _loc1_.§-" §.autoSize = TextFieldAutoSize.CENTER;
                           }
                        }
                        continue;
                        return;
                     }
                     addr87:
                     while(true)
                     {
                        §2"@§.init(§ "<§.§%I§.Views.View_FacebookLevelPause[0]);
                        break loop3;
                        §§goto(addr28);
                     }
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            do
            {
               (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§!!;§);
            }
            while(_loc1_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.deActivate();
         }
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return §!J§.§;6§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§4"9§ = null;
         if(!_loc3_)
         {
            if(LevelManager.§ T§ != null)
            {
               if(!(_loc3_ && this))
               {
                  _loc1_ = §2"@§.getItemByName("TextField_ChapterName") as §4"9§;
                  if(_loc2_)
                  {
                     _loc1_.§-" §.text = LevelManager.§`"Q§().writtenName;
                     loop0:
                     while(true)
                     {
                        addr57:
                        while(true)
                        {
                           (§2"@§.getItemByName("TextField_LevelName") as §4"9§).§-" §.text = this.getLevelNameToDisplay(LevelManager.§ T§);
                           addr69:
                           while(_loc2_)
                           {
                           }
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     (§2"@§.getItemByName("TextField_LevelName") as §4"9§).y = _loc1_.height + 15;
                     if(_loc2_)
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr69);
                  }
               }
               §&"$§(false);
               addr89:
               loop12:
               while(true)
               {
                  §?l§.pause();
                  addr235:
                  loop4:
                  while(true)
                  {
                     §2"@§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§6!,§());
                     loop5:
                     while(true)
                     {
                        if(§-"L§ == null)
                        {
                           while(true)
                           {
                              this.§<!1§.reset();
                              loop9:
                              while(true)
                              {
                                 §-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":0},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":1},{"alpha":0},0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("News_Item_Holder") as §0!Y§).mClip,{"alpha":1},{"alpha":0},0.25));
                                 loop10:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       §-"L§.onComplete = §!"Y§;
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop10;
                                          }
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             continue loop12;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop9;
                                 }
                                 continue loop5;
                              }
                           }
                           addr194:
                        }
                        while(true)
                        {
                           §-"L§.stop();
                           continue loop5;
                           §§goto(addr121);
                        }
                     }
                  }
               }
               addr89:
            }
            (§2"@§.getItemByName("Container_PauseMenu") as §0!Y§).x = §4!Q§.OFFSCREEN_X;
            if(_loc2_)
            {
               §§goto(addr89);
            }
            §§goto(addr235);
         }
         §§goto(addr89);
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§-"L§ != null)
            {
               if(!(_loc1_ && this))
               {
                  §-"L§.stop();
               }
               while(true)
               {
                  addr123:
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     §-"L§.onComplete = §,"X§;
                     do
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           continue;
                        }
                        continue loop2;
                     }
                     while(§-"L§.play(), _loc1_ && _loc2_);
                     
                     return;
                  }
               }
               addr143:
            }
            while(true)
            {
               §-"L§ = §0W§.§&"5§.§]">§(§0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_PauseMenu") as §0!Y§,{"x":OFFSCREEN_X},null,0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_DarkBG") as §^n§).mClip,{"alpha":0},{"alpha":1},0.25),§0W§.§&"5§.§]!r§((§2"@§.getItemByName("News_Item_Holder") as §0!Y§).mClip,{"alpha":0},{"alpha":1},0.25));
               §§goto(addr123);
               §§goto(addr143);
            }
         }
         §§goto(addr39);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(["MENU","RESTART_LEVEL"].indexOf(param2) == -1);
            if(!(_loc5_ && param1))
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop2:
                           while(true)
                           {
                              if(param2 == "RESTART_LEVEL")
                              {
                                 loop3:
                                 while(true)
                                 {
                                    if(_loc5_ && param3)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr131);
                                       }
                                       break;
                                    }
                                    §+"9§.§8!]§ = "";
                                    loop4:
                                    while(true)
                                    {
                                       addr54:
                                       while(true)
                                       {
                                          super.uiInteractionHandler(param1,param2,param3);
                                          loop6:
                                          while(_loc4_ || param3)
                                          {
                                             §§push(this.§<!1§);
                                             if(!(_loc5_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      continue;
                                                   }
                                                   addr51:
                                                   if(!_loc5_)
                                                   {
                                                      break loop2;
                                                   }
                                                   addr138:
                                                   while(true)
                                                   {
                                                      §§push(§?l§.§'h§);
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push((§§pop() as §%6§).§+"3§);
                                                         if(_loc4_ || param3)
                                                         {
                                                            §§pop().addEventListener(Event.COMPLETE,this.§%!i§);
                                                            addr131:
                                                            if(!_loc5_)
                                                            {
                                                               this.§;!l§ = §9"6§.§'!o§();
                                                               break loop3;
                                                            }
                                                            addr192:
                                                            while(true)
                                                            {
                                                               this.§2!j§ = param2;
                                                               break loop6;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§each §);
                                                            if(_loc4_)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(_loc5_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            continue loop0;
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr211:
                                                            while(true)
                                                            {
                                                               §§push(§?l§.§'h§);
                                                               continue loop7;
                                                            }
                                                         }
                                                         addr159:
                                                         addr210:
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr159);
                                                      }
                                                   }
                                                }
                                                break loop2;
                                             }
                                             addr49:
                                             §§pop().uiInteractionHandler(param2);
                                             §§goto(addr51);
                                          }
                                          addr143:
                                          addr189:
                                          while(_loc4_ || param3)
                                          {
                                             if(!_loc5_)
                                             {
                                                this.§]!4§ = param3;
                                                §§goto(addr138);
                                             }
                                             §§goto(addr211);
                                          }
                                          while(true)
                                          {
                                             this.§3!l§ = param1;
                                             §§goto(addr192);
                                             §§goto(addr143);
                                          }
                                          continue loop4;
                                       }
                                    }
                                    §§goto(addr131);
                                 }
                                 return;
                              }
                              §§goto(addr54);
                           }
                           return;
                        }
                        §§goto(addr189);
                     }
                     addr187:
                  }
               }
            }
            §§goto(addr210);
         }
         §§goto(addr189);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:§3-§ = LevelManager.§`"Q§();
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_.name);
            if(_loc4_)
            {
               if(§§pop() == §7D§.§^!i§)
               {
                  if(_loc4_ || _loc1_)
                  {
                     addr55:
                     §§push(§4"Y§.STATE_NAME);
                     if(_loc4_)
                     {
                        §§push(§§pop());
                        if(_loc4_ || _loc1_)
                        {
                           _loc1_ = §§pop();
                           if(!(_loc3_ && _loc2_))
                           {
                              addr85:
                              §§push(_loc1_);
                              if(_loc4_ || _loc3_)
                              {
                                 if(§§pop() != null)
                                 {
                                    addr95:
                                    §§push(_loc1_);
                                    if(_loc4_)
                                    {
                                       addr98:
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                       }
                                       §§goto(addr107);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§9"@§.STATE_NAME);
                                    if(!_loc3_)
                                    {
                                       §§goto(addr107);
                                    }
                                 }
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr95);
                        }
                        addr107:
                        return §§pop();
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr95);
               }
               §§goto(addr85);
            }
            §§goto(addr98);
         }
         §§goto(addr55);
      }
      
      private function §%!i§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            (§?l§.§'h§ as §%6§).§+"3§.removeEventListener(Event.COMPLETE,this.§%!i§);
            loop0:
            while(true)
            {
               this.§;!l§.close();
               loop1:
               do
               {
                  this.§;!l§ = null;
                  while(!_loc3_)
                  {
                     this.uiInteractionHandler(this.§3!l§,this.§2!j§,this.§]!4§);
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc3_ && this);
               
            }
         }
      }
   }
}
