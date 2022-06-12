package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.system.System;
   
   public class §&-§ extends Popup
   {
       
      
      protected var §@D§:String;
      
      protected var §-1§:String;
      
      protected var § s§:Loader;
      
      public function §&-§(param1:§7!A§, param2:StatePopupManager, param3:String, param4:String, param5:int, param6:String)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(§ "A§.§4[§.Views.PopupView_Embed[0],param1);
            loop0:
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
               loop1:
               while(true)
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§1"5§);
                  loop2:
                  while(true)
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§[F§);
                     loop3:
                     while(true)
                     {
                        this.§@D§ = this.§#"?§(param3,param4,param5,param6);
                        while(true)
                        {
                           mClip.txtEmbedHTML.text = this.§@D§;
                           addr231:
                           while(_loc9_)
                           {
                           }
                           continue loop0;
                           loop13:
                           for(; _loc9_ || this; while(true)
                           {
                              if(!(_loc8_ && param3))
                              {
                                 continue loop1;
                              }
                              continue loop13;
                              addr36:
                              if(!(_loc9_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr43);
                           },continue loop1)
                           {
                              mClip.Embed_CheckHTML.stop();
                              loop14:
                              for(; !(_loc8_ && this); while(true)
                              {
                                 if(!(_loc8_ && param2))
                                 {
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    mClip.Embed_CheckURL.visible = false;
                                    continue loop13;
                                 }
                                 continue loop14;
                              },while(true)
                              {
                                 mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§6!y§);
                                 §§goto(addr179);
                              })
                              {
                                 mClip.Embed_CheckHTML.visible = false;
                                 while(true)
                                 {
                                    mClip.Embed_CheckURL.stop();
                                    continue loop14;
                                    addr43:
                                    if(!(_loc8_ && param2))
                                    {
                                       addr50:
                                       if(_loc9_ || param1)
                                       {
                                          if(true)
                                          {
                                             §§push(AngryBirdsFP11.§76§ + "/fb_images/levels/embed/");
                                             if(!(_loc8_ && param2))
                                             {
                                                §§push(§§pop() + param3);
                                                if(_loc9_)
                                                {
                                                   §§push(§§pop() + ".png");
                                                }
                                             }
                                             var _loc7_:* = §§pop();
                                             if(!(_loc8_ && this))
                                             {
                                                this.§ s§.load(new URLRequest(_loc7_));
                                             }
                                             return;
                                          }
                                          addr161:
                                          while(true)
                                          {
                                             this.§ s§ = new Loader();
                                             addr64:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop2;
                                                }
                                                continue loop14;
                                             }
                                             continue loop2;
                                             §§goto(addr50);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr50);
                                          }
                                          while(true)
                                          {
                                             this.§-1§ = this.§5k§(param3,param4,param5,param6);
                                             addr217:
                                             while(true)
                                             {
                                                mClip.txtEmbedURL.text = this.§-1§;
                                                break loop14;
                                             }
                                          }
                                          addr161:
                                          addr224:
                                       }
                                       else
                                       {
                                          §§goto(addr161);
                                       }
                                       if(!§§pop())
                                       {
                                          if(!_loc9_)
                                          {
                                             §§goto(addr224);
                                          }
                                          mClip.txtEmbedURL.addEventListener(MouseEvent.CLICK,this.§]!7§);
                                          continue loop13;
                                       }
                                       while(!_loc8_)
                                       {
                                          mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                          §§goto(addr161);
                                       }
                                       continue loop3;
                                       addr179:
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(_loc9_ || param3)
                                 {
                                    if(!_loc8_)
                                    {
                                       mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                       §§goto(addr191);
                                    }
                                    else
                                    {
                                       §§goto(addr231);
                                    }
                                 }
                                 break;
                                 §§goto(addr118);
                              }
                              addr118:
                              §§goto(addr217);
                           }
                        }
                     }
                  }
                  if(!(_loc9_ || param2))
                  {
                     continue;
                  }
                  §§goto(addr59);
               }
            }
         }
         while(true)
         {
            mClip.stage.focus = mClip.txtEmbedHTML;
            §§goto(addr161);
         }
      }
      
      protected function §%!V§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            (this.§ s§.content as Bitmap).smoothing = true;
            if(_loc4_ || param1)
            {
               §§goto(addr53);
            }
            §§goto(addr75);
         }
         addr53:
         this.§ s§.scaleX = this.§ s§.scaleY = 200 / this.§ s§.width;
         if(_loc4_ || _loc3_)
         {
            addr75:
            mClip.mcThumbnail.addChild(this.§ s§);
         }
      }
      
      protected function §6!y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §]!7§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §#"?§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            §§push(AngryBirdsFP11.§76§);
            if(_loc6_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr33:
                  §§push("https://");
                  if(_loc6_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§76§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_ && param1)
                  {
                     addr59:
                     §§push(§§pop());
                     if(_loc7_)
                     {
                     }
                     addr63:
                     var _loc5_:* = §§pop();
                     §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
                     if(!(_loc7_ && param3))
                     {
                        §§push(_loc5_);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_)
                           {
                              §§push("/embed");
                              if(_loc6_ || param2)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc7_)
                                 {
                                    §§push("?levelId=");
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_ || param1)
                                       {
                                          §§push(param1);
                                          if(!(_loc7_ && this))
                                          {
                                             addr128:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc7_)
                                             {
                                                §§push("&levelName=");
                                                if(_loc6_ || this)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc6_ || param3)
                                                   {
                                                      §§push(§§pop() + escape(param2));
                                                      if(_loc6_ || param1)
                                                      {
                                                         addr158:
                                                         if(param3 > 0)
                                                         {
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               addr169:
                                                               §§push("&score=");
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(§§pop() + param3 + (!!_loc6_ ? §§pop() : §§pop()));
                                                                  if(_loc6_)
                                                                  {
                                                                     addr201:
                                                                     if(param4)
                                                                     {
                                                                        if(!(_loc7_ && this))
                                                                        {
                                                                           addr209:
                                                                           §§push("&type=");
                                                                           if(!_loc7_)
                                                                           {
                                                                              §§push(§§pop() + param4 + (!!_loc6_ ? §§pop() : §§pop()));
                                                                              if(!_loc7_)
                                                                              {
                                                                                 addr226:
                                                                                 §§push(§§pop() + "\" ></iframe>");
                                                                              }
                                                                           }
                                                                           §§goto(addr216);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push("");
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr221);
                                                                        }
                                                                        §§goto(addr226);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr216);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push("");
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               §§goto(addr186);
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr169);
                                          }
                                          §§goto(addr201);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr201);
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr201);
                  }
                  §§goto(addr63);
               }
               else
               {
                  §§push(AngryBirdsFP11.§76§);
                  if(!(_loc7_ && param1))
                  {
                     §§goto(addr59);
                  }
               }
               §§push(§§pop());
            }
            §§goto(addr59);
         }
         §§goto(addr33);
      }
      
      protected function §5k§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §§push(AngryBirdsFP11.§76§);
            if(!_loc7_)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr28:
                  §§push("https://");
                  if(_loc6_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§76§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc6_ || this)
                  {
                     addr52:
                     §§push(§§pop());
                     addr44:
                  }
               }
               else
               {
                  §§push(AngryBirdsFP11.§76§);
                  if(!_loc7_)
                  {
                     §§push(§§pop());
                     if(!_loc7_)
                     {
                        §§goto(addr52);
                     }
                  }
               }
               var _loc5_:*;
               §§push((_loc5_ = §§pop()) + "/embed");
               if(_loc6_ || this)
               {
                  §§push("?levelId=");
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc6_ || param2)
                     {
                        §§push(param1);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc7_)
                           {
                              §§push("&levelName=");
                              if(!(_loc7_ && param1))
                              {
                                 addr104:
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc7_ && param1))
                                 {
                                    §§push(§§pop() + escape(param2));
                                    if(_loc6_ || param1)
                                    {
                                    }
                                    addr129:
                                    §§push("&score=");
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(§§pop() + param3);
                                       if(_loc6_)
                                       {
                                          §§goto(addr147);
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                                 if(param3 > 0)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr129);
                                    }
                                    §§goto(addr174);
                                 }
                                 else
                                 {
                                    §§push("");
                                    if(!_loc7_)
                                    {
                                       addr147:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc7_ && this))
                                       {
                                          addr166:
                                          if(param4)
                                          {
                                             if(!(_loc7_ && param3))
                                             {
                                                addr174:
                                                §§push("&type=");
                                                if(!(_loc7_ && this))
                                                {
                                                   §§goto(addr191);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr191);
                                          }
                                          else
                                          {
                                             §§push("");
                                          }
                                          §§goto(addr189);
                                       }
                                       addr191:
                                       return §§pop() + param4 + (!!_loc6_ ? §§pop() : §§pop());
                                       §§push(§§pop());
                                    }
                                 }
                                 §§goto(addr191);
                              }
                              §§goto(addr186);
                           }
                           §§goto(addr129);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr104);
               }
               §§goto(addr166);
            }
            §§goto(addr44);
         }
         §§goto(addr28);
      }
      
      private function §1"5§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            System.setClipboard(this.§@D§);
            while(true)
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               loop1:
               while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     mClip.Embed_CheckHTML.visible = true;
                     if(_loc2_ || param1)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      private function §[F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            System.setClipboard(this.§-1§);
         }
         do
         {
            mClip.Embed_CheckURL.gotoAndPlay(1);
            do
            {
               mClip.Embed_CheckURL.visible = true;
            }
            while(!(_loc2_ || _loc3_));
            
         }
         while(_loc3_ && _loc2_);
         
      }
      
      private function §@!a§(param1:MouseEvent) : void
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
