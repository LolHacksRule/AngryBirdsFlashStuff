package §?N§
{
   import §,B§.Popup;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §0F§ extends Popup
   {
       
      
      protected var §]F§:String;
      
      protected var § 2§:String;
      
      public function §0F§(param1:§4`§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param2))
         {
            super(§ !I§.§3!a§.Views.PopupView_Embed[0],param1);
            loop0:
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@C§);
               addr248:
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§2$§);
                  continue loop0;
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function §"!3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §]P§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §?h§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param1)
         {
            §§push(AngryBirdsFP11.§;!1§);
            if(_loc6_ || this)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr38:
                  §§push("https://");
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() + AngryBirdsFP11.§;!1§.substr(7));
                  }
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                  }
               }
               else
               {
                  §§push(AngryBirdsFP11.§;!1§);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        addr62:
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                     if(_loc6_ || param3)
                     {
                        §§push(_loc5_);
                        if(_loc6_ || this)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push("/embed");
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || param3)
                                 {
                                    §§push("?levelId=");
                                    if(_loc6_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc7_ && param3))
                                       {
                                          addr120:
                                          §§push(param1);
                                          if(_loc6_ || param3)
                                          {
                                             addr128:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                addr131:
                                                §§push("&levelName=");
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr147:
                                                      §§push(§§pop() + escape(param2));
                                                      if(_loc6_ || param3)
                                                      {
                                                         if(param3 > 0)
                                                         {
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               addr169:
                                                               §§push("&score=");
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  §§push(§§pop() + param3);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr181:
                                                                     addr192:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr196:
                                                                        if(param4)
                                                                        {
                                                                           if(_loc6_ || param3)
                                                                           {
                                                                              addr204:
                                                                              §§push("&type=");
                                                                              if(!(_loc7_ && param3))
                                                                              {
                                                                                 addr222:
                                                                                 §§push(§§pop() + param4);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    addr231:
                                                                                    addr242:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 addr246:
                                                                                 addr247:
                                                                                 return §§pop();
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr231);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push("");
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              addr241:
                                                                              §§goto(addr242);
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                     }
                                                                     §§push("\" ></iframe>");
                                                                  }
                                                                  §§goto(addr246);
                                                               }
                                                               §§goto(addr181);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("");
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§goto(addr192);
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr222);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr231);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr241);
                           }
                           §§goto(addr131);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr120);
                  }
               }
            }
            §§goto(addr62);
         }
         §§goto(addr38);
      }
      
      protected function §5!j§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            §§push(AngryBirdsFP11.§;!1§);
            if(!(_loc6_ && param2))
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr39:
                  §§push("https://");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§;!1§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     addr68:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr60:
                     §§push(§§pop());
                     if(_loc7_ || param1)
                     {
                        §§goto(addr68);
                     }
                  }
                  var _loc5_:*;
                  §§push((_loc5_ = §§pop()) + "/embed");
                  if(_loc7_ || param2)
                  {
                     §§push("?levelId=");
                     if(_loc7_ || param3)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_)
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
                                    if(_loc7_ || param1)
                                    {
                                       addr123:
                                       §§push(§§pop() + escape(param2));
                                       if(!_loc6_)
                                       {
                                          if(param3 > 0)
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                §§push("&score=");
                                                if(_loc7_ || this)
                                                {
                                                   §§push(§§pop() + param3 + (!_loc6_ ? §§pop() : §§pop()));
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr181:
                                                      if(param4)
                                                      {
                                                         if(!(_loc6_ && this))
                                                         {
                                                            addr190:
                                                            §§push("&type=");
                                                            if(!_loc7_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      else
                                                      {
                                                         addr202:
                                                         return §§pop() + §§pop();
                                                         §§push("");
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr190);
                                                }
                                             }
                                             §§goto(addr190);
                                          }
                                          else
                                          {
                                             §§push("");
                                             if(!(_loc6_ && this))
                                             {
                                                §§goto(addr162);
                                             }
                                          }
                                          §§push(§§pop() + param4);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop());
                                          }
                                          else
                                          {
                                             §§goto(addr190);
                                          }
                                          §§goto(addr190);
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr123);
                     }
                  }
                  §§goto(addr190);
               }
               else
               {
                  §§push(AngryBirdsFP11.§;!1§);
                  if(!(_loc6_ && param3))
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr60);
         }
         §§goto(addr39);
      }
      
      private function §2$§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            System.setClipboard(this.§]F§);
            do
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               do
               {
                  mClip.Embed_CheckHTML.visible = true;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!_loc3_);
            
         }
      }
      
      private function §%!§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            System.setClipboard(this.§ 2§);
            while(true)
            {
               mClip.Embed_CheckURL.gotoAndPlay(1);
               while(_loc3_ || _loc2_)
               {
                  mClip.Embed_CheckURL.visible = true;
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §@C§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            close();
         }
      }
   }
}
