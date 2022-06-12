package §7"@§
{
   import §!"2§.§?f§;
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §'!s§.§"!§;
   import §'!s§.§%?§;
   import §2!i§.§'M§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §8!v§.§>!+§;
   import §9"!§.§2K§;
   import §]!A§.;
   import com.AngryBirds.friendsbar.§ K§;
   import flash.events.Event;
   import flash.text.TextFieldAutoSize;
   
   public class §-"$§ extends §7l§
   {
       
      
      private var §#![§:§?f§;
      
      private var §["9§:§"!§;
      
      private var §&!l§:int;
      
      private var §-!s§:String;
      
      private var §%!a§:§'M§;
      
      public function §-"$§(param1:Boolean = false, param2:String = "PauseState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
            § J§ = true;
            loop0:
            while(true)
            {
               §6w§ = new §7!A§(this);
               while(true)
               {
                  §6w§.init(§ "A§.§4[§.Views.View_FacebookLevelPause[0]);
                  continue loop0;
                  addr56:
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  this.§#![§.§<h§();
                  if(_loc3_ || this)
                  {
                     while(false)
                     {
                        while(true)
                        {
                           this.§#![§ = new §?f§(§6w§);
                        }
                     }
                     var _loc1_:§-"E§ = §6w§.getItemByName("TextField_ChapterName") as §-"E§;
                     if(!_loc2_)
                     {
                        _loc1_.§5!=§.autoSize = TextFieldAutoSize.CENTER;
                     }
                     return;
                     addr31:
                  }
                  while(true)
                  {
                     if(_loc2_ && _loc2_)
                     {
                        continue loop0;
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr31);
               }
            }
         }
         §§goto(addr31);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
         }
         do
         {
            (§#6§.§ q§ as §3T§).§`!P§(§ K§.§2_§);
         }
         while(_loc1_);
         
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
         }
      }
      
      protected function getLevelNameToDisplay(param1:String) : String
      {
         return § <§.§2!V§(param1);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§-"E§ = null;
         if(_loc2_ || _loc2_)
         {
            if(LevelManager.§'!O§ != null)
            {
               if(_loc2_ || this)
               {
                  _loc1_ = §6w§.getItemByName("TextField_ChapterName") as §-"E§;
                  if(_loc2_ || _loc3_)
                  {
                     _loc1_.§5!=§.text = LevelManager.§9"D§().writtenName;
                  }
                  loop0:
                  while(true)
                  {
                     while(true)
                     {
                        (§6w§.getItemByName("TextField_LevelName") as §-"E§).§5!=§.text = this.getLevelNameToDisplay(LevelManager.§'!O§);
                        do
                        {
                           (§6w§.getItemByName("TextField_LevelName") as §-"E§).y = _loc1_.height + 15;
                        }
                        while(_loc3_ && _loc1_);
                        
                        if(!_loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     addr94:
                     (§6w§.getItemByName("Container_PauseMenu") as §08§).x = §7l§.OFFSCREEN_X;
                     if(_loc2_ || _loc2_)
                     {
                        §'d§(false);
                        loop10:
                        while(true)
                        {
                           §#6§.pause();
                           loop7:
                           while(true)
                           {
                              §6w§.getItemByName("MovieClip_SoundsOff").setVisibility(!AngryBirdsFP11.§3>§());
                              addr256:
                              addr240:
                              addr214:
                              loop8:
                              while(true)
                              {
                                 if(§+;§ != null)
                                 {
                                    while(true)
                                    {
                                       §+;§.stop();
                                       addr247:
                                       while(true)
                                       {
                                       }
                                       continue loop8;
                                    }
                                    addr245:
                                 }
                                 while(true)
                                 {
                                    this.§#![§.reset();
                                    continue loop7;
                                 }
                              }
                              §+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":0},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":1},{"alpha":0},0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("News_Item_Holder") as §08§).mClip,{"alpha":1},{"alpha":0},0.25));
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop10;
                                 }
                                 §§goto(addr256);
                                 §§goto(addr240);
                              }
                           }
                        }
                     }
                     §§goto(addr218);
                  }
               }
               addr218:
               loop3:
               while(true)
               {
                  §+;§.onComplete = §4R§;
                  for(; _loc2_ || this; §+;§.play(),if(_loc3_ && _loc3_)
                  {
                     continue;
                  },if(_loc2_ || this)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        break loop3;
                     }
                     §§goto(addr247);
                  },§§goto(addr214))
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr233);
               }
               return;
            }
            §§goto(addr94);
         }
         §§goto(addr247);
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§+;§ != null)
            {
               while(true)
               {
                  §+;§.stop();
                  addr123:
                  while(true)
                  {
                  }
               }
               addr121:
            }
            loop2:
            while(true)
            {
               §+;§ = §>!+§.§;"§.§2!z§(§>!+§.§;"§.§^!K§(§6w§.getItemByName("Container_PauseMenu") as §08§,{"x":OFFSCREEN_X},null,0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_DarkBG") as §7"-§).mClip,{"alpha":0},{"alpha":1},0.25),§>!+§.§;"§.§^!K§((§6w§.getItemByName("News_Item_Holder") as §08§).mClip,{"alpha":0},{"alpha":1},0.25));
               loop3:
               while(true)
               {
                  if(_loc2_)
                  {
                     §+;§.onComplete = §&!%§;
                     while(_loc2_)
                     {
                        §+;§.play();
                        if(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break loop2;
                           }
                           break loop3;
                        }
                     }
                     continue;
                  }
                  §§goto(addr121);
               }
               §§goto(addr123);
            }
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(["MENU","RESTART_LEVEL"].indexOf(param2) == -1);
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
                        addr202:
                        while(true)
                        {
                           §§push(§#6§.§6!z§);
                           loop4:
                           while(true)
                           {
                              §§push((§§pop() as §2K§).§-"#§);
                              addr155:
                              do
                              {
                                 §§push(§§pop().§6I§);
                                 if(_loc5_ || param3)
                                 {
                                    if(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 addr183:
                              }
                              while(!_loc4_);
                              
                              addr141:
                              continue loop1;
                              while(true)
                              {
                                 §§push(§#6§.§6!z§);
                                 if(_loc5_)
                                 {
                                    §§push((§§pop() as §2K§).§-"#§);
                                    if(_loc5_)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§-P§);
                                       this.§["9§ = §%?§.§@-§();
                                       addr127:
                                    }
                                    else
                                    {
                                       §§goto(addr155);
                                    }
                                    return;
                                    addr111:
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           if(param2 == "RESTART_LEVEL")
                           {
                              while(!(_loc4_ && param2))
                              {
                                 if(_loc5_)
                                 {
                                    §2!e§.§5;§ = "";
                                    while(true)
                                    {
                                       §§goto(addr60);
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr111);
                           }
                           addr60:
                           loop10:
                           while(true)
                           {
                              super.uiInteractionHandler(param1,param2,param3);
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(this.§#![§);
                                    if(_loc5_)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop10;
                                       }
                                       if(!(_loc5_ || param3))
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop9;
                                       }
                                       if(!_loc4_)
                                       {
                                          §§push(this.§#![§);
                                       }
                                       else
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             continue loop7;
                                          }
                                          addr187:
                                          this.§&!l§ = param1;
                                          loop12:
                                          while(true)
                                          {
                                             this.§-!s§ = param2;
                                             while(_loc5_)
                                             {
                                                this.§%!a§ = param3;
                                                if(!_loc4_)
                                                {
                                                   continue loop12;
                                                }
                                             }
                                             §§goto(addr202);
                                          }
                                       }
                                    }
                                    §§pop().uiInteractionHandler(param2);
                                    continue;
                                 }
                                 continue loop8;
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
         §§goto(addr141);
      }
      
      override protected function getLevelSelectionState() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:§>x§ = LevelManager.§9"D§();
         if(!_loc3_)
         {
            §§push(_loc2_.name);
            if(_loc4_ || _loc2_)
            {
               §§push(§]!K§.§"!x§);
               loop0:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     §§push(_loc2_.name);
                     loop1:
                     while(true)
                     {
                        §§push(§]!K§.§9a§);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc4_)
                           {
                              if(!§§pop())
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§pop();
                                    addr165:
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc4_ || _loc1_)
                                       {
                                          §§push(_loc2_.name);
                                          while(true)
                                          {
                                             §§push(§]!K§.EPISODE_GREEN_DAY_EGG);
                                             if(!(_loc4_ || _loc3_))
                                             {
                                                break loop5;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(!_loc4_)
                                             {
                                                continue loop9;
                                             }
                                          }
                                          addr103:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§9!X§.STATE_NAME);
                                             addr187:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                   addr189:
                                                   while(true)
                                                   {
                                                      addr27:
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc3_ && _loc2_))
                                                         {
                                                            if(§§pop() != null)
                                                            {
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  §§push(_loc1_);
                                                                  if(_loc4_ || _loc3_)
                                                                  {
                                                                     addr141:
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§push(§§pop());
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr89:
                                                                           §§push(§§pop());
                                                                           if(_loc4_ || _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr103);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     addr141:
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr140:
                                                                  while(true)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                  }
                                                               }
                                                               §§goto(addr141);
                                                            }
                                                            else
                                                            {
                                                               §§push(§8"D§.STATE_NAME);
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§goto(addr89);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr89);
                                                      }
                                                      return §§pop();
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                          }
                                          addr185:
                                       }
                                       §§goto(addr187);
                                       continue loop9;
                                    }
                                    continue loop2;
                                 }
                                 addr164:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(§1!J§.STATE_NAME);
                                                continue loop1;
                                             }
                                             addr130:
                                          }
                                          else
                                          {
                                             §§goto(addr189);
                                          }
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr27);
                              }
                           }
                           §§goto(addr164);
                        }
                     }
                  }
                  §§goto(addr185);
               }
            }
            §§goto(addr187);
         }
         §§goto(addr130);
      }
      
      private function §-P§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            (§#6§.§6!z§ as §2K§).§-"#§.removeEventListener(Event.COMPLETE,this.§-P§);
         }
         loop0:
         do
         {
            this.§["9§.close();
            while(true)
            {
               this.§["9§ = null;
               while(_loc3_ || param1)
               {
                  this.uiInteractionHandler(this.§&!l§,this.§-!s§,this.§%!a§);
                  if(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_ && this);
         
      }
   }
}
