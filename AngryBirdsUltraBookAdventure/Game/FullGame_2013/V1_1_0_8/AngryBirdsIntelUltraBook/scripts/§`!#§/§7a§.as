package §`!#§
{
   import §"!i§.LevelManager;
   import §+!f§.§@!c§;
   import §2!U§.§>!"§;
   import §2y§.§[!i§;
   import §;!y§.§,!s§;
   import §<-§.§!!K§;
   import §>L§.§+!i§;
   import §@!&§.§'!o§;
   import §^!m§.§4!i§;
   import com.angrybirds.friendsbar.§-V§;
   import flash.display.MovieClip;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §7a§ extends §>!"§
   {
       
      
      private var §@X§:Array;
      
      private var §"=§:Boolean = false;
      
      private var §&!!§:Number = 41.666666666666664;
      
      private var §@!U§:int = 0;
      
      public function §7a§(param1:Boolean = false, param2:String = "LevelEndFailStateRio")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§@X§ = [];
         }
         do
         {
            super(param1,param2);
         }
         while(_loc4_ && this);
         
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §'!Q§.getItemByName("Button_Fullscreen").setVisibility(false);
               loop1:
               for(; _loc1_ || this; while(true)
               {
                  if(!(_loc1_ || _loc2_))
                  {
                     continue loop1;
                  }
                  §§goto(addr80);
                  §§goto(addr28);
               },§§goto(addr56))
               {
                  while(true)
                  {
                     §§push(this.§@X§);
                     addr56:
                     while(true)
                     {
                        §§pop().push((§'!Q§.getItemByName("Button_Menu") as §[!i§).x);
                        §§push(this.§@X§);
                        addr80:
                        continue loop1;
                        if(!_loc2_)
                        {
                           §§pop().push((§'!Q§.getItemByName("Button_Replay") as §[!i§).x);
                           addr28:
                           if(!(_loc2_ && this))
                           {
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            loop0:
            while(true)
            {
               (§,!s§.§]!J§ as §<t§).§'!0§(§-V§.§6!;§);
               loop1:
               while(true)
               {
                  §,!s§.§=!I§.background.§4!=§();
                  do
                  {
                     if(_loc1_ || _loc2_)
                     {
                        if(LevelManager.§+!$§().name != "1000")
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  return;
               }
            }
         }
         §§goto(addr75);
      }
      
      override protected function setButtonStates(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         }
         while(true)
         {
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
            while(_loc2_ || this)
            {
               (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
         }
      }
      
      override protected function showButtons() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(LevelManager.§8`§());
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            §§push(Boolean(_loc1_));
            loop0:
            while(true)
            {
               §§push(§§pop());
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
                           §§push(AngryBirdsFP11.sUserProgress);
                           loop4:
                           while(true)
                           {
                              §§push(_loc1_);
                              addr141:
                              while(true)
                              {
                                 §§push(§§pop().isLevelOpen(§§pop()));
                                 if(_loc2_ || _loc1_)
                                 {
                                    continue loop0;
                                 }
                                 addr172:
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(LevelManager.§7v§());
                                             if(!_loc3_)
                                             {
                                                addr63:
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               continue loop3;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr71:
                                                            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                                                            addr78:
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc3_ && _loc2_)
                                                               {
                                                                  addr127:
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
                                                                  addr136:
                                                               }
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr78);
                                                   }
                                                   §§goto(addr71);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(!§§pop());
                                                      }
                                                      addr181:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop4;
                                                      }
                                                      §§goto(addr63);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(_loc2_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop11;
                                                         }
                                                         addr171:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr181);
                                                      }
                                                   }
                                                   addr113:
                                                   addr162:
                                                }
                                                §§goto(addr127);
                                             }
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc1_))
                                                {
                                                   continue loop12;
                                                }
                                                continue loop2;
                                             }
                                          }
                                          §§goto(addr127);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr171);
               }
            }
         }
         §§goto(addr129);
      }
      
      override protected function hideButtons() : void
      {
      }
      
      protected function §3!F§(param1:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(param1.currentFrame + 1);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() > param1.totalFrames)
               {
                  addr75:
                  while(true)
                  {
                     §§push(1);
                     addr76:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr77:
                        while(true)
                        {
                        }
                     }
                  }
                  addr75:
               }
               while(true)
               {
                  param1.gotoAndStop(_loc2_);
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  §§goto(addr75);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr75);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§@!U§ += param1;
            loop0:
            while(true)
            {
               §§push(this.§@!U§);
               loop1:
               while(true)
               {
                  if(§§pop() >= this.§&!!§)
                  {
                     if(!_loc3_)
                     {
                        this.§3!F§(§'!Q§.getItemByName("MovieClip_LevelEndFailedPig").mClip["timmie"]);
                     }
                     loop2:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§@!U§ = 0;
                           if(!(_loc3_ && _loc2_))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr83);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = null;
         var _loc5_:URLRequest = null;
         if(_loc8_)
         {
            super.uiInteractionHandler(param1,param2,param3);
         }
         var _loc6_:* = param2;
         if(_loc8_)
         {
            §§push("FRIENDS_BUTTON");
            if(_loc8_ || param3)
            {
               §§push(_loc6_);
               if(!_loc7_)
               {
                  if(§§pop() === §§pop())
                  {
                     if(_loc8_ || param2)
                     {
                        §§push(0);
                        if(!(_loc8_ || param3))
                        {
                           addr217:
                        }
                     }
                     else
                     {
                        addr221:
                        §§push(2);
                        if(!_loc8_)
                        {
                        }
                     }
                     §§goto(addr229);
                  }
                  else
                  {
                     §§push("SHARE_DEFAULT");
                     if(!(_loc7_ && this))
                     {
                        §§push(_loc6_);
                        if(_loc8_ || param2)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc7_ && param2))
                              {
                                 §§push(1);
                                 if(_loc8_)
                                 {
                                    §§goto(addr217);
                                 }
                              }
                              else
                              {
                                 §§goto(addr221);
                              }
                              §§goto(addr229);
                           }
                           else
                           {
                              addr219:
                              §§push("EMBED");
                              §§push(_loc6_);
                           }
                           §§goto(addr221);
                        }
                     }
                     §§goto(addr219);
                  }
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr221);
               }
               else
               {
                  §§push(3);
               }
               addr229:
               loop2:
               switch(§§pop())
               {
                  case 0:
                     _loc4_ = "http://apps.facebook.com/angrybirds/?fb_source=facebook_intel";
                     loop0:
                     while(true)
                     {
                        addr46:
                        while(true)
                        {
                           §!!K§.§%$§(_loc4_);
                           if(!_loc8_)
                           {
                              break loop2;
                           }
                           §<t§.§`n§.§5!M§();
                           if(!(_loc8_ || this))
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        break loop2;
                     }
                     break;
                  case 1:
                     §§push(§+!i§);
                     §§push("shareDefault");
                     §§push(LevelManager.§"L§);
                     §§push(LevelManager.§+!$§().writtenName + "-");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
                     }
                     §§pop().§>!y§(§§pop(),§§pop(),§§pop(),0,false);
                     addr132:
                     if(!(_loc7_ && this))
                     {
                        break;
                     }
                     §§goto(addr144);
                     break;
                  case 2:
                     §§push(§4!i§);
                     §§push(LevelManager.§"L§);
                     §§push(LevelManager.§+!$§().writtenName + "-");
                     if(!_loc7_)
                     {
                        §§push(§§pop() + §@!c§.§<!N§(LevelManager.§"L§));
                     }
                     §§pop().§4!x§(§§pop(),§§pop(),§,!s§.§ Q§.getScore(),"");
                     if(_loc8_)
                     {
                        if(true)
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§goto(addr132);
                     }
                     §§goto(addr100);
               }
               return;
            }
            §§goto(addr219);
         }
         §§goto(addr221);
      }
   }
}
