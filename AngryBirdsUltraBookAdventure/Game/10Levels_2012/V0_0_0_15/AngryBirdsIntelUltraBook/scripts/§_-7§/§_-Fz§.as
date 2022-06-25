package §_-7§
{
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-gU§.Popup;
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §_-Fz§ extends Popup
   {
       
      
      protected var §_-Y0§:String;
      
      protected var §_-9Q§:String;
      
      public function §_-Fz§(param1:§_-5q§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(§_-vB§.§_-ky§.Views.PopupView_Embed[0],param1);
            loop0:
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§_-hn§);
               loop1:
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§_-QP§);
                  loop2:
                  while(true)
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§_-XZ§);
                     loop3:
                     while(true)
                     {
                        this.§_-Y0§ = this.§_-9D§(param3,param4,param5,param6);
                        loop4:
                        while(true)
                        {
                           mClip.txtEmbedHTML.text = this.§_-Y0§;
                           loop5:
                           while(true)
                           {
                              mClip.stage.focus = mClip.txtEmbedHTML;
                              while(_loc8_)
                              {
                                 this.§_-9Q§ = this.§_-Go§(param3,param4,param5,param6);
                                 while(true)
                                 {
                                    mClip.txtEmbedURL.text = this.§_-9Q§;
                                    continue loop0;
                                 }
                                 while(!(_loc7_ && param1))
                                 {
                                    if(!_loc7_)
                                    {
                                       mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§_-QW§);
                                       loop12:
                                       while(!_loc7_)
                                       {
                                          if(!_loc7_)
                                          {
                                             mClip.Embed_CheckHTML.stop();
                                             while(!_loc7_)
                                             {
                                                if(!_loc7_)
                                                {
                                                   continue loop2;
                                                }
                                                §§goto(addr175);
                                                for(; !(_loc7_ && this); while(_loc8_ || param2)
                                                {
                                                   mClip.Embed_CheckURL.visible = false;
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         return;
                                                         addr33:
                                                      }
                                                      continue loop3;
                                                   }
                                                })
                                                {
                                                   addr58:
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         mClip.Embed_CheckURL.stop();
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr134:
                                                   while(true)
                                                   {
                                                      mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                                      break loop12;
                                                      §§goto(addr58);
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          continue loop1;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            mClip.Embed_CheckHTML.visible = false;
            §§goto(addr51);
         }
         §§goto(addr33);
      }
      
      protected function §_-Su§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §_-QW§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §_-9D§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(AngryBirdsFP11.§_-08Q§);
            if(!_loc6_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr29:
                  §§push("https://");
                  if(_loc7_ || this)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§_-08Q§.substr(7));
                  }
                  §§push(§§pop());
                  if(!(_loc6_ && param3))
                  {
                     addr63:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr60:
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        §§goto(addr63);
                     }
                  }
                  var _loc5_:* = §§pop();
                  §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                  if(!(_loc6_ && param2))
                  {
                     §§push(_loc5_);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || param3)
                        {
                           §§push("/embed");
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push("?levelId=");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc6_)
                                    {
                                       addr101:
                                       §§push(param1);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             addr127:
                                             §§push("&levelName=");
                                             if(!(_loc6_ && this))
                                             {
                                                addr135:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() + escape(param2));
                                                   if(_loc7_)
                                                   {
                                                      addr144:
                                                      if(param3 > 0)
                                                      {
                                                         if(!(_loc6_ && param3))
                                                         {
                                                            §§push("&score=");
                                                            if(_loc7_ || param3)
                                                            {
                                                               §§push(§§pop() + param3 + (!!_loc7_ ? §§pop() : §§pop()));
                                                               if(_loc7_ || param1)
                                                               {
                                                                  addr187:
                                                                  if(param4)
                                                                  {
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr205:
                                                                        §§push("&type=");
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           §§goto(addr233);
                                                                        }
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push("");
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§goto(addr222);
                                                                     }
                                                                  }
                                                                  addr233:
                                                                  §§push(§§pop() + param4 + (!_loc6_ ? §§pop() : §§pop()));
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     addr231:
                                                                     §§push("\" ></iframe>");
                                                                  }
                                                                  return §§pop();
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr233);
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      else
                                                      {
                                                         §§push("");
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§goto(addr177);
                                                         }
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr233);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr135);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr127);
               }
               else
               {
                  §§push(AngryBirdsFP11.§_-08Q§);
                  if(!(_loc6_ && param2))
                  {
                     §§goto(addr60);
                  }
               }
            }
            §§goto(addr63);
         }
         §§goto(addr29);
      }
      
      protected function §_-Go§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(AngryBirdsFP11.§_-08Q§);
            if(!_loc7_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr28:
                  §§push("https://");
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§_-08Q§.substr(7));
                  }
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                  }
                  addr63:
                  var _loc5_:*;
                  §§push((_loc5_ = §§pop()) + "/embed");
                  if(!(_loc7_ && param2))
                  {
                     §§push("?levelId=");
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc6_ || this)
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
                                    if(_loc6_)
                                    {
                                       addr112:
                                       §§push(§§pop() + escape(param2));
                                       if(_loc6_)
                                       {
                                          if(param3 > 0)
                                          {
                                             if(!_loc7_)
                                             {
                                                addr124:
                                                §§push("&score=");
                                                if(_loc6_ || param3)
                                                {
                                                   addr132:
                                                   §§push(§§pop() + param3);
                                                   if(!_loc7_)
                                                   {
                                                      addr142:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         addr155:
                                                         if(param4)
                                                         {
                                                            if(!(_loc7_ && this))
                                                            {
                                                               addr164:
                                                               §§push("&type=");
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§goto(addr181);
                                                               }
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         else
                                                         {
                                                            §§push("");
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                }
                                             }
                                             §§goto(addr181);
                                          }
                                          else
                                          {
                                             §§push("");
                                             if(!_loc7_)
                                             {
                                                addr141:
                                                §§goto(addr142);
                                                §§push(§§pop());
                                             }
                                          }
                                          addr181:
                                          return §§pop() + param4 + (!_loc7_ ? §§pop() : §§pop());
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr141);
                  }
                  §§goto(addr124);
               }
               else
               {
                  §§push(AngryBirdsFP11.§_-08Q§);
                  if(_loc6_ || param3)
                  {
                     §§push(§§pop());
                     if(_loc6_ || param1)
                     {
                     }
                     §§goto(addr63);
                  }
               }
               §§push(§§pop());
            }
            §§goto(addr63);
         }
         §§goto(addr28);
      }
      
      private function §_-QP§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            System.setClipboard(this.§_-Y0§);
            while(true)
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               loop1:
               while(_loc2_ || param1)
               {
                  while(true)
                  {
                     mClip.Embed_CheckHTML.visible = true;
                     if(!_loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      private function §_-XZ§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            System.setClipboard(this.§_-9Q§);
            while(true)
            {
               mClip.Embed_CheckURL.gotoAndPlay(1);
               while(_loc3_ || _loc2_)
               {
                  mClip.Embed_CheckURL.visible = true;
                  if(_loc2_ && _loc2_)
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
      
      private function §_-hn§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            close();
         }
      }
   }
}
