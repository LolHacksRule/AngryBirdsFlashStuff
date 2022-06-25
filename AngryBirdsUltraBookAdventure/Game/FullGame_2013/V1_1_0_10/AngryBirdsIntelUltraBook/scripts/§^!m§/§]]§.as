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
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(§2!z§.§ _§.Views.PopupView_Embed[0],param1);
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§7!i§);
               loop1:
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§&>§);
                  loop2:
                  while(true)
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§<!=§);
                     addr224:
                     while(true)
                     {
                        this.§3!$§ = this.§;!V§(param3,param4,param5,param6);
                        addr205:
                        while(true)
                        {
                           mClip.txtEmbedHTML.text = this.§3!$§;
                           loop5:
                           while(true)
                           {
                              mClip.stage.focus = mClip.txtEmbedHTML;
                              while(true)
                              {
                                 this.§7!^§ = this.§,v§(param3,param4,param5,param6);
                                 continue loop2;
                                 addr148:
                                 while(!(_loc8_ && param3))
                                 {
                                    if(_loc7_)
                                    {
                                       mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§`t§);
                                       while(!_loc8_)
                                       {
                                          mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                          while(true)
                                          {
                                             mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§%f§);
                                             continue loop1;
                                          }
                                          return;
                                       }
                                       continue loop2;
                                       addr136:
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr127);
      }
      
      protected function §`t§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §%f§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §;!V§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            §§push(AngryBirdsFP11.§[!S§);
            if(!_loc7_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr63:
                  §§push("https://");
                  if(_loc6_ || param2)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§[!S§.substr(7));
                  }
                  §§push(§§pop());
                  if(!_loc7_)
                  {
                     addr62:
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
                        if(!(_loc7_ && param3))
                        {
                           §§push("/embed");
                           if(!(_loc7_ && param2))
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc6_ || param1)
                              {
                                 §§push("?levelId=");
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc6_ || this)
                                    {
                                       §§push(param1);
                                       if(_loc6_ || this)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc7_ && param3))
                                          {
                                             addr131:
                                             §§push("&levelName=");
                                             if(_loc6_ || param2)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc7_ && this))
                                                {
                                                   §§push(§§pop() + escape(param2));
                                                   if(!_loc7_)
                                                   {
                                                      if(param3 > 0)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr159:
                                                            §§push("&score=");
                                                            if(!_loc7_)
                                                            {
                                                               addr162:
                                                               §§push(§§pop() + param3);
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            else
                                                            {
                                                               addr181:
                                                               §§push(§§pop());
                                                            }
                                                            addr182:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr191:
                                                               if(param4)
                                                               {
                                                                  if(_loc6_ || param3)
                                                                  {
                                                                     §§push("&type=");
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        addr217:
                                                                        §§push(§§pop() + param4 + (!(_loc7_ && this) ? §§pop() : §§pop()));
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                        }
                                                                        §§goto(addr242);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push("");
                                                                  if(_loc7_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr242);
                                                      }
                                                      else
                                                      {
                                                         §§push("");
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            §§goto(addr181);
                                                         }
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr242);
                                 }
                                 addr242:
                                 return §§pop() + "\" ></iframe>";
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr191);
               }
               else
               {
                  §§push(AngryBirdsFP11.§[!S§);
                  if(!_loc7_)
                  {
                     addr54:
                     §§push(§§pop());
                     if(_loc6_ || param2)
                     {
                        §§goto(addr62);
                     }
                     §§goto(addr63);
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr54);
         }
         §§goto(addr63);
      }
      
      protected function §,v§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(AngryBirdsFP11.§[!S§);
            if(!(_loc7_ && param1))
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr33:
                  §§push("https://");
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§[!S§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     addr57:
                     §§push(§§pop());
                     addr49:
                  }
                  else
                  {
                     addr54:
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        §§goto(addr57);
                     }
                  }
               }
               else
               {
                  §§push(AngryBirdsFP11.§[!S§);
                  if(!_loc7_)
                  {
                     §§goto(addr54);
                  }
               }
               var _loc5_:*;
               §§push((_loc5_ = §§pop()) + "/embed");
               if(_loc6_ || param3)
               {
                  §§push("?levelId=");
                  if(_loc6_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_)
                     {
                        §§push(param1);
                        if(!(_loc7_ && param3))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push("&levelName=");
                              if(!_loc7_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc7_ && param2))
                                 {
                                    §§push(§§pop() + escape(param2));
                                    if(!_loc7_)
                                    {
                                       if(param3 > 0)
                                       {
                                          if(_loc6_)
                                          {
                                             addr119:
                                             §§push("&score=");
                                             if(_loc6_ || param3)
                                             {
                                                §§push(§§pop() + param3 + (!(_loc7_ && param1) ? §§pop() : §§pop()));
                                                if(!(_loc7_ && param1))
                                                {
                                                   addr161:
                                                   if(param4)
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         addr169:
                                                         §§push("&type=");
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr186);
                                                         }
                                                         §§goto(addr184);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr184);
                                                      §§push("");
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr141);
                                          }
                                       }
                                       else
                                       {
                                          §§push("");
                                          if(_loc6_)
                                          {
                                             §§goto(addr141);
                                          }
                                          §§goto(addr181);
                                       }
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr119);
                  }
                  §§goto(addr184);
               }
               addr186:
               return §§pop() + param4 + (!(_loc7_ && this) ? §§pop() : §§pop());
            }
            §§goto(addr49);
         }
         §§goto(addr33);
      }
      
      private function §&>§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            System.setClipboard(this.§3!$§);
            while(true)
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            mClip.Embed_CheckHTML.visible = true;
            if(_loc2_ || _loc2_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §<!=§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            System.setClipboard(this.§7!^§);
            while(true)
            {
               mClip.Embed_CheckURL.gotoAndPlay(1);
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            mClip.Embed_CheckURL.visible = true;
            if(!_loc3_)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §7!i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            close();
         }
      }
   }
}
