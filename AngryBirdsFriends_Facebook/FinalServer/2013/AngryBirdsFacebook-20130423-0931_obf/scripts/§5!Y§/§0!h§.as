package §5!Y§
{
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class §0!h§ extends Popup
   {
       
      
      protected var §=!&§:String;
      
      protected var §3!P§:String;
      
      protected var §8!o§:Loader;
      
      public function §0!h§(param1:§`_§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super(§ "<§.§%I§.Views.PopupView_Embed[0],param1);
            loop0:
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§8>§);
                  loop2:
                  while(!(_loc9_ && this))
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§@w§);
                     loop3:
                     while(true)
                     {
                        this.§=!&§ = this.§#+§(param3,param4,param5,param6);
                        while(true)
                        {
                           mClip.txtEmbedHTML.text = this.§=!&§;
                           loop5:
                           while(_loc8_ || this)
                           {
                              if(!_loc8_)
                              {
                                 continue loop0;
                              }
                              mClip.stage.focus = mClip.txtEmbedHTML;
                              loop6:
                              while(true)
                              {
                                 this.§3!P§ = this.§<o§(param3,param4,param5,param6);
                                 continue loop3;
                                 addr53:
                                 if(_loc9_ && param1)
                                 {
                                    continue;
                                 }
                                 this.§8!o§.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§#C§);
                                 if(!_loc9_)
                                 {
                                    if(!_loc9_)
                                    {
                                       addr32:
                                       if(_loc8_ || param1)
                                       {
                                          if(false)
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                this.§8!o§ = new Loader();
                                                addr46:
                                                while(true)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      §§goto(addr53);
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               break;
                                                               addr104:
                                                               addr66:
                                                            }
                                                            mClip.Embed_CheckURL.visible = false;
                                                            while(true)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  addr68:
                                                                  if(!(_loc8_ || param3))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               addr97:
                                                               addr146:
                                                               while(!_loc9_)
                                                               {
                                                                  mClip.Embed_CheckURL.stop();
                                                                  continue loop15;
                                                               }
                                                               while(true)
                                                               {
                                                                  mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                                                  addr125:
                                                                  while(!_loc9_)
                                                                  {
                                                                     mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§,0§);
                                                                     break loop17;
                                                                  }
                                                               }
                                                            }
                                                            while(!_loc9_)
                                                            {
                                                               mClip.Embed_CheckHTML.visible = false;
                                                               §§goto(addr97);
                                                               §§goto(addr68);
                                                            }
                                                            continue loop2;
                                                         }
                                                         addr163:
                                                         while(!_loc9_)
                                                         {
                                                            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                                         }
                                                         continue loop3;
                                                         while(true)
                                                         {
                                                            mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§#!%§);
                                                            §§goto(addr146);
                                                         }
                                                      }
                                                      §§goto(addr125);
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                             while(true)
                                             {
                                                mClip.Embed_CheckHTML.stop();
                                                §§goto(addr104);
                                                §§goto(addr32);
                                             }
                                             addr115:
                                          }
                                          §§push(AngryBirdsFP11.§?8§ + "/fb_images/levels/embed/");
                                          if(_loc8_)
                                          {
                                             §§push(§§pop() + param3);
                                             if(_loc8_)
                                             {
                                                addr280:
                                                §§push(§§pop() + ".png");
                                             }
                                             var _loc7_:* = §§pop();
                                             if(_loc8_ || param3)
                                             {
                                                this.§8!o§.load(new URLRequest(_loc7_));
                                             }
                                             return;
                                          }
                                          §§goto(addr280);
                                       }
                                       §§goto(addr115);
                                    }
                                    §§goto(addr66);
                                 }
                                 §§goto(addr46);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr224);
      }
      
      protected function §#C§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            (this.§8!o§.content as Bitmap).smoothing = true;
            if(!_loc3_)
            {
               this.§8!o§.scaleX = this.§8!o§.scaleY = 200 / this.§8!o§.width;
               if(_loc4_ || param1)
               {
                  addr70:
                  mClip.mcThumbnail.addChild(this.§8!o§);
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      protected function §#!%§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §,0§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §#+§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            §§push(AngryBirdsFP11.§?8§);
            if(!(_loc7_ && param1))
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr38:
                  §§push("https://");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§?8§.substr(7));
                  }
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(AngryBirdsFP11.§?8§);
                  if(!(_loc7_ && param1))
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && param2))
                     {
                        addr67:
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                     if(!_loc7_)
                     {
                        §§push(_loc5_);
                        if(_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              §§push("/embed");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_)
                                 {
                                    addr84:
                                    §§push("?levelId=");
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc7_)
                                       {
                                          §§push(param1);
                                          if(_loc6_ || param2)
                                          {
                                             addr108:
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc7_ && param2))
                                             {
                                                §§push("&levelName=");
                                                if(!(_loc7_ && param1))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() + escape(param2));
                                                      if(_loc7_ && param2)
                                                      {
                                                      }
                                                      addr217:
                                                      return §§pop() + "\" ></iframe>";
                                                      addr215:
                                                   }
                                                   addr149:
                                                   §§push("&score=");
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      §§push(§§pop() + param3);
                                                      if(_loc7_)
                                                      {
                                                      }
                                                      addr201:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || param2)
                                                   {
                                                      addr176:
                                                      if(param4)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr189:
                                                            §§push("&type=");
                                                            if(_loc6_ || param2)
                                                            {
                                                               §§push(§§pop() + param4);
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr201);
                                                               }
                                                               else
                                                               {
                                                                  addr211:
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            §§goto(addr201);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      else
                                                      {
                                                         §§push("");
                                                         if(_loc6_ || param3)
                                                         {
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr201);
                                             }
                                             if(param3 > 0)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr217);
                                             }
                                             else
                                             {
                                                §§push("");
                                                if(_loc6_)
                                                {
                                                   addr166:
                                                   §§goto(addr149);
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr176);
                  }
               }
            }
            §§goto(addr67);
         }
         §§goto(addr38);
      }
      
      protected function §<o§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(AngryBirdsFP11.§?8§);
            if(!_loc6_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr29:
                  §§push("https://");
                  if(_loc7_ || param3)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§?8§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_ || this)
                  {
                  }
                  addr68:
                  §§push(§§pop());
               }
               else
               {
                  §§push(AngryBirdsFP11.§?8§);
                  if(!(_loc6_ && param2))
                  {
                     addr60:
                     §§push(§§pop());
                     if(_loc7_ || param3)
                     {
                        §§goto(addr68);
                     }
                  }
               }
               var _loc5_:*;
               §§push((_loc5_ = §§pop()) + "/embed");
               if(_loc7_)
               {
                  §§push("?levelId=");
                  if(!_loc6_)
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
                              addr102:
                              §§push("&levelName=");
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && this))
                                 {
                                    addr113:
                                    §§push(§§pop() + escape(param2));
                                    if(_loc6_)
                                    {
                                    }
                                    addr125:
                                    §§push("&score=");
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() + param3);
                                       if(_loc7_)
                                       {
                                          §§goto(addr143);
                                       }
                                       §§goto(addr168);
                                    }
                                    §§goto(addr180);
                                 }
                                 if(param3 > 0)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr125);
                                    }
                                    §§goto(addr165);
                                 }
                                 else
                                 {
                                    §§push("");
                                    if(_loc7_ || param3)
                                    {
                                       addr143:
                                       addr132:
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_)
                                       {
                                          addr157:
                                          if(param4)
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                addr165:
                                                §§push("&type=");
                                                if(_loc7_)
                                                {
                                                   addr168:
                                                   §§push(§§pop() + param4 + (!(_loc6_ && param2) ? §§pop() : §§pop()));
                                                }
                                                §§goto(addr180);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr180);
                                             §§push("");
                                          }
                                          §§goto(addr180);
                                       }
                                       return §§pop();
                                       §§push(§§pop());
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr177);
               }
               §§goto(addr113);
            }
            §§goto(addr60);
         }
         §§goto(addr29);
      }
      
      private function §8>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            System.setClipboard(this.§=!&§);
            while(true)
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     mClip.Embed_CheckHTML.visible = true;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §@w§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            System.setClipboard(this.§3!P§);
            while(true)
            {
               mClip.Embed_CheckURL.gotoAndPlay(1);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            mClip.Embed_CheckURL.visible = true;
            if(!_loc2_)
            {
               if(_loc3_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §if §(param1:MouseEvent) : void
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
