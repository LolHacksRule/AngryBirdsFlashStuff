package §^!m§
{
   import §!!j§.Popup;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §]]§ extends Popup
   {
       
      
      protected var §3!$§:String;
      
      protected var §7!^§:String;
      
      public function §]]§(param1:§&!G§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(§2!z§.§ _§.Views.PopupView_Embed[0],param1);
            loop0:
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§7!i§);
               loop1:
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§&>§);
                  while(true)
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§<!=§);
                     loop3:
                     while(true)
                     {
                        this.§3!$§ = this.§;!V§(param3,param4,param5,param6);
                        loop4:
                        while(true)
                        {
                           mClip.txtEmbedHTML.text = this.§3!$§;
                           loop5:
                           while(true)
                           {
                              mClip.stage.focus = mClip.txtEmbedHTML;
                              loop6:
                              while(true)
                              {
                                 this.§7!^§ = this.§,v§(param3,param4,param5,param6);
                                 loop7:
                                 for(; _loc8_; while(_loc8_ || param3)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                    §§goto(addr112);
                                 })
                                 {
                                    mClip.txtEmbedURL.text = this.§7!^§;
                                    while(true)
                                    {
                                       mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                       continue loop7;
                                       addr124:
                                       if(!(_loc8_ || param1))
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§%f§);
                                          loop13:
                                          while(true)
                                          {
                                             mClip.Embed_CheckHTML.stop();
                                             continue loop6;
                                             addr58:
                                             addr140:
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc8_ || this)
                                                {
                                                   addr65:
                                                   if(!(_loc8_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      mClip.Embed_CheckURL.stop();
                                                      while(true)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               continue;
                                                            }
                                                            addr112:
                                                            addr112:
                                                            while(_loc8_)
                                                            {
                                                               §§goto(addr124);
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop13;
                                             }
                                             while(true)
                                             {
                                                mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                                §§goto(addr112);
                                                §§goto(addr65);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     if(!(_loc8_ || param1))
                     {
                        continue;
                     }
                     mClip.Embed_CheckHTML.visible = false;
                     §§goto(addr58);
                  }
               }
               if(!(_loc8_ || param3))
               {
                  continue;
               }
               mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§`t§);
               §§goto(addr140);
            }
         }
         §§goto(addr131);
      }
      
      protected function §`t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §%f§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §;!V§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            §§push(AngryBirdsFP11.§[!S§);
            if(_loc6_ || param1)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr38:
                  §§push("https://");
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + AngryBirdsFP11.§[!S§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_ && param3)
                  {
                  }
                  addr72:
                  §§push(§§pop());
               }
               else
               {
                  §§push(AngryBirdsFP11.§[!S§);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || param2)
                     {
                        §§goto(addr72);
                     }
                  }
               }
            }
            var _loc5_:* = §§pop();
            §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
            if(!_loc7_)
            {
               §§push(_loc5_);
               if(!(_loc7_ && param3))
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc7_)
                  {
                     §§push("/embed");
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && param1))
                        {
                           §§push("?levelId=");
                           if(!(_loc7_ && this))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_ || param3)
                              {
                                 §§push(param1);
                                 if(!(_loc7_ && param3))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_ || param1)
                                    {
                                       addr146:
                                       §§push("&levelName=");
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc6_ || param2)
                                          {
                                             addr157:
                                             §§push(§§pop() + escape(param2));
                                             if(!_loc7_)
                                             {
                                                if(param3 > 0)
                                                {
                                                   if(_loc6_ || this)
                                                   {
                                                      addr174:
                                                      §§push("&score=");
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() + param3 + (!_loc7_ ? §§pop() : §§pop()));
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr196:
                                                            if(param4)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  addr209:
                                                                  §§push("&type=");
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§goto(addr237);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr231:
                                                                     §§push(§§pop());
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc7_)
                                                                  {
                                                                     addr235:
                                                                     §§push("\" ></iframe>");
                                                                  }
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            else
                                                            {
                                                               §§push("");
                                                               if(_loc6_ || param3)
                                                               {
                                                                  §§goto(addr231);
                                                               }
                                                            }
                                                            §§goto(addr237);
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   §§goto(addr235);
                                                }
                                                else
                                                {
                                                   §§push("");
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                }
                                                §§goto(addr221);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr186);
                                    }
                                    §§goto(addr235);
                                 }
                                 §§goto(addr196);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr181);
                        }
                        addr237:
                        §§push(§§pop() + param4);
                        if(!_loc7_)
                        {
                           addr221:
                           §§push(§§pop());
                        }
                        return §§pop() + §§pop();
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr157);
               }
               §§goto(addr196);
            }
            §§goto(addr146);
         }
         §§goto(addr38);
      }
      
      protected function §,v§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(AngryBirdsFP11.§[!S§);
            if(!(_loc6_ && this))
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr34:
                  §§push("https://");
                  if(!(_loc6_ && param1))
                  {
                     §§push(§§pop() + AngryBirdsFP11.§[!S§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     addr58:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr55:
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        §§goto(addr58);
                     }
                  }
               }
               else
               {
                  §§push(AngryBirdsFP11.§[!S§);
                  if(!_loc6_)
                  {
                     §§goto(addr55);
                  }
               }
            }
            var _loc5_:*;
            §§push((_loc5_ = §§pop()) + "/embed");
            if(_loc7_ || param1)
            {
               §§push("?levelId=");
               if(_loc7_ || this)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc7_ || this)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc6_)
                        {
                           §§push("&levelName=");
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(§§pop() + escape(param2));
                                 if(!(_loc6_ && param3))
                                 {
                                    if(param3 > 0)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          addr135:
                                          §§push("&score=");
                                          if(!(_loc6_ && param3))
                                          {
                                             addr143:
                                             §§push(§§pop() + param3 + (!(_loc6_ && this) ? §§pop() : §§pop()));
                                             if(!_loc6_)
                                             {
                                                addr171:
                                                if(param4)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      §§push("&type=");
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§goto(addr192);
                                                      }
                                                   }
                                                   §§goto(addr192);
                                                }
                                                else
                                                {
                                                   §§push("");
                                                }
                                                §§goto(addr190);
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr192);
                                    }
                                    else
                                    {
                                       §§push("");
                                       if(!_loc6_)
                                       {
                                          §§goto(addr167);
                                       }
                                    }
                                    addr192:
                                    return §§pop() + param4 + (!!_loc7_ ? §§pop() : §§pop());
                                 }
                                 §§goto(addr171);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr135);
               }
               §§goto(addr143);
            }
            §§goto(addr135);
         }
         §§goto(addr34);
      }
      
      private function §&>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            System.setClipboard(this.§3!$§);
         }
         do
         {
            mClip.Embed_CheckHTML.gotoAndPlay(1);
            do
            {
               mClip.Embed_CheckHTML.visible = true;
            }
            while(!_loc2_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §<!=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            System.setClipboard(this.§7!^§);
            while(true)
            {
               mClip.Embed_CheckURL.gotoAndPlay(1);
               while(!(_loc2_ && _loc3_))
               {
                  mClip.Embed_CheckURL.visible = true;
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  return;
                  addr56:
               }
            }
         }
         §§goto(addr56);
      }
      
      private function §7!i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            close();
         }
      }
   }
}
