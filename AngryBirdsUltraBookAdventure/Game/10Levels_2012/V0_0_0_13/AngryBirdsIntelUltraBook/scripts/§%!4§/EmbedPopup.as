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
         if(_loc8_ && this)
         {
         }
         if(_loc7_)
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
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              while(true)
                              {
                                 super(§>!^§.§8'§.Views.PopupView_Embed[0],currentUIView);
                                 loop27:
                                 while(_loc7_ || levelId)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                       addr231:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop27;
                                          }
                                          if(_loc8_ && levelId)
                                          {
                                             break;
                                          }
                                          loop30:
                                          while(true)
                                          {
                                             mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§break§);
                                             addr187:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop28;
                                                }
                                                continue loop30;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       loop20:
                                       while(true)
                                       {
                                          this.§[!b§ = this.§'`§(levelId,levelName,score,shareType);
                                          loop21:
                                          while(true)
                                          {
                                             loop22:
                                             while(true)
                                             {
                                                mClip.txtEmbedURL.text = this.§[!b§;
                                                continue loop0;
                                                addr80:
                                                if(!(_loc7_ || levelId))
                                                {
                                                   continue;
                                                }
                                                mClip.Embed_CheckURL.visible = false;
                                                loop39:
                                                while(true)
                                                {
                                                   if(_loc7_ || currentUIView)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   loop38:
                                                   while(true)
                                                   {
                                                      if(_loc7_ || currentUIView)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            loop36:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr115:
                                                                  if(_loc7_ || levelId)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                           addr94:
                                                                        }
                                                                        mClip.Embed_CheckURL.stop();
                                                                        loop37:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr98:
                                                                                 if(!(_loc7_ || levelId))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop38;
                                                                              }
                                                                              loop33:
                                                                              while(!(_loc8_ && this))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       continue loop21;
                                                                                    }
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       mClip.Embed_CheckHTML.visible = false;
                                                                                       while(_loc7_ || this)
                                                                                       {
                                                                                          continue loop36;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                                                                          break loop33;
                                                                                          §§goto(addr133);
                                                                                       }
                                                                                       addr133:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       addr331:
                                                                                       while(!(_loc8_ && levelId))
                                                                                       {
                                                                                          mClip.stage.focus = mClip.txtEmbedHTML;
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop20;
                                                                                             addr265:
                                                                                             while(_loc7_ || levelId)
                                                                                             {
                                                                                                mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§'!=§);
                                                                                                continue loop27;
                                                                                                if(_loc7_ || this)
                                                                                                {
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(!(_loc8_ && currentUIView))
                                                                                          {
                                                                                             mClip.Embed_CheckHTML.stop();
                                                                                             continue loop33;
                                                                                             §§goto(addr115);
                                                                                          }
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                                 while(_loc7_)
                                                                                 {
                                                                                    mClip.txtEmbedHTML.text = this.§`%§;
                                                                                    §§goto(addr346);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§0N§);
                                                                                       break loop39;
                                                                                       addr380:
                                                                                       if(!(_loc7_ || currentUIView))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       this.§`%§ = this.§3+§(levelId,levelName,score,shareType);
                                                                                       while(_loc7_ || levelId)
                                                                                       {
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr373:
                                                                                             if(!(_loc7_ || currentUIView))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr380);
                                                                                          }
                                                                                          addr409:
                                                                                          while(true)
                                                                                          {
                                                                                             mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§!!2§);
                                                                                             continue loop1;
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       addr361:
                                                                                       while(true)
                                                                                       {
                                                                                          mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§-!;§);
                                                                                          break loop37;
                                                                                          §§goto(addr373);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr349:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr265);
                                                                                 §§goto(addr158);
                                                                              }
                                                                              addr158:
                                                                           }
                                                                           §§goto(addr143);
                                                                           continue loop38;
                                                                        }
                                                                        while(_loc7_)
                                                                        {
                                                                           §§goto(addr98);
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr361);
                                                                     §§goto(addr409);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr168);
                                                                  }
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                            continue loop2;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            §§goto(addr80);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr231);
                                                         }
                                                      }
                                                      §§goto(addr94);
                                                   }
                                                   continue loop22;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr426);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc8_ && statePopup)
                           {
                              continue;
                           }
                           §§goto(addr168);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr463);
      }
      
      protected function §'!=§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                  loop2:
                  while(!_loc2_)
                  {
                     continue loop0;
                     while(_loc2_ && e)
                     {
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      protected function §break§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function §3+§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!(_loc7_ && score))
         {
            while(true)
            {
               while(!(_loc7_ && score))
               {
                  while(_loc6_)
                  {
                     loop3:
                     while(_loc6_)
                     {
                        while(true)
                        {
                           while(_loc6_ || this)
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    §§push(AngryBirdsFP11.SERVER_ROOT);
                                    if(!(_loc7_ && levelName))
                                    {
                                       if(§§pop().substr(0,7) == "http://")
                                       {
                                          break;
                                       }
                                       §§push(AngryBirdsFP11.SERVER_ROOT);
                                       if(_loc6_)
                                       {
                                          addr112:
                                          §§push(§§pop());
                                          if(_loc6_)
                                          {
                                             addr115:
                                             §§push(§§pop());
                                          }
                                          var serverRoot:* = §§pop();
                                          §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || this)
                                             {
                                                §§push(serverRoot);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_)
                                                   {
                                                      §§push("/embed");
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            §§push("?levelId=");
                                                            if(_loc6_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_ || levelName)
                                                                  {
                                                                     §§push(levelId);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc6_ || score)
                                                                        {
                                                                           §§push("&levelName=");
                                                                           if(_loc6_ || levelName)
                                                                           {
                                                                              addr188:
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_ || score)
                                                                                 {
                                                                                    §§push(§§pop() + escape(levelName));
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr205:
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr208:
                                                                                          §§push(score > 0);
                                                                                          if(_loc6_ || levelName)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   §§push("&score=");
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      addr229:
                                                                                                      §§push(§§pop() + score);
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr292);
                                                                                                   }
                                                                                                   §§goto(addr249);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push("");
                                                                                                if(!(_loc7_ && this))
                                                                                                {
                                                                                                   addr249:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc6_ || this)
                                                                                                   {
                                                                                                      addr257:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         addr262:
                                                                                                         if(shareType)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               addr265:
                                                                                                               §§push("&type=");
                                                                                                               if(!(_loc7_ && this))
                                                                                                               {
                                                                                                                  addr283:
                                                                                                                  §§push(§§pop() + shareType);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr292);
                                                                                                                  }
                                                                                                                  addr292:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     addr301:
                                                                                                                     §§push("\" ></iframe>");
                                                                                                                     if(_loc6_ || levelName)
                                                                                                                     {
                                                                                                                        addr309:
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr311);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push("");
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr292);
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr265);
                                                                                                   }
                                                                                                   addr311:
                                                                                                   return §§pop() + §§pop();
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                §§goto(addr309);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr262);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 §§goto(addr257);
                                                                              }
                                                                              §§goto(addr292);
                                                                           }
                                                                           §§goto(addr309);
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr229);
                                                            }
                                                            §§goto(addr283);
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr188);
                                                   }
                                                   §§goto(addr301);
                                                }
                                             }
                                             §§goto(addr262);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr115);
                                    }
                                    addr106:
                                    §§goto(addr115);
                                 }
                                 break;
                                 continue;
                              }
                              continue loop3;
                           }
                           §§push("https://");
                           if(_loc6_)
                           {
                              §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
                           }
                           §§push(§§pop());
                           if(!(_loc7_ && this))
                           {
                              §§goto(addr106);
                           }
                           else
                           {
                              §§goto(addr112);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      protected function §'`§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || levelName)
         {
         }
         if(!(_loc6_ && score))
         {
            while(true)
            {
               loop1:
               while(!(_loc6_ && score))
               {
                  while(true)
                  {
                     loop3:
                     for(; !_loc6_; if(!(_loc7_ || levelId))
                     {
                        continue;
                     },if(false)
                     {
                        §§goto(addr59);
                     },§§push(AngryBirdsFP11.SERVER_ROOT),if(!_loc6_)
                     {
                        if(§§pop().substr(0,7) == "http://")
                        {
                           §§goto(addr95);
                        }
                        else
                        {
                           §§push(AngryBirdsFP11.SERVER_ROOT);
                           if(_loc7_)
                           {
                              §§goto(addr118);
                           }
                        }
                     },§§goto(addr127))
                     {
                        loop4:
                        while(true)
                        {
                           addr59:
                           while(true)
                           {
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(_loc6_ && this)
                                    {
                                       break;
                                    }
                                    if(_loc7_ || this)
                                    {
                                       continue loop3;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              addr95:
                              §§push("https://");
                              if(_loc7_ || score)
                              {
                                 §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
                              }
                              §§push(§§pop());
                              addr127:
                              if(!_loc6_)
                              {
                                 addr126:
                                 §§push(§§pop());
                              }
                              else
                              {
                                 addr118:
                                 §§push(§§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    §§goto(addr126);
                                 }
                              }
                              var serverRoot:* = §§pop();
                              if(!_loc7_)
                              {
                              }
                              §§push(serverRoot + "/embed");
                              if(_loc7_ || this)
                              {
                                 §§push("?levelId=");
                                 if(!_loc6_)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc6_)
                                       {
                                          §§push(levelId);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc6_ && score))
                                             {
                                                addr176:
                                                §§push("&levelName=");
                                                if(_loc7_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr187:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc6_ && this))
                                                      {
                                                         addr195:
                                                         §§push(§§pop() + escape(levelName));
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || score)
                                                            {
                                                               addr209:
                                                               §§push(score > 0);
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        addr227:
                                                                        §§push("&score=");
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() + score);
                                                                           if(_loc7_)
                                                                           {
                                                                              addr245:
                                                                              addr234:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc6_ && levelName)
                                                                              {
                                                                              }
                                                                              addr281:
                                                                              §§push("&type=");
                                                                              if(!(_loc6_ && levelId))
                                                                              {
                                                                                 addr298:
                                                                                 return §§pop() + shareType + (!!_loc7_ ? §§pop() : §§pop());
                                                                                 addr289:
                                                                              }
                                                                              §§goto(addr293);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                        §§goto(addr293);
                                                                     }
                                                                     if(!(_loc6_ && levelName))
                                                                     {
                                                                        addr273:
                                                                        if(shareType)
                                                                        {
                                                                           if(!(_loc6_ && levelName))
                                                                           {
                                                                              §§goto(addr281);
                                                                           }
                                                                           §§goto(addr298);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr296);
                                                                           §§push("");
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr281);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("");
                                                                     if(!(_loc6_ && levelName))
                                                                     {
                                                                        §§goto(addr245);
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                                  §§goto(addr298);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr195);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr298);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr176);
                           }
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §-!;§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc2_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
            }
            addr117:
         }
         loop1:
         while(true)
         {
            System.setClipboard(this.§`%§);
            while(true)
            {
               loop3:
               for(; !_loc3_; while(!(_loc3_ && e))
               {
                  mClip.Embed_CheckHTML.visible = true;
                  §§goto(addr60);
               })
               {
                  mClip.Embed_CheckHTML.gotoAndPlay(1);
                  while(true)
                  {
                     continue loop3;
                     addr62:
                     if(_loc3_ && this)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        addr71:
                        if(_loc2_ || this)
                        {
                           continue loop1;
                        }
                        addr60:
                        while(!_loc3_)
                        {
                           §§goto(addr62);
                           §§goto(addr71);
                        }
                        continue loop3;
                     }
                     §§goto(addr117);
                  }
               }
            }
         }
      }
      
      private function §!!2§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_)
         {
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
                        while(_loc2_)
                        {
                           loop5:
                           while(!(_loc3_ && e))
                           {
                              if(_loc2_)
                              {
                                 while(true)
                                 {
                                    mClip.Embed_CheckURL.visible = true;
                                    while(!_loc3_)
                                    {
                                       continue loop0;
                                       if(!_loc3_)
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr53);
                                          continue loop5;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 return;
                                 addr53:
                                 addr91:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §0N§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               close();
               while(_loc2_)
               {
                  if(_loc2_)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
