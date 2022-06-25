package §#!2§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §#!X§.LevelManager;
   import §,!#§.ExternalInterfaceHandler;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §8T§.FacebookUserProgress;
   import §9!!§.§85§;
   import §9c§.StateLevelEndRio;
   import §9v§.§4!c§;
   import §9v§.SyncingPopup;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§3!5§;
   import §[g§.FacebookLevelManager;
   import §^!i§.UserProgressEvent;
   import §^h§.StarSplash;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class StateFacebookLevelEnd extends StateLevelEndRio
   {
       
      
      private var §;!Z§:SyncingPopup;
      
      private var §,N§:String;
      
      private var §#!,§:String;
      
      protected var §3a§:Boolean = false;
      
      private var §&K§:Boolean = false;
      
      public function StateFacebookLevelEnd(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr68:
                  while(_loc4_)
                  {
                     if(!_loc3_)
                     {
                        super(initState,name);
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            if(!(_loc4_ || this))
            {
               continue;
            }
            if(_loc4_)
            {
               break;
            }
            §§goto(addr68);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            loop0:
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  while(!_loc2_)
                  {
                     §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
                     while(!(_loc2_ && _loc1_))
                     {
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              return;
                              addr56:
                           }
                           continue;
                           continue;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr56);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               super.activate();
               addr170:
               while(true)
               {
                  addr165:
                  while(true)
                  {
                     (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
                  }
               }
               while(true)
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue loop0;
                  }
                  if(LevelManager.§7+§().name == "1000")
                  {
                     loop7:
                     while(!_loc1_)
                     {
                        loop8:
                        while(true)
                        {
                           §^,§.getItemByName("Button_NextLevel").setVisibility(false);
                           addr101:
                           addr162:
                           while(!_loc1_)
                           {
                              continue loop8;
                           }
                           while(true)
                           {
                              while(!_loc1_)
                              {
                                 §4!T§.§1t§.background.§1r§();
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       break loop7;
                                    }
                                    break;
                                    addr85:
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       loop11:
                                       while(this.§3a§)
                                       {
                                          if(!(_loc1_ && this))
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop8;
                                             }
                                             if(!_loc2_)
                                             {
                                                §§goto(addr170);
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§[J§();
                                             for(; _loc2_; if(_loc2_)
                                             {
                                                break loop11;
                                             })
                                             {
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr101);
                                             }
                                          }
                                       }
                                       return;
                                       addr47:
                                    }
                                 }
                              }
                              §§goto(addr165);
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr47);
               }
            }
         }
         §§goto(addr162);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_ || this)
         {
            loop0:
            while(true)
            {
               §^,§.getItemByName("Button_Share_Default").setVisibility(false);
               while(true)
               {
                  while(true)
                  {
                     §^,§.getItemByName("Button_Share_Crown").setVisibility(false);
                     loop3:
                     while(true)
                     {
                        addr132:
                        while(true)
                        {
                           §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
                           continue loop3;
                        }
                     }
                     addr50:
                     if(_loc1_ || _loc1_)
                     {
                        return;
                        addr57:
                     }
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§&K§ = false;
                     loop7:
                     while(!_loc2_)
                     {
                        loop8:
                        for(; _loc1_; if(_loc2_ && this)
                        {
                           continue;
                        },if(_loc2_)
                        {
                           continue loop7;
                        },§§goto(addr50))
                        {
                           while(true)
                           {
                              super.deActivate();
                              while(!_loc2_)
                              {
                                 if(_loc1_ || _loc2_)
                                 {
                                    continue loop8;
                                 }
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr132);
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §[J§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §^,§.getItemByName("Button_Share_Default").setVisibility(false);
               addr115:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §^,§.getItemByName("Button_Share_Crown").setVisibility(false);
                     addr103:
                     while(true)
                     {
                        addr90:
                        while(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         loop5:
         while(true)
         {
            while(true)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §^,§.getItemByName("Button_Embed").setVisibility(false);
                  continue;
               }
               continue loop5;
            }
            §§goto(addr115);
         }
      }
      
      override protected function onBadgeLanded() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         var posX:* = NaN;
         var posY:* = NaN;
         if(!(_loc5_ && rank))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     addr53:
                     loop3:
                     while(true)
                     {
                        super.onBadgeLanded();
                        while(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              if(_loc5_)
                              {
                                 break loop3;
                              }
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr53);
         }
         §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"!d§(LevelManager.§!=§));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var rank:* = §§pop();
         if(_loc5_)
         {
         }
         var eagle:int = (AngryBirdsFP11.sUserProgress as FacebookUserProgress).getEagleScoreForLevel(LevelManager.§!=§);
         if(!(_loc5_ && eagle))
         {
            while(true)
            {
               §§push(this.§3a§);
               while(true)
               {
                  §§push(!§§pop());
                  loop8:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§[J§();
                        for(; !(_loc5_ && eagle); if(!_loc6_)
                        {
                           continue;
                        },if(!_loc5_)
                        {
                           break loop8;
                        },§§goto(addr186))
                        {
                           if(_loc6_)
                           {
                              if(!_loc5_)
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(!(_loc5_ && rank))
                                       {
                                          continue;
                                       }
                                       loop62:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             this.§#!,§ = "crown";
                                             loop21:
                                             while(true)
                                             {
                                                loop22:
                                                while(true)
                                                {
                                                   §^,§.getItemByName("Button_Share_Default").setVisibility(false);
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         §^,§.getItemByName("Button_Share_Crown").setVisibility(true);
                                                         while(true)
                                                         {
                                                            while(_loc6_)
                                                            {
                                                               §^,§.getItemByName("Button_Share_Stars").setVisibility(false);
                                                               while(_loc6_ || rank)
                                                               {
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§^,§.getItemByName("Button_Share_Crown").x + §^,§.getItemByName("Container_LevelEndStripe").x));
                                                                     while(true)
                                                                     {
                                                                        posX = §§pop();
                                                                        addr621:
                                                                        addr700:
                                                                        while(!(_loc5_ && posX))
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop62;
                                                                        }
                                                                        addr368:
                                                                        if(_loc6_ || eagle)
                                                                        {
                                                                           posY = §§pop();
                                                                           continue loop28;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop21;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr567);
                                 }
                                 §§goto(addr342);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr159);
                        }
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr156);
                           }
                           else
                           {
                              §§goto(addr202);
                           }
                        }
                     }
                     §§goto(addr738);
                  }
                  §§goto(addr508);
               }
            }
         }
         §§goto(addr424);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc9_)
         {
         }
         var ultrabookURL:* = null;
         var urlReq:URLRequest = null;
         var rank:* = 0;
         if(_loc9_)
         {
            while(true)
            {
               while(_loc9_ || eventName)
               {
                  loop2:
                  while(true)
                  {
                     while(!_loc9_)
                     {
                     }
                     if(!(_loc9_ || this))
                     {
                        break;
                     }
                     while(false)
                     {
                        continue loop2;
                     }
                     §§push("NEXT_LEVEL");
                     §§push("REPLAY");
                     §§push("WATCH_REPLAY");
                     §§push("MENU");
                     if(!_loc9_)
                     {
                     }
                     var eventNamesToBlock:Array = null;
                     if(!(_loc10_ && this))
                     {
                        loop5:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop6:
                           while(true)
                           {
                              §§push((§§pop() as FacebookUserProgress).§0x§);
                              loop7:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc9_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§pop();
                                          addr283:
                                          loop10:
                                          while(true)
                                          {
                                             addr231:
                                             while(true)
                                             {
                                                §§push(eventNamesToBlock.indexOf(eventName) == -1);
                                                if(_loc9_)
                                                {
                                                   §§push(!§§pop());
                                                   if(!(_loc10_ && eventIndex))
                                                   {
                                                      if(!(_loc9_ || component))
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             addr262:
                                             if(!_loc9_)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          continue loop8;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             super.uiInteractionHandler(eventIndex,eventName,component);
                                             if(_loc9_ || eventIndex)
                                             {
                                                break;
                                             }
                                             addr163:
                                             while(true)
                                             {
                                                continue loop12;
                                             }
                                          }
                                          if(_loc10_)
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      break;
                                                   }
                                                   addr211:
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr213);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr283);
                                                      }
                                                   }
                                                   §§goto(addr231);
                                                }
                                                else
                                                {
                                                   loop14:
                                                   while(_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop15;
                                                      }
                                                      addr267:
                                                      while(true)
                                                      {
                                                         this.§;!Z§ = §4!c§.§6F§();
                                                         break loop14;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr192:
                                                }
                                             }
                                             return;
                                          }
                                          if(!_loc10_)
                                          {
                                             if(!_loc10_)
                                             {
                                                break;
                                             }
                                             addr266:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc10_ && eventIndex))
                                                {
                                                   continue loop6;
                                                }
                                                continue loop5;
                                                addr213:
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr266);
                                    }
                                    addr716:
                                    var _loc8_:* = eventName;
                                    if(_loc9_)
                                    {
                                       §§push("FRIENDS_BUTTON");
                                       if(_loc9_ || eventIndex)
                                       {
                                          if(!_loc10_)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc10_ && this))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(!(_loc10_ && eventIndex))
                                                   {
                                                      §§push(0);
                                                      if(_loc10_)
                                                      {
                                                      }
                                                      §§goto(addr872);
                                                   }
                                                   §§goto(addr767);
                                                }
                                                §§push("SHARE_CROWN");
                                                if(_loc9_ || eventIndex)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§push(_loc8_);
                                                      if(!_loc10_)
                                                      {
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr767:
                                                               §§push(1);
                                                               if(!_loc9_)
                                                               {
                                                               }
                                                               §§goto(addr872);
                                                            }
                                                            addr829:
                                                            §§push(3);
                                                            if(_loc10_)
                                                            {
                                                            }
                                                            §§goto(addr872);
                                                         }
                                                         §§push("SHARE_STARS");
                                                         if(_loc9_)
                                                         {
                                                            addr774:
                                                            if(!(_loc10_ && eventName))
                                                            {
                                                               addr782:
                                                               §§push(_loc8_);
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  addr790:
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     if(_loc9_ || eventName)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc9_)
                                                                        {
                                                                           §§goto(addr767);
                                                                        }
                                                                        §§goto(addr859);
                                                                     }
                                                                     addr856:
                                                                     §§push(4);
                                                                     if(!_loc10_)
                                                                     {
                                                                        addr859:
                                                                     }
                                                                     §§goto(addr872);
                                                                  }
                                                                  §§push("SHARE_DEFAULT");
                                                                  if(_loc9_ || eventName)
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        addr818:
                                                                        §§push(_loc8_);
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr821:
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              if(!(_loc10_ && eventIndex))
                                                                              {
                                                                                 §§goto(addr829);
                                                                              }
                                                                              §§goto(addr862);
                                                                           }
                                                                           §§push("EMBED");
                                                                           if(_loc9_)
                                                                           {
                                                                              addr836:
                                                                           }
                                                                        }
                                                                        addr848:
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§goto(addr856);
                                                                           }
                                                                           §§goto(addr862);
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           addr862:
                                                                           §§push(5);
                                                                           if(_loc9_ || this)
                                                                           {
                                                                           }
                                                                           §§goto(addr872);
                                                                        }
                                                                        addr872:
                                                                        switch(§§pop())
                                                                        {
                                                                           case 0:
                                                                              §§push("http://apps.facebook.com/angrybirds/?fb_source=facebook_intel");
                                                                              if(_loc10_ && eventIndex)
                                                                              {
                                                                              }
                                                                              §§push(§§pop());
                                                                              if(!(_loc9_ || eventName))
                                                                              {
                                                                                 §§goto(addr716);
                                                                              }
                                                                              ultrabookURL = §§pop();
                                                                              §85§.§"!,§(ultrabookURL);
                                                                              addr113:
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr88:
                                                                                 AngryBirdsUltraBook.sSingleton.§!!'§();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(_loc9_ || component)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr88);
                                                                                          }
                                                                                          urlReq = new URLRequest(ultrabookURL);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                          }
                                                                                          navigateToURL(urlReq,"_blank");
                                                                                          addr706:
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr692:
                                                                                             if(_loc10_ && eventName)
                                                                                             {
                                                                                                §§goto(addr706);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr710:
                                                                                          §§goto(addr710);
                                                                                       }
                                                                                       §§goto(addr88);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr113);
                                                                              }
                                                                              addr138:
                                                                              §§goto(addr138);
                                                                           case 1:
                                                                              addr682:
                                                                              AngryBirdsFP11.§8R§.§!!'§();
                                                                              §§push((AngryBirdsFP11.sUserProgress as FacebookUserProgress).§"!d§(LevelManager.§!=§));
                                                                              if(!(_loc10_ && eventIndex))
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                              rank = §§pop();
                                                                              addr684:
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§goto(addr684);
                                                                              }
                                                                              §§push(ExternalInterfaceHandler);
                                                                              §§push("shareCrown");
                                                                              if(!_loc9_)
                                                                              {
                                                                              }
                                                                              §§push(LevelManager.§!=§);
                                                                              if(_loc10_ && this)
                                                                              {
                                                                              }
                                                                              §§push(LevelManager.§7+§().writtenName + "-");
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§push(rank);
                                                                              if(!_loc9_)
                                                                              {
                                                                              }
                                                                              §§pop().§!!@§(§§pop(),§§pop(),§§pop(),§§pop(),§4!T§.controller.getScore());
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 break;
                                                                                 addr589:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr692);
                                                                              }
                                                                              break;
                                                                              addr689:
                                                                              addr651:
                                                                              addr677:
                                                                           default:
                                                                              break;
                                                                           case 2:
                                                                              §§push(AngryBirdsFP11.§8R§);
                                                                              if(_loc9_ || eventIndex)
                                                                              {
                                                                                 §§pop().§!!'§();
                                                                                 addr563:
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(ExternalInterfaceHandler);
                                                                                       §§push("shareThreeStars");
                                                                                       if(_loc10_)
                                                                                       {
                                                                                       }
                                                                                       §§push(LevelManager.§!=§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                       }
                                                                                       §§push(LevelManager.§7+§().writtenName + "-");
                                                                                       if(!(_loc10_ && component))
                                                                                       {
                                                                                          §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                                                                                          if(_loc9_ || eventName)
                                                                                          {
                                                                                             addr546:
                                                                                          }
                                                                                          §§pop().§!!@§(§§pop(),§§pop(),§§pop(),§4!T§.controller.getScore());
                                                                                          addr553:
                                                                                          if(_loc9_ || eventIndex)
                                                                                          {
                                                                                             addr491:
                                                                                             if(_loc9_ || eventIndex)
                                                                                             {
                                                                                                if(!(_loc10_ && component))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr689);
                                                                                             }
                                                                                             §§goto(addr651);
                                                                                          }
                                                                                          §§goto(addr677);
                                                                                       }
                                                                                       §§goto(addr546);
                                                                                    }
                                                                                    §§goto(addr684);
                                                                                 }
                                                                                 §§goto(addr589);
                                                                                 addr581:
                                                                              }
                                                                              §§goto(addr682);
                                                                              addr586:
                                                                           case 3:
                                                                              addr481:
                                                                              if(_loc9_ || eventIndex)
                                                                              {
                                                                                 §§push(ExternalInterfaceHandler);
                                                                                 §§push("shareDefault");
                                                                                 if(_loc10_ && component)
                                                                                 {
                                                                                 }
                                                                                 §§push(LevelManager.§!=§);
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                 }
                                                                                 §§push(LevelManager.§7+§().writtenName + "-");
                                                                                 if(!(_loc10_ && component))
                                                                                 {
                                                                                    §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                                                                                    if(_loc10_ && component)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§push(§4!T§.controller.getScore());
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                 }
                                                                                 §§pop().§!!@§(§§pop(),§§pop(),§§pop(),§§pop(),true);
                                                                                 addr474:
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr390:
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr581);
                                                                                 }
                                                                                 §§goto(addr491);
                                                                              }
                                                                              §§goto(addr563);
                                                                           case 4:
                                                                              addr376:
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_ || eventIndex)
                                                                                    {
                                                                                       addr316:
                                                                                       §§push(§4!c§);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                       }
                                                                                       §§push(LevelManager.§!=§);
                                                                                       if(_loc10_ && eventName)
                                                                                       {
                                                                                       }
                                                                                       §§push(LevelManager.§7+§().writtenName + "-");
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§push(§§pop() + FacebookLevelManager.§else§(LevelManager.§!=§));
                                                                                          if(_loc10_ && eventIndex)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§pop().§4!]§(§§pop(),§§pop(),§4!T§.controller.getScore(),this.§#!,§);
                                                                                       if(!(_loc10_ && component))
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!(_loc10_ && component))
                                                                                             {
                                                                                                if(!(_loc10_ && this))
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr316);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr586);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             §§goto(addr474);
                                                                                          }
                                                                                          §§goto(addr316);
                                                                                       }
                                                                                       §§goto(addr376);
                                                                                    }
                                                                                    §§goto(addr682);
                                                                                 }
                                                                                 §§goto(addr553);
                                                                              }
                                                                              §§goto(addr390);
                                                                        }
                                                                        return;
                                                                        §§push(5);
                                                                     }
                                                                  }
                                                                  §§push(_loc8_);
                                                               }
                                                               §§goto(addr848);
                                                            }
                                                            §§goto(addr836);
                                                         }
                                                         §§goto(addr818);
                                                      }
                                                      §§goto(addr790);
                                                   }
                                                }
                                                §§goto(addr782);
                                             }
                                             §§goto(addr821);
                                          }
                                          §§goto(addr836);
                                       }
                                       §§goto(addr774);
                                    }
                                    §§goto(addr767);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      protected function §"6§(e:UserProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  (AngryBirdsFP11.sUserProgress as FacebookUserProgress).removeEventListener(UserProgressEvent.§>?§,this.§"6§);
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§;!Z§);
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 this.uiInteractionHandler(-1,this.§,N§,null);
                                 while(!(_loc2_ && e))
                                 {
                                    loop10:
                                    while(_loc3_)
                                    {
                                       this.§,N§ = null;
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop10;
                                       }
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 addr105:
                                 while(true)
                                 {
                                    this.§;!Z§ = null;
                                    §§goto(addr102);
                                 }
                              }
                              if(!_loc2_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                           §§goto(addr136);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      protected function saveLevelProgress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
               (§4!T§.§%!K§ as AngryBirdsUltraBook).newUserScore(LevelManager.§!=§);
               while(!(_loc1_ && this))
               {
                  do
                  {
                     (AngryBirdsFP11.sUserProgress as FacebookUserProgress).saveLevelProgress(LevelManager.§!=§);
                     while(!_loc2_)
                     {
                     }
                  }
                  while(_loc1_ && _loc1_);
                  
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      override protected function setScoreData() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(!(_loc6_ && this))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(!_loc6_)
                     {
                        loop4:
                        while(true)
                        {
                           while(_loc7_)
                           {
                              if(_loc7_)
                              {
                                 if(_loc6_)
                                 {
                                    break loop4;
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr44);
         }
         §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var oldStars:* = §§pop();
         if(!_loc7_)
         {
         }
         §§push(AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§!=§));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var highScore:* = §§pop();
         if(!_loc7_)
         {
         }
         §§push(§4!T§.controller.getScore());
         if(!(_loc6_ && newScore))
         {
            §§push(int(§§pop()));
         }
         var newScore:* = §§pop();
         if(!(_loc6_ && highScore))
         {
            while(true)
            {
               §#!5§ = newScore > highScore;
               addr139:
               if(_loc6_ && newScore)
               {
                  continue;
               }
               if(!(_loc6_ && highScore))
               {
                  addr117:
                  if(!(_loc6_ && this))
                  {
                     if(false)
                     {
                        loop10:
                        while(true)
                        {
                           §<j§(newScore,highScore);
                           addr132:
                           addr149:
                           while(!(_loc6_ && newScore))
                           {
                              §§goto(addr139);
                           }
                           while(true)
                           {
                              continue loop10;
                              §§goto(addr132);
                           }
                        }
                     }
                     §§push(AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§!=§,newScore));
                     if(!_loc6_)
                     {
                        §§push(int(§§pop()));
                     }
                     var starCount:* = §§pop();
                     if(!_loc6_)
                     {
                        (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(false);
                        (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.gotoAndStop("UnLit");
                        (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.gotoAndStop("UnLit");
                        addr305:
                        addr345:
                        addr343:
                        addr321:
                        addr318:
                     }
                     addr302:
                     if(_loc7_ || this)
                     {
                        if(!(_loc6_ && oldStars))
                        {
                           (§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.gotoAndStop("UnLit");
                           addr270:
                           if(!_loc6_)
                           {
                              addr255:
                              if(!_loc6_)
                              {
                                 if(§#!5§)
                                 {
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(_loc7_ || this)
                                          {
                                             if(!(_loc6_ && newScore))
                                             {
                                                if(_loc7_ || newScore)
                                                {
                                                   this.saveLevelProgress();
                                                   addr214:
                                                   addr252:
                                                   if(!_loc6_)
                                                   {
                                                      addr192:
                                                      (§4!T§.§%!K§ as AngryBirdsUltraBook).§=s§.§`!4§ = false;
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_ || highScore)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§push(AngryBirdsFP11.sUserProgress.getTotalStars());
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  var newStars:* = §§pop();
                                                                  if(_loc7_ || oldStars)
                                                                  {
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr214);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                   addr221:
                                                   §§goto(addr221);
                                                }
                                                §§goto(addr345);
                                             }
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr343);
                        }
                        §§goto(addr321);
                     }
                     §§goto(addr318);
                  }
                  while(true)
                  {
                     §§goto(addr149);
                     §§goto(addr117);
                  }
                  addr156:
               }
               §§goto(addr132);
            }
         }
         §§goto(addr156);
      }
      
      override protected function setButtonStates(state:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || state)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               addr157:
               while(true)
               {
                  (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
               }
               addr52:
               if(!(_loc3_ && _loc3_))
               {
                  return;
               }
            }
         }
         loop2:
         while(true)
         {
            loop3:
            for(; _loc2_; if(!(_loc2_ || this))
            {
               continue;
            },§§goto(addr52))
            {
               (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
               loop4:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop6;
                              }
                              continue loop7;
                              addr97:
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            §§goto(addr157);
         }
      }
      
      override protected function initButtonDefaultPositions() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               §2R§.push((§^,§.getItemByName("Button_Menu") as UIButtonRovio).x);
               while(true)
               {
                  addr76:
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  §2R§.push((§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x);
                  loop7:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     addr59:
                     addr133:
                     while(_loc1_ || this)
                     {
                        §§goto(addr76);
                     }
                     loop3:
                     while(true)
                     {
                        do
                        {
                           if(_loc1_)
                           {
                              §2R§.push((§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
                              break loop7;
                           }
                           break loop3;
                        }
                        while(_loc2_ && _loc2_);
                        
                        return;
                        §§goto(addr59);
                     }
                     continue loop0;
                  }
                  while(!(_loc2_ && _loc1_))
                  {
                     §§goto(addr59);
                  }
                  while(true)
                  {
                     §2R§.push((§^,§.getItemByName("Button_Replay") as UIButtonRovio).x);
                     §§goto(addr133);
                     §§goto(addr97);
                  }
                  addr97:
               }
            }
         }
         §§goto(addr136);
      }
      
      override protected function getViewXML() : XML
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return §3!5§.§4@§.Views.View_LevelEnd[0];
      }
      
      override protected function showButtonsCutScene() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            loop0:
            do
            {
               §§push(AngryBirdsFP11.sUserProgress.§41§(LevelManager.§!=§));
               if(!_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                        loop3:
                        while(_loc1_ || _loc1_)
                        {
                           loop4:
                           for(; !(_loc2_ && _loc1_); while(!(_loc2_ && _loc2_))
                           {
                              (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                              §§goto(addr180);
                           })
                           {
                              (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                              while(true)
                              {
                                 continue loop4;
                                 addr98:
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc1_ || this)
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!(_loc2_ && this))
                                          {
                                             (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = §2R§[2];
                                             loop13:
                                             while(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue loop13;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            break loop12;
                                                         }
                                                         continue loop1;
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = §2R§[1];
                                                                              addr96:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§goto(addr98);
                                                                              }
                                                                              addr410:
                                                                              while(true)
                                                                              {
                                                                                 addr398:
                                                                                 while(true)
                                                                                 {
                                                                                    (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                                                                                    addr395:
                                                                                    break loop3;
                                                                                 }
                                                                                 continue loop0;
                                                                                 addr351:
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
                                                                                    (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = §2R§[0] + Math.abs(§2R§[1] - §2R§[0]) / 2;
                                                                                    break loop9;
                                                                                    addr348:
                                                                                    addr336:
                                                                                    addr333:
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
                                                                        §§goto(addr410);
                                                                        addr424:
                                                                     }
                                                                     addr370:
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            break;
                                                         }
                                                         addr297:
                                                         addr159:
                                                         while(!(_loc2_ && this))
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = §2R§[0];
                                                            }
                                                            continue loop9;
                                                         }
                                                         break loop12;
                                                         §§goto(addr336);
                                                      }
                                                      if(_loc1_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr398);
                                                   }
                                                   §§goto(addr96);
                                                }
                                             }
                                             continue loop2;
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                if(_loc1_)
                                                {
                                                   §§goto(addr159);
                                                }
                                                break;
                                             }
                                             continue loop4;
                                          }
                                          §§goto(addr333);
                                          addr180:
                                       }
                                       §§goto(addr395);
                                    }
                                    return;
                                 }
                                 §§goto(addr424);
                              }
                           }
                        }
                        (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
                        §§goto(addr370);
                     }
                  }
               }
               §§goto(addr423);
            }
            while(_loc2_);
            
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = §2R§[1] + Math.abs(§2R§[2] - §2R§[1]) / 2;
            §§goto(addr297);
         }
         §§goto(addr70);
      }
      
      override protected function showButtonsNormal() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            loop0:
            while(true)
            {
               (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
                     addr339:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
                           continue loop0;
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr246);
      }
   }
}
