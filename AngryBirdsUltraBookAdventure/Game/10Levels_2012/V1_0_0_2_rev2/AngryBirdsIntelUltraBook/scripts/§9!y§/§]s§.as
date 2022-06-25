package §9!y§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §[m§.Popup;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §]s§ extends Popup
   {
       
      
      protected var §%!!§:String;
      
      protected var §6c§:String;
      
      public function §]s§(param1:§'!^§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || this)
         {
            super(§[!'§.§+@§.Views.PopupView_Embed[0],param1);
            loop0:
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§9t§);
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§?!v§);
                  while(true)
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§;!9§);
                     loop3:
                     while(true)
                     {
                        this.§%!!§ = this.§7,§(param3,param4,param5,param6);
                        loop4:
                        while(true)
                        {
                           mClip.txtEmbedHTML.text = this.§%!!§;
                           loop5:
                           while(true)
                           {
                              mClip.stage.focus = mClip.txtEmbedHTML;
                              loop6:
                              while(_loc7_)
                              {
                                 this.§6c§ = this.§`!t§(param3,param4,param5,param6);
                                 loop7:
                                 while(true)
                                 {
                                    mClip.txtEmbedURL.text = this.§6c§;
                                    loop8:
                                    while(_loc7_)
                                    {
                                       mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                       continue loop7;
                                       addr82:
                                       if(_loc7_ || param1)
                                       {
                                          mClip.Embed_CheckHTML.visible = false;
                                          loop15:
                                          for(; !_loc8_; if(!(_loc8_ && this))
                                          {
                                             addr42:
                                             if(!(_loc8_ && param1))
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      return;
                                                      addr53:
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop0;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§goto(addr82);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      mClip.Embed_CheckHTML.stop();
                                                      continue loop14;
                                                   }
                                                   addr98:
                                                }
                                             }
                                             continue loop8;
                                          })
                                          {
                                             mClip.Embed_CheckURL.stop();
                                             while(!(_loc8_ && param2))
                                             {
                                                if(_loc7_)
                                                {
                                                   mClip.Embed_CheckURL.visible = false;
                                                   if(_loc7_)
                                                   {
                                                      continue loop15;
                                                   }
                                                   continue;
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                                continue loop0;
                                                §§goto(addr58);
                                             }
                                             addr58:
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§5!E§);
            §§goto(addr98);
         }
         §§goto(addr53);
      }
      
      protected function §2X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §5!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §7,§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            §§push(AngryBirdsFP11.§8!`§);
            if(_loc6_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr33:
                  §§push("https://");
                  if(!(_loc7_ && param3))
                  {
                     §§push(§§pop() + AngryBirdsFP11.§8!`§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc6_ || this)
                  {
                     addr67:
                     §§push(§§pop());
                  }
               }
               else
               {
                  §§push(AngryBirdsFP11.§8!`§);
                  if(!_loc7_)
                  {
                     addr59:
                     §§push(§§pop());
                     if(_loc6_ || param3)
                     {
                        §§goto(addr67);
                     }
                  }
               }
               var _loc5_:* = §§pop();
               §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
               if(!(_loc7_ && this))
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        §§push("/embed");
                        if(_loc6_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              addr94:
                              §§push("?levelId=");
                              if(_loc6_ || param3)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc7_)
                                 {
                                    §§push(param1);
                                    if(!(_loc7_ && param2))
                                    {
                                       addr123:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc7_ && param3))
                                       {
                                          §§push("&levelName=");
                                          if(_loc6_ || this)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc7_ && param2))
                                             {
                                                addr147:
                                                §§push(§§pop() + escape(param2));
                                                if(_loc7_ && param3)
                                                {
                                                }
                                                §§goto(addr164);
                                             }
                                             if(param3 > 0)
                                             {
                                                if(_loc6_)
                                                {
                                                   addr164:
                                                   §§push("&score=");
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      addr172:
                                                      §§push(§§pop() + param3);
                                                      if(!_loc7_)
                                                      {
                                                         addr187:
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            addr195:
                                                            if(param4)
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push("&type=");
                                                                  if(_loc6_)
                                                                  {
                                                                     addr207:
                                                                     §§push(§§pop() + param4 + (!(_loc7_ && param2) ? §§pop() : §§pop()));
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                     }
                                                                     §§goto(addr247);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§push("");
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  §§goto(addr236);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr247);
                                                }
                                                §§goto(addr195);
                                             }
                                             else
                                             {
                                                §§push("");
                                                if(_loc6_ || param3)
                                                {
                                                   §§goto(addr187);
                                                   §§push(§§pop());
                                                }
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr195);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr172);
                           }
                           addr247:
                           return §§pop() + "\" ></iframe>";
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr123);
               }
               §§goto(addr94);
            }
            §§goto(addr59);
         }
         §§goto(addr33);
      }
      
      protected function §`!t§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(AngryBirdsFP11.§8!`§);
            if(!(_loc7_ && param1))
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr33:
                  §§push("https://");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§8!`§.substr(7));
                  }
                  §§push(§§pop());
                  if(!(_loc7_ && param1))
                  {
                     addr67:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr59:
                     §§push(§§pop());
                     if(_loc6_ || this)
                     {
                        §§goto(addr67);
                     }
                  }
                  var _loc5_:*;
                  §§push((_loc5_ = §§pop()) + "/embed");
                  if(!(_loc7_ && this))
                  {
                     §§push("?levelId=");
                     if(!(_loc7_ && param3))
                     {
                        §§push(§§pop() + §§pop());
                        if(!(_loc7_ && param2))
                        {
                           §§push(param1);
                           if(_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_)
                              {
                                 §§push("&levelName=");
                                 if(_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() + escape(param2));
                                       if(!(_loc7_ && this))
                                       {
                                          addr133:
                                          if(param3 > 0)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                §§push("&score=");
                                                if(_loc6_ || param3)
                                                {
                                                   addr152:
                                                   §§push(§§pop() + param3);
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr172:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc6_)
                                                      {
                                                         addr186:
                                                         if(param4)
                                                         {
                                                            if(_loc6_ || param3)
                                                            {
                                                               addr194:
                                                               §§push("&type=");
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr211);
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         else
                                                         {
                                                            §§push("");
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                   }
                                                }
                                                §§goto(addr206);
                                             }
                                             addr211:
                                             return §§pop() + param4 + (_loc6_ || param3 ? §§pop() : §§pop());
                                          }
                                          §§push("");
                                          if(!(_loc7_ && param1))
                                          {
                                             §§goto(addr172);
                                             §§push(§§pop());
                                          }
                                          §§goto(addr206);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr133);
               }
               else
               {
                  §§push(AngryBirdsFP11.§8!`§);
                  if(_loc6_ || this)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr59);
         }
         §§goto(addr33);
      }
      
      private function §?!v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            System.setClipboard(this.§%!!§);
            while(true)
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               while(_loc2_ || _loc3_)
               {
                  mClip.Embed_CheckHTML.visible = true;
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §;!9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            System.setClipboard(this.§6c§);
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
            if(!(_loc2_ && param1))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §9t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            close();
         }
      }
   }
}
