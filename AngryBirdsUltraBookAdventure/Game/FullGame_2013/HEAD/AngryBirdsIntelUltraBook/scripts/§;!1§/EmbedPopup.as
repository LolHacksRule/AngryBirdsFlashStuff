package §;!1§
{
   import §"$§.Popup;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class EmbedPopup extends Popup
   {
       
      
      protected var §8V§:String;
      
      protected var §?>§:String;
      
      public function EmbedPopup(currentUIView:§`X§, statePopup:StatePopupManager, levelId:String, levelName:String, score:int, shareType:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc8_)
         {
         }
         if(!(_loc7_ && statePopup))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr479:
                  addr177:
                  while(true)
                  {
                     addr476:
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  if(_loc7_ && levelId)
                  {
                     continue;
                  }
                  while(true)
                  {
                     if(!(_loc7_ && statePopup))
                     {
                        if(!_loc7_)
                        {
                           addr149:
                           if(_loc7_ && this)
                           {
                              break;
                           }
                           mClip.Embed_CheckHTML.visible = false;
                           loop35:
                           while(true)
                           {
                              if(_loc8_ || currentUIView)
                              {
                                 addr123:
                                 if(!(_loc7_ && levelId))
                                 {
                                    addr130:
                                    if(!(_loc7_ && this))
                                    {
                                       loop36:
                                       while(true)
                                       {
                                          if(!(_loc7_ && levelId))
                                          {
                                             if(_loc8_)
                                             {
                                                addr102:
                                                if(!(_loc7_ && statePopup))
                                                {
                                                   mClip.Embed_CheckURL.stop();
                                                   while(!_loc7_)
                                                   {
                                                      continue loop36;
                                                   }
                                                   while(true)
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§3u§);
                                                         while(true)
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§5]§);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  addr390:
                                                                  while(true)
                                                                  {
                                                                     this.§8V§ = this.§=I§(levelId,levelName,score,shareType);
                                                                     addr387:
                                                                     addr347:
                                                                     while(true)
                                                                     {
                                                                        addr377:
                                                                        while(true)
                                                                        {
                                                                           mClip.txtEmbedHTML.text = this.§8V§;
                                                                           break loop35;
                                                                        }
                                                                     }
                                                                     loop20:
                                                                     while(_loc8_ || levelId)
                                                                     {
                                                                        this.§?>§ = this.§&!h§(levelId,levelName,score,shareType);
                                                                        loop21:
                                                                        while(_loc8_ || this)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 mClip.txtEmbedURL.text = this.§?>§;
                                                                                 addr315:
                                                                                 addr366:
                                                                                 while(_loc8_ || this)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                                                                       loop25:
                                                                                       while(true)
                                                                                       {
                                                                                          loop26:
                                                                                          while(!_loc7_)
                                                                                          {
                                                                                             mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§1!%§);
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   break loop36;
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             continue loop12;
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc7_ && currentUIView))
                                                                                                {
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop26;
                                                                                                addr163:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc7_ && statePopup))
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   continue loop30;
                                                                                                }
                                                                                                continue loop1;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          §§goto(addr479);
                                                                                       }
                                                                                       §§goto(addr123);
                                                                                    }
                                                                                    break loop36;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    mClip.stage.focus = mClip.txtEmbedHTML;
                                                                                    break loop21;
                                                                                    §§goto(addr315);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop20;
                                                                           §§goto(addr335);
                                                                        }
                                                                        addr335:
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr88:
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      §§goto(addr215);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr457);
                                             addr256:
                                          }
                                          §§goto(addr212);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc7_ && levelId))
                                          {
                                             mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                             §§goto(addr256);
                                          }
                                          break;
                                          §§goto(addr102);
                                       }
                                       §§goto(addr315);
                                    }
                                    break;
                                 }
                                 §§goto(addr307);
                              }
                              §§goto(addr282);
                              if(_loc7_ && this)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 mClip.Embed_CheckURL.visible = false;
                                 §§goto(addr55);
                              }
                              §§goto(addr335);
                           }
                           while(true)
                           {
                              §§goto(addr366);
                              §§goto(addr130);
                           }
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr163);
                  }
                  while(true)
                  {
                     §§goto(addr460);
                     §§goto(addr149);
                  }
               }
            }
         }
         §§goto(addr390);
      }
      
      protected function §1!%§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
               while(!_loc2_)
               {
                  continue loop0;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      protected function §@h§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            do
            {
               do
               {
                  mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                  while(!_loc3_)
                  {
                  }
               }
               while(_loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      protected function §=I§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(_loc7_ || levelId)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  if(_loc7_ || levelName)
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§push("https://");
               if(_loc7_)
               {
                  §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
               }
               §§push(§§pop());
               if(_loc6_)
               {
               }
               §§goto(addr106);
            }
         }
         §§goto(addr33);
      }
      
      protected function §&!h§(levelId:String, levelName:String, score:int, shareType:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc7_)
         {
         }
         if(_loc7_ || levelName)
         {
            if(_loc7_)
            {
               loop0:
               while(true)
               {
                  while(true)
                  {
                     continue loop0;
                     addr40:
                     if(_loc6_ && levelId)
                     {
                        continue;
                     }
                     if(false)
                     {
                        while(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              addr33:
                              if(_loc6_ && score)
                              {
                                 continue loop0;
                              }
                              §§goto(addr40);
                           }
                           break;
                        }
                        addr85:
                        §§push("https://");
                        if(!(_loc6_ && score))
                        {
                           §§push(§§pop() + AngryBirdsFP11.SERVER_ROOT.substr(7));
                        }
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           addr126:
                           §§push(§§pop());
                        }
                        else
                        {
                           addr113:
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              §§goto(addr126);
                           }
                        }
                        addr127:
                        var serverRoot:* = §§pop();
                        if(!_loc7_)
                        {
                        }
                        §§push(serverRoot + "/embed");
                        if(!_loc6_)
                        {
                           §§push("?levelId=");
                           if(!_loc6_)
                           {
                              if(_loc7_ || score)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    §§push(levelId);
                                    if(_loc7_ || levelName)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_ || score)
                                       {
                                          §§push("&levelName=");
                                          if(!_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc6_)
                                                {
                                                   addr175:
                                                   §§push(§§pop() + escape(levelName));
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(score > 0);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc6_ && score))
                                                               {
                                                                  §§push("&score=");
                                                                  if(_loc7_)
                                                                  {
                                                                     addr200:
                                                                     §§push(§§pop() + score);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr225:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr228:
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr232:
                                                                              §§push(Boolean(shareType));
                                                                           }
                                                                           §§push("&type=");
                                                                           if(_loc7_ || levelName)
                                                                           {
                                                                              §§goto(addr253);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            else
                                                            {
                                                               §§push("");
                                                               if(!(_loc6_ && levelName))
                                                               {
                                                                  addr214:
                                                                  §§goto(addr225);
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         else
                                                         {
                                                            §§push("");
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr200);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr228);
                                    }
                                    §§goto(addr232);
                                 }
                                 §§goto(addr175);
                              }
                              §§goto(addr248);
                           }
                           addr253:
                           return §§pop() + shareType + (!!_loc7_ ? §§pop() : §§pop());
                        }
                        §§goto(addr232);
                        addr49:
                     }
                     §§push(AngryBirdsFP11.SERVER_ROOT);
                     if(_loc7_)
                     {
                        if(§§pop().substr(0,7) == "http://")
                        {
                           §§goto(addr85);
                        }
                        else
                        {
                           §§push(AngryBirdsFP11.SERVER_ROOT);
                           if(_loc7_ || levelName)
                           {
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr127);
                  }
               }
            }
            §§goto(addr85);
         }
         §§goto(addr63);
      }
      
      private function §3u§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
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
                  System.setClipboard(this.§8V§);
                  while(true)
                  {
                     while(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                        while(_loc3_ || e)
                        {
                           while(_loc3_ || _loc2_)
                           {
                              continue loop1;
                              mClip.Embed_CheckHTML.visible = true;
                              while(_loc2_ && e)
                              {
                              }
                              if(_loc3_)
                              {
                                 return;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            mClip.Embed_CheckHTML.gotoAndPlay(1);
            §§goto(addr91);
         }
      }
      
      private function §5]§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!(_loc3_ && _loc2_))
         {
            while(true)
            {
               while(_loc2_)
               {
                  System.setClipboard(this.§?>§);
                  loop2:
                  for(; !(_loc3_ && this); if(!(_loc3_ && _loc2_))
                  {
                     return;
                     addr72:
                  })
                  {
                     loop3:
                     while(true)
                     {
                        mClip.Embed_CheckURL.gotoAndPlay(1);
                        do
                        {
                           loop5:
                           do
                           {
                              mClip.Embed_CheckURL.visible = true;
                              while(_loc2_)
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                           while(!_loc2_);
                           
                        }
                        while(_loc3_ && e);
                        
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private function §^!L§(e:MouseEvent) : void
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
               while(_loc2_ || _loc2_)
               {
                  close();
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
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
         §§goto(addr73);
      }
   }
}
