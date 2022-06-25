package §%!4§
{
   import §##§.Popup;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class EmbedPopup extends Popup
   {
       
      
      protected var §`%§:String;
      
      protected var §[!b§:String;
      
      public function EmbedPopup(currentUIView:§6"§, statePopup:StatePopupManager, levelId:String, levelName:String, score:int, shareType:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         if(_loc7_ || currentUIView)
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
                     while(true)
                     {
                        continue loop1;
                        addr450:
                        loop5:
                        while(!(_loc8_ && statePopup))
                        {
                           loop6:
                           while(true)
                           {
                              super(§>!^§.§8'§.Views.PopupView_Embed[0],currentUIView);
                              while(true)
                              {
                                 loop8:
                                 while(true)
                                 {
                                    mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§0N§);
                                    loop9:
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§-!;§);
                                          while(_loc7_)
                                          {
                                             while(true)
                                             {
                                                mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§!!2§);
                                                addr387:
                                                while(true)
                                                {
                                                   addr373:
                                                   while(_loc7_)
                                                   {
                                                      this.§`%§ = this.§3+§(levelId,levelName,score,shareType);
                                                      while(true)
                                                      {
                                                         continue loop9;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             addr134:
                                             if(_loc8_ && currentUIView)
                                             {
                                                continue;
                                             }
                                             mClip.Embed_CheckHTML.visible = false;
                                             loop35:
                                             while(!(_loc8_ && currentUIView))
                                             {
                                                loop36:
                                                while(!(_loc8_ && levelId))
                                                {
                                                   if(_loc7_)
                                                   {
                                                      addr103:
                                                      if(!(_loc8_ && currentUIView))
                                                      {
                                                         while(true)
                                                         {
                                                            mClip.Embed_CheckURL.stop();
                                                            loop38:
                                                            while(!_loc8_)
                                                            {
                                                               addr75:
                                                               if(_loc7_ || statePopup)
                                                               {
                                                                  addr82:
                                                                  if(!(_loc8_ && levelId))
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              addr57:
                                                                              if(_loc8_ && levelId)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 mClip.Embed_CheckURL.visible = false;
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       continue loop39;
                                                                                    }
                                                                                 }
                                                                                 continue loop36;
                                                                              }
                                                                              addr335:
                                                                              addr335:
                                                                              loop32:
                                                                              while(_loc7_ || this)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    mClip.Embed_CheckHTML.stop();
                                                                                    break loop38;
                                                                                 }
                                                                                 addr283:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr311:
                                                                                          break;
                                                                                          addr311:
                                                                                       }
                                                                                       while(!_loc8_)
                                                                                       {
                                                                                          mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§'!=§);
                                                                                          while(_loc7_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop5;
                                                                                          if(_loc8_ && this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue loop32;
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       while(_loc7_ || this)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             mClip.txtEmbedURL.text = this.§[!b§;
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                break loop35;
                                                                                                addr215:
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ && currentUIView))
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         break loop32;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                   addr172:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ && this)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr181);
                                                                                                      §§goto(addr75);
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr387);
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr195:
                                                                                    if(!(_loc7_ || statePopup))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§break§);
                                                                                    §§goto(addr172);
                                                                                 }
                                                                                 §§goto(addr301);
                                                                                 §§goto(addr151);
                                                                              }
                                                                              addr151:
                                                                              while(_loc7_ || statePopup)
                                                                              {
                                                                                 mClip.stage.focus = mClip.txtEmbedHTML;
                                                                                 while(true)
                                                                                 {
                                                                                    addr321:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          this.§[!b§ = this.§'`§(levelId,levelName,score,shareType);
                                                                                          §§goto(addr311);
                                                                                       }
                                                                                       break;
                                                                                       §§goto(addr82);
                                                                                    }
                                                                                    §§goto(addr370);
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop38;
                                                                        }
                                                                        while(_loc7_ || statePopup)
                                                                        {
                                                                           §§goto(addr134);
                                                                           §§goto(addr57);
                                                                        }
                                                                        §§goto(addr263);
                                                                        addr127:
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr127);
                                                            }
                                                         }
                                                         addr110:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr103);
                                                         }
                                                         addr350:
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   §§goto(addr332);
                                                }
                                             }
                                             while(true)
                                             {
                                                mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                                §§goto(addr283);
                                                §§goto(addr117);
                                             }
                                             addr117:
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 if(_loc8_ && currentUIView)
                                 {
                                    continue;
                                 }
                                 mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                 §§goto(addr215);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      protected function §'!=§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
         }
         if(_loc3_ || _loc2_)
         {
         }
         while(true)
         {
            while(_loc3_ || this)
            {
               mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
               while(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §break§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(true)
               {
                  mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                  §§goto(addr79);
               }
            }
         }
         addr79:
         while(true)
         {
            if(_loc3_)
            {
               if(_loc3_ || _loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr66:
      }
      
      protected function §3+§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || score)
         {
         }
         if(!(_loc6_ && this))
         {
            if(!(_loc6_ && levelId))
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     loop2:
                     while(!(_loc6_ && this))
                     {
                        while(!(_loc6_ && this))
                        {
                           if(_loc6_)
                           {
                              break;
                           }
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        §§push("https://");
                        if(_loc7_)
                        {
                           §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
                        }
                        §§push(§§pop());
                        if(_loc7_ || levelName)
                        {
                        }
                        var serverRoot:String = §§pop();
                        §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                        if(_loc7_ || levelName)
                        {
                           if(_loc7_)
                           {
                              §§push(serverRoot);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    §§push("/embed");
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc6_ && levelName))
                                       {
                                          §§push("?levelId=");
                                          if(_loc7_ || levelId)
                                          {
                                             addr179:
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(levelId);
                                                   if(!(_loc6_ && score))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_ || levelId)
                                                      {
                                                      }
                                                      addr220:
                                                      §§push(§§pop() + escape(levelName));
                                                      if(!(_loc6_ && this))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(score > 0);
                                                            if(!(_loc6_ && levelName))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc7_ || levelName)
                                                                  {
                                                                     §§push("&score=");
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(§§pop() + score);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr270:
                                                                           addr264:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(_loc6_ && levelName)
                                                                              {
                                                                              }
                                                                              addr296:
                                                                              §§push("&type=");
                                                                              if(_loc7_ || levelId)
                                                                              {
                                                                                 addr314:
                                                                                 §§push(§§pop() + shareType);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr329:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr332:
                                                                                       §§push("\" ></iframe>");
                                                                                       if(_loc7_ || this)
                                                                                       {
                                                                                          addr342:
                                                                                          return §§pop() + §§pop();
                                                                                          addr341:
                                                                                          addr340:
                                                                                       }
                                                                                       §§goto(addr341);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           if(shareType)
                                                                           {
                                                                              if(!(_loc6_ && levelName))
                                                                              {
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push("");
                                                                              if(!(_loc6_ && levelName))
                                                                              {
                                                                                 §§goto(addr329);
                                                                                 §§push(§§pop());
                                                                              }
                                                                              §§goto(addr340);
                                                                           }
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr269:
                                                                        §§push(§§pop());
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               else
                                                               {
                                                                  §§push("");
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§goto(addr269);
                                                                  }
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                §§push("&levelName=");
                                                if(_loc7_ || this)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr220);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr329);
                                          }
                                          §§goto(addr342);
                                       }
                                       §§goto(addr332);
                                    }
                                    §§goto(addr179);
                                 }
                                 §§goto(addr296);
                              }
                              §§goto(addr270);
                           }
                           §§goto(addr342);
                        }
                        §§goto(addr220);
                     }
                  }
               }
               addr74:
            }
            §§goto(addr100);
         }
         §§goto(addr74);
      }
      
      protected function §'`§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
         }
         if(!_loc7_)
         {
            while(true)
            {
               while(_loc6_)
               {
                  while(true)
                  {
                     if(_loc6_ || levelName)
                     {
                        if(_loc7_)
                        {
                           break;
                           addr48:
                        }
                        loop3:
                        while(true)
                        {
                           while(_loc6_)
                           {
                              if(_loc6_ || levelName)
                              {
                                 continue loop3;
                              }
                           }
                        }
                        continue;
                     }
                  }
               }
            }
         }
         §§goto(addr84);
      }
      
      private function §-!;§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || e)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  System.setClipboard(this.§`%§);
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        mClip.Embed_CheckHTML.gotoAndPlay(1);
                        while(_loc2_)
                        {
                           loop6:
                           while(_loc2_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr36:
                                    if(_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          mClip.Embed_CheckHTML.visible = true;
                                          continue loop6;
                                          §§goto(addr36);
                                       }
                                       addr81:
                                    }
                                    return;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §!!2§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               System.setClipboard(this.§[!b§);
               loop2:
               while(true)
               {
                  while(true)
                  {
                     mClip.Embed_CheckURL.gotoAndPlay(1);
                     loop4:
                     while(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           while(!_loc2_)
                           {
                              mClip.Embed_CheckURL.visible = true;
                              while(!_loc2_)
                              {
                                 if(!(_loc2_ && e))
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop1;
                                    }
                                    continue loop4;
                                    continue loop4;
                                 }
                              }
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      private function §0N§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               loop1:
               while(_loc2_ || _loc3_)
               {
                  while(true)
                  {
                     close();
                     while(!(_loc2_ || e))
                     {
                     }
                     if(!(_loc3_ && e))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr83);
      }
   }
}
