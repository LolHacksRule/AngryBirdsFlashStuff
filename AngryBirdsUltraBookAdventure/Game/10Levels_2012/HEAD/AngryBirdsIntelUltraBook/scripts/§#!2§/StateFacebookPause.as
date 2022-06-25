package §#!2§
{
   import §"!2§.§+,§;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §9!!§.§85§;
   import §9c§.StatePause;
   import §<!G§.TweenManager;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[g§.FacebookLevelManager;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextFieldAutoSize;
   
   public class StateFacebookPause extends StatePause
   {
       
      
      public function StateFacebookPause(initState:Boolean = false, name:String = "PauseState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     super(initState,name);
                     §§goto(addr78);
                  }
               }
            }
         }
         addr78:
         while(true)
         {
            if(!(_loc4_ && name))
            {
               if(_loc3_ || this)
               {
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               continue loop2;
            }
         }
         addr72:
      }
      
      override public function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §"=§ = true;
                  while(true)
                  {
                     addr118:
                     while(true)
                     {
                        §^,§ = new §-!H§(this);
                     }
                     loop5:
                     for(; _loc3_ || chapterTextField; while(true)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           continue loop1;
                        }
                        continue loop5;
                     },continue loop1)
                     {
                        §^,§.init(§3!5§.§4@§.Views.View_FacebookLevelPause[0]);
                        while(true)
                        {
                           addr83:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
                                    continue loop5;
                                 }
                                 continue;
                                 addr48:
                              }
                              else
                              {
                                 addr115:
                              }
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           addr35:
                           if(_loc2_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 continue loop0;
                              }
                              if(false)
                              {
                                 §§goto(addr48);
                              }
                              else
                              {
                                 var chapterTextField:UITextFieldRovio = §^,§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
                                 if(_loc2_ && _loc3_)
                                 {
                                 }
                                 chapterTextField.§ ^§.autoSize = TextFieldAutoSize.CENTER;
                                 addr181:
                                 if(_loc3_ || chapterTextField)
                                 {
                                    if(_loc2_)
                                    {
                                       §§goto(addr181);
                                    }
                                    return;
                                 }
                                 addr179:
                                 §§goto(addr179);
                              }
                           }
                           else
                           {
                              §§goto(addr118);
                           }
                           §§goto(addr115);
                        }
                     }
                  }
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        §§goto(addr35);
                     }
                     §§goto(addr83);
                  }
                  §§goto(addr56);
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               super.activate();
               while(true)
               {
                  addr87:
                  while(_loc2_ || this)
                  {
                     while(true)
                     {
                        (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_NONE);
                        continue loop0;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      protected function §0![§(levelid:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc2_))
         {
            while(!_loc3_)
            {
            }
         }
         return FacebookLevelManager.§else§(levelid);
      }
      
      override protected function openPauseMenu() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || chapterTextField)
         {
         }
         var chapterTextField:UITextFieldRovio = null;
         if(_loc3_)
         {
            if(_loc3_)
            {
               loop0:
               while(LevelManager.§!=§ != null)
               {
                  if(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && chapterTextField))
                        {
                           if(false)
                           {
                              continue;
                           }
                           chapterTextField = §^,§.getItemByName("TextField_ChapterName") as UITextFieldRovio;
                           if(_loc2_ && this)
                           {
                           }
                           loop1:
                           while(true)
                           {
                              chapterTextField.§ ^§.text = LevelManager.§7+§().writtenName;
                              while(true)
                              {
                                 while(_loc3_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       (§^,§.getItemByName("TextField_LevelName") as UITextFieldRovio).§ ^§.text = this.§0![§(LevelManager.§!=§);
                                       continue loop1;
                                       addr80:
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(true)
                                       {
                                          break loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        loop9:
                        while(true)
                        {
                           § in§.onComplete = §'u§;
                           loop10:
                           while(_loc3_ || chapterTextField)
                           {
                              loop11:
                              while(true)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    addr196:
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       § in§.play();
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
                                       loop19:
                                       while(true)
                                       {
                                          addr220:
                                          while(!_loc3_)
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc3_ || chapterTextField)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      addr317:
                                                      while(true)
                                                      {
                                                         break loop11;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      § in§.stop();
                                                   }
                                                   addr308:
                                                }
                                                addr301:
                                                while(true)
                                                {
                                                   continue loop14;
                                                }
                                             }
                                             while(true)
                                             {
                                                addr223:
                                                while(true)
                                                {
                                                   §§push(§§findproperty(§ in§));
                                                   §§push(TweenManager.§&!'§);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                   §§push(TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":0},null,0.25));
                                                   if(!_loc3_)
                                                   {
                                                   }
                                                   §§pop().§ in§ = §§pop().§+!^§(§§pop(),TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_DarkBG") as §+,§).mClip,{"alpha":1},{"alpha":0},0.25));
                                                   continue loop19;
                                                }
                                             }
                                             continue loop19;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          § 9§(false);
                                          while(true)
                                          {
                                             while(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   §4!T§.pause();
                                                }
                                                if(_loc3_ || chapterTextField)
                                                {
                                                   break loop9;
                                                }
                                             }
                                          }
                                          §§goto(addr196);
                                       }
                                       addr330:
                                    }
                                    §§goto(addr317);
                                 }
                                 break;
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    §§goto(addr169);
                                 }
                                 §§goto(addr220);
                              }
                              while(true)
                              {
                                 if(§ in§ != null)
                                 {
                                    break loop10;
                                 }
                                 §§goto(addr223);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr308);
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr330);
               }
               (§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio).x = StatePause.OFFSCREEN_X;
               if(_loc3_)
               {
                  §§goto(addr141);
               }
               §§goto(addr301);
            }
            §§goto(addr285);
         }
         §§goto(addr322);
      }
      
      override protected function setInitialButtonVisibilities() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         while(true)
         {
            §^,§.getItemByName("Button_Help").setVisibility(false);
            loop1:
            for(; _loc1_; if(_loc1_ || this)
            {
               return;
            })
            {
               while(true)
               {
                  §^,§.getItemByName("Button_Sound").setVisibility(false);
                  while(!_loc2_)
                  {
                     if(_loc1_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      override protected function closePauseMenu() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
         }
         if(_loc1_ || _loc1_)
         {
            loop0:
            while(true)
            {
               if(§ in§ != null)
               {
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        § in§.stop();
                        while(true)
                        {
                           while(!(_loc2_ && this))
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              while(true)
                              {
                                 §§push(§§findproperty(§ in§));
                                 §§push(TweenManager.§&!'§);
                                 if(_loc2_ && this)
                                 {
                                 }
                                 §§push(TweenManager.§&!'§.§3L§(§^,§.getItemByName("Container_PauseMenu") as UIContainerRovio,{"x":OFFSCREEN_X},null,0.25));
                                 if(_loc1_ || _loc1_)
                                 {
                                 }
                                 §§pop().§ in§ = §§pop().§+!^§(§§pop(),TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_DarkBG") as §+,§).mClip,{"alpha":0},{"alpha":1},0.25));
                                 continue loop0;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 § in§.onComplete = §,J§;
                                 do
                                 {
                                    continue loop1;
                                 }
                                 while(!_loc1_);
                                 
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr98);
            }
         }
         while(true)
         {
            §§goto(addr78);
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || eventName)
         {
         }
         var soundsEnabled:* = false;
         var ultrabookURL:String = null;
         var urlReq:URLRequest = null;
         if(!_loc8_)
         {
            while(true)
            {
               loop1:
               while(_loc9_)
               {
                  while(_loc8_)
                  {
                     continue loop1;
                  }
                  §§push(eventName);
                  loop3:
                  while(true)
                  {
                     var _loc7_:* = §§pop();
                     if(_loc9_ || eventIndex)
                     {
                        §§push("TOGGLE_SOUNDS");
                        if(!(_loc8_ && component))
                        {
                           if(_loc9_)
                           {
                              addr263:
                              §§push(_loc7_);
                              if(!(_loc8_ && component))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       §§push(0);
                                       if(_loc8_ && this)
                                       {
                                          addr314:
                                       }
                                    }
                                    else
                                    {
                                       addr317:
                                       §§push(2);
                                       if(_loc8_)
                                       {
                                       }
                                    }
                                    addr322:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          loop14:
                                          while(true)
                                          {
                                             §§push(AngryBirdsFP11.§%!D§());
                                             if(_loc9_)
                                             {
                                                §§push(!§§pop());
                                                if(_loc9_ || component)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                             }
                                             soundsEnabled = §§pop();
                                             loop15:
                                             do
                                             {
                                                while(!_loc8_)
                                                {
                                                   AngryBirdsFP11.§ !@§(soundsEnabled);
                                                   while(_loc9_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop15;
                                                      }
                                                   }
                                                }
                                                continue loop14;
                                             }
                                             while(_loc8_ && eventIndex);
                                             
                                             break loop3;
                                          }
                                          break;
                                       case 1:
                                          continue;
                                       default:
                                          loop4:
                                          while(true)
                                          {
                                             addr194:
                                             while(true)
                                             {
                                                super.uiInteractionHandler(eventIndex,eventName,component);
                                                while(!(_loc8_ && eventIndex))
                                                {
                                                   if(!(_loc9_ || component))
                                                   {
                                                      while(_loc8_ && eventName)
                                                      {
                                                         navigateToURL(urlReq,"_blank");
                                                      }
                                                      break;
                                                   }
                                                   if(!_loc8_)
                                                   {
                                                      continue loop4;
                                                   }
                                                }
                                                break loop3;
                                             }
                                          }
                                    }
                                 }
                                 else
                                 {
                                    §§push("LEARN_MORE");
                                    if(_loc9_ || this)
                                    {
                                       addr301:
                                    }
                                    addr303:
                                    if(§§pop() === _loc7_)
                                    {
                                       if(!(_loc8_ && component))
                                       {
                                          addr311:
                                          §§push(1);
                                          if(!_loc8_)
                                          {
                                             §§goto(addr314);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr317);
                                       }
                                    }
                                    else if(false)
                                    {
                                       §§goto(addr317);
                                    }
                                    else
                                    {
                                       §§push(2);
                                    }
                                    §§goto(addr322);
                                 }
                                 §§goto(addr317);
                              }
                              §§goto(addr303);
                           }
                           §§goto(addr301);
                        }
                        §§goto(addr263);
                     }
                     §§goto(addr311);
                  }
                  return;
               }
            }
         }
         §§goto(addr170);
      }
   }
}
