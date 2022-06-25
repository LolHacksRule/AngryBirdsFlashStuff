package §9v§
{
   import §>!"§.Popup;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class EmbedPopup extends Popup
   {
       
      
      protected var §[!D§:String;
      
      protected var §1T§:String;
      
      public function EmbedPopup(currentUIView:§-!H§, statePopup:StatePopupManager, levelId:String, levelName:String, score:int, shareType:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         if(!_loc8_)
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
                        loop4:
                        while(true)
                        {
                           continue loop0;
                           addr180:
                           if(_loc7_ || currentUIView)
                           {
                              loop32:
                              while(true)
                              {
                                 if(_loc7_ || this)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    mClip.Embed_CheckHTML.stop();
                                    loop33:
                                    while(true)
                                    {
                                       addr133:
                                       loop34:
                                       while(_loc7_ || this)
                                       {
                                          mClip.Embed_CheckHTML.visible = false;
                                          loop35:
                                          while(true)
                                          {
                                             if(_loc7_ || this)
                                             {
                                                addr123:
                                                if(!(_loc8_ && this))
                                                {
                                                   loop36:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr102:
                                                         if(_loc7_ || currentUIView)
                                                         {
                                                            mClip.Embed_CheckURL.stop();
                                                            loop37:
                                                            while(true)
                                                            {
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr83:
                                                                  if(_loc7_ || currentUIView)
                                                                  {
                                                                     addr90:
                                                                     if(_loc8_ && levelId)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop32;
                                                                              }
                                                                              continue loop33;
                                                                           }
                                                                           continue loop35;
                                                                        }
                                                                        continue loop36;
                                                                        addr31:
                                                                        if(!(_loc8_ && levelId))
                                                                        {
                                                                           return;
                                                                        }
                                                                     }
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr192:
                                                                           if(_loc8_ && currentUIView)
                                                                           {
                                                                              break;
                                                                              addr171:
                                                                           }
                                                                           mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§9!U§);
                                                                           while(true)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 addr173:
                                                                                 if(_loc7_ || this)
                                                                                 {
                                                                                    §§goto(addr180);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       addr335:
                                                                                       if(_loc7_ || levelId)
                                                                                       {
                                                                                          loop20:
                                                                                          while(!(_loc8_ && currentUIView))
                                                                                          {
                                                                                             this.§1T§ = this.§]d§(levelId,levelName,score,shareType);
                                                                                             loop21:
                                                                                             while(true)
                                                                                             {
                                                                                                addr297:
                                                                                                addr373:
                                                                                                while(!(_loc8_ && this))
                                                                                                {
                                                                                                   mClip.txtEmbedURL.text = this.§1T§;
                                                                                                   break loop37;
                                                                                                }
                                                                                                addr242:
                                                                                                while(true)
                                                                                                {
                                                                                                   break loop35;
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                                addr242:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ || levelId)
                                                                                                   {
                                                                                                      addr249:
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§##§);
                                                                                                         break loop34;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop21;
                                                                                                }
                                                                                                addr408:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ && currentUIView))
                                                                                                   {
                                                                                                      mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§#!'§);
                                                                                                      break loop19;
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr249);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr429:
                                                                                                      if(!(_loc7_ || levelId))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr464:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      super(§3!5§.§4@§.Views.PopupView_Embed[0],currentUIView);
                                                                                                      break loop30;
                                                                                                   }
                                                                                                }
                                                                                                continue loop0;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_ || levelId)
                                                                                                {
                                                                                                   addr279:
                                                                                                   if(!(_loc8_ && this))
                                                                                                   {
                                                                                                      mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr242);
                                                                                                         §§goto(addr83);
                                                                                                      }
                                                                                                      addr269:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§@;§);
                                                                                                   break loop20;
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr279);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§<X§);
                                                                                                §§goto(addr408);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr376:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§[!D§ = this.§%!f§(levelId,levelName,score,shareType);
                                                                                                §§goto(addr373);
                                                                                                §§goto(addr173);
                                                                                             }
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                          addr317:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr391);
                                                                                    §§goto(addr335);
                                                                                 }
                                                                                 addr333:
                                                                              }
                                                                              §§goto(addr376);
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                        addr215:
                                                                        while(true)
                                                                        {
                                                                           mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                                                           addr212:
                                                                           while(true)
                                                                           {
                                                                              continue loop30;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr439);
                                                                        §§goto(addr192);
                                                                     }
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr272);
                                                               §§goto(addr90);
                                                            }
                                                            addr76:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr297);
                                                   }
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                      §§goto(addr102);
                                                   }
                                                   addr360:
                                                }
                                                break;
                                             }
                                             §§goto(addr242);
                                          }
                                          while(true)
                                          {
                                             mClip.txtEmbedHTML.text = this.§[!D§;
                                             §§goto(addr360);
                                             §§goto(addr123);
                                          }
                                       }
                                       while(!_loc8_)
                                       {
                                          §§goto(addr215);
                                          §§goto(addr133);
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr272);
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr464);
      }
      
      protected function §##§(e:MouseEvent) : void
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
               loop1:
               while(!(_loc2_ && this))
               {
                  mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
      
      protected function §9!U§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && e))
         {
            while(true)
            {
               loop1:
               while(!(_loc3_ && this))
               {
                  mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                  while(true)
                  {
                     if(_loc2_ || this)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function §%!f§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && levelName)
         {
         }
         if(!_loc6_)
         {
            while(true)
            {
               loop2:
               for(; !(_loc6_ && levelId); while(true)
               {
                  if(_loc6_ && levelName)
                  {
                     continue loop2;
                  }
                  addr56:
                  if(_loc7_ || levelId)
                  {
                     if(!(_loc6_ && score))
                     {
                        if(_loc6_ && levelName)
                        {
                           continue;
                        }
                        if(false)
                        {
                           §§goto(addr47);
                        }
                        else
                        {
                           §§push(AngryBirdsFP11.SERVER_ROOT);
                           if(_loc7_)
                           {
                              if(§§pop().substr(0,7) == "http://")
                              {
                                 break;
                              }
                              §§push(AngryBirdsFP11.SERVER_ROOT);
                              if(!(_loc6_ && this))
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || score)
                                 {
                                    §§goto(addr131);
                                 }
                              }
                           }
                           §§goto(addr132);
                        }
                     }
                     break;
                  }
                  addr81:
                  while(true)
                  {
                     continue loop2;
                     §§goto(addr56);
                  }
               },§§goto(addr95))
               {
                  if(_loc7_)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                     addr47:
                  }
                  else
                  {
                     addr95:
                     §§push("https://");
                     if(_loc7_)
                     {
                        §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
                     }
                     §§push(§§pop());
                     if(_loc7_ || levelId)
                     {
                     }
                     addr132:
                     var serverRoot:String = §§pop();
                     addr131:
                     §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                     if(_loc7_ || this)
                     {
                        if(!_loc6_)
                        {
                           §§push(serverRoot);
                           if(!(_loc6_ && levelId))
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && score))
                              {
                                 §§push("/embed");
                                 if(!(_loc6_ && score))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc6_ && this))
                                    {
                                       §§push("?levelId=");
                                       if(!_loc6_)
                                       {
                                          addr189:
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                §§push(levelId);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc7_ || score)
                                                   {
                                                      §§push("&levelName=");
                                                      if(_loc7_)
                                                      {
                                                         addr209:
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc6_ && this))
                                                            {
                                                               addr225:
                                                               §§push(§§pop() + escape(levelName));
                                                               if(!(_loc6_ && levelName))
                                                               {
                                                                  if(!(_loc6_ && levelName))
                                                                  {
                                                                     addr244:
                                                                     §§push(score > 0);
                                                                     if(_loc7_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc6_ && levelName))
                                                                           {
                                                                              addr257:
                                                                              §§push("&score=");
                                                                              if(_loc7_ || levelName)
                                                                              {
                                                                                 §§push(§§pop() + score + (!!_loc7_ ? §§pop() : §§pop()));
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr278:
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       addr288:
                                                                                       if(shareType)
                                                                                       {
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr291:
                                                                                             §§push("&type=");
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() + shareType);
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   addr319:
                                                                                                   addr298:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      addr327:
                                                                                                      §§push("\" ></iframe>");
                                                                                                      if(_loc7_ || this)
                                                                                                      {
                                                                                                         addr335:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr337);
                                                                                                }
                                                                                                addr337:
                                                                                                return §§pop();
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr318:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          §§goto(addr327);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push("");
                                                                                          if(_loc7_ || levelId)
                                                                                          {
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                          §§goto(addr335);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr327);
                                                                                 }
                                                                                 §§goto(addr319);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr327);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("");
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr274);
                                                                           }
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr319);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr269);
                                                      }
                                                      §§goto(addr335);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr288);
                                             }
                                             §§goto(addr257);
                                          }
                                       }
                                       §§goto(addr209);
                                    }
                                    §§goto(addr225);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr291);
                           }
                           §§goto(addr288);
                        }
                        §§goto(addr278);
                     }
                     §§goto(addr291);
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      protected function §]d§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!(_loc7_ && score))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(!_loc7_)
                  {
                     continue loop1;
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           break loop2;
                        }
                        if(_loc6_)
                        {
                           if(_loc7_)
                           {
                              break loop2;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
                  addr79:
                  §§push("https://");
                  if(_loc6_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
                  }
                  §§push(§§pop());
                  if(!(_loc7_ && levelName))
                  {
                     addr105:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr102:
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        §§goto(addr105);
                     }
                  }
                  var serverRoot:* = §§pop();
                  if(_loc7_ && levelId)
                  {
                  }
                  §§push(serverRoot + "/embed");
                  if(_loc6_)
                  {
                     §§push("?levelId=");
                     if(_loc6_ || levelName)
                     {
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || score)
                           {
                              §§push(levelId);
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    addr155:
                                    §§push("&levelName=");
                                    if(_loc6_ || levelId)
                                    {
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!_loc7_)
                                          {
                                             addr169:
                                             §§push(§§pop() + escape(levelName));
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   addr178:
                                                   §§push(score > 0);
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            §§push("&score=");
                                                            if(!_loc7_)
                                                            {
                                                               addr189:
                                                               §§push(§§pop() + score);
                                                               if(_loc6_ || levelId)
                                                               {
                                                                  addr219:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc6_ || score)
                                                                  {
                                                                     addr227:
                                                                     if(_loc6_)
                                                                     {
                                                                        addr232:
                                                                        if(shareType)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              addr235:
                                                                              §§push("&type=");
                                                                              if(_loc7_)
                                                                              {
                                                                              }
                                                                           }
                                                                           §§goto(addr247);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr247:
                                                                           return §§pop() + §§pop();
                                                                           §§push("");
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr247);
                                                               }
                                                               addr242:
                                                               §§goto(addr247);
                                                               §§push(§§pop());
                                                            }
                                                            §§push(§§pop() + shareType);
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr242);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr247);
                                                            }
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      else
                                                      {
                                                         §§push("");
                                                         if(_loc6_ || score)
                                                         {
                                                            addr208:
                                                            §§goto(addr219);
                                                            §§push(§§pop());
                                                         }
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr227);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr208);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr235);
                              }
                              §§goto(addr232);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr189);
                     }
                     §§goto(addr235);
                  }
                  §§goto(addr155);
               }
            }
         }
         while(true)
         {
            §§goto(addr41);
         }
      }
      
      private function §#!'§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            while(true)
            {
               loop1:
               while(!_loc3_)
               {
                  System.setClipboard(this.§[!D§);
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        mClip.Embed_CheckHTML.gotoAndPlay(1);
                        addr94:
                        addr64:
                        while(true)
                        {
                        }
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§goto(addr94);
                                 }
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 return;
                                 addr55:
                              }
                              loop6:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr64);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       mClip.Embed_CheckHTML.visible = true;
                                       continue loop6;
                                    }
                                    §§goto(addr55);
                                    addr86:
                                 }
                              }
                              addr83:
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §@;§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               System.setClipboard(this.§1T§);
               while(true)
               {
                  loop3:
                  while(_loc2_)
                  {
                     mClip.Embed_CheckURL.gotoAndPlay(1);
                     loop4:
                     for(; _loc2_; if(!_loc2_)
                     {
                        continue;
                     },§§goto(addr76))
                     {
                        loop5:
                        while(true)
                        {
                           mClip.Embed_CheckURL.visible = true;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop4;
                              }
                              continue loop5;
                              addr76:
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    if(!_loc3_)
                                    {
                                       return;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                                 continue loop3;
                              }
                           }
                           continue loop4;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §<X§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  close();
                  while(_loc3_ || _loc2_)
                  {
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && this))
                        {
                           return;
                           addr57:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr57);
      }
   }
}
