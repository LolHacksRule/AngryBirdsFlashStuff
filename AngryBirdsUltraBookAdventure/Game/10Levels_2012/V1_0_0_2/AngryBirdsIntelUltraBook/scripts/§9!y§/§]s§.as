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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || this)
         {
            super(§[!'§.§+@§.Views.PopupView_Embed[0],param1);
            while(true)
            {
               mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§9t§);
               loop1:
               for(; _loc8_ || param1; while(_loc8_ || param1)
               {
                  mClip.txtEmbedURL.text = this.§6c§;
                  §§goto(addr156);
               })
               {
                  mClip.btnCopyHTML.addEventListener(MouseEvent.CLICK,this.§?!v§);
                  loop2:
                  while(true)
                  {
                     mClip.btnCopyURL.addEventListener(MouseEvent.CLICK,this.§;!9§);
                     addr208:
                     loop3:
                     while(true)
                     {
                        this.§%!!§ = this.§7,§(param3,param4,param5,param6);
                        loop4:
                        while(_loc8_)
                        {
                           mClip.txtEmbedHTML.text = this.§%!!§;
                           loop5:
                           while(true)
                           {
                              mClip.stage.focus = mClip.txtEmbedHTML;
                              while(true)
                              {
                                 this.§6c§ = this.§`!t§(param3,param4,param5,param6);
                                 continue loop1;
                                 loop14:
                                 while(!(_loc7_ && param1))
                                 {
                                    mClip.Embed_CheckURL.stop();
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          addr59:
                                          if(_loc8_ || param2)
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          addr156:
                                          while(true)
                                          {
                                             mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
                                             do
                                             {
                                                mClip.txtEmbedHTML.addEventListener(MouseEvent.CLICK,this.§2X§);
                                                while(true)
                                                {
                                                   mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
                                                }
                                             }
                                             while(_loc7_);
                                             
                                             return;
                                             §§goto(addr59);
                                          }
                                       }
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop5;
                                          }
                                          §§goto(addr139);
                                       }
                                       continue loop5;
                                    }
                                    continue loop4;
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    addr43:
                                    if(_loc7_ && this)
                                    {
                                       while(_loc8_)
                                       {
                                          mClip.Embed_CheckHTML.visible = false;
                                          continue loop14;
                                          §§goto(addr43);
                                       }
                                       while(true)
                                       {
                                          if(!_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          mClip.Embed_CheckHTML.stop();
                                          §§goto(addr86);
                                       }
                                       addr86:
                                       continue loop3;
                                       addr97:
                                    }
                                    §§goto(addr50);
                                 }
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr208);
      }
      
      protected function §2X§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.txtEmbedHTML.setSelection(0,mClip.txtEmbedHTML.text.length);
         }
      }
      
      protected function §5!E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.txtEmbedURL.setSelection(0,mClip.txtEmbedURL.text.length);
         }
      }
      
      protected function §7,§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(AngryBirdsFP11.§8!`§);
            if(_loc7_ || this)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr34:
                  §§push("https://");
                  if(!_loc6_)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§8!`§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     addr63:
                     §§push(§§pop());
                  }
                  §§goto(addr63);
               }
               else
               {
                  §§push(AngryBirdsFP11.§8!`§);
                  if(_loc7_ || param2)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && param3))
                     {
                        §§goto(addr63);
                     }
                  }
               }
               var _loc5_:* = §§pop();
               §§push("<iframe width=\"398\" height=\"270\" scrolling=\"no\" frameborder=\"0\" src=\"");
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc7_ || param2)
                     {
                        §§push("/embed");
                        if(!(_loc6_ && param3))
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
                                    addr106:
                                    §§push(param1);
                                    if(!(_loc6_ && param3))
                                    {
                                       addr114:
                                       §§push(§§pop() + §§pop());
                                       if(_loc7_ || param1)
                                       {
                                          addr122:
                                          §§push("&levelName=");
                                          if(_loc7_ || this)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_ || this)
                                             {
                                                §§push(§§pop() + escape(param2));
                                                if(!_loc6_)
                                                {
                                                   addr144:
                                                   if(param3 > 0)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push("&score=");
                                                         if(_loc7_)
                                                         {
                                                            addr153:
                                                            §§push(§§pop() + param3);
                                                            if(!_loc7_)
                                                            {
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr168);
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   else
                                                   {
                                                      §§push("");
                                                      if(_loc7_ || param3)
                                                      {
                                                         addr168:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc7_)
                                                         {
                                                            addr172:
                                                            if(param4)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr190:
                                                                  §§push("&type=");
                                                                  if(_loc7_)
                                                                  {
                                                                     addr193:
                                                                     §§push(§§pop() + param4 + (!_loc6_ ? §§pop() : §§pop()));
                                                                     if(_loc7_ || this)
                                                                     {
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            else
                                                            {
                                                               §§push("");
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr202);
                                                               }
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         addr213:
                                                         return §§pop() + "\" ></iframe>";
                                                         §§push(§§pop());
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                }
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr213);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr202);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr114);
               }
               §§goto(addr106);
            }
            §§goto(addr63);
         }
         §§goto(addr34);
      }
      
      protected function §`!t§(param1:String, param2:String, param3:int, param4:String = "") : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param1)
         {
            §§push(AngryBirdsFP11.§8!`§);
            if(_loc7_ || param3)
            {
               if(§§pop().substr(0,7) == "http://")
               {
                  addr39:
                  §§push("https://");
                  if(_loc7_ || param2)
                  {
                     §§push(§§pop() + AngryBirdsFP11.§8!`§.substr(7));
                  }
                  §§push(§§pop());
                  if(_loc7_ || this)
                  {
                     addr73:
                     §§push(§§pop());
                  }
                  else
                  {
                     addr70:
                     §§push(§§pop());
                     if(_loc7_)
                     {
                        §§goto(addr73);
                     }
                  }
                  var _loc5_:*;
                  §§push((_loc5_ = §§pop()) + "/embed");
                  if(_loc7_)
                  {
                     §§push("?levelId=");
                     if(_loc7_ || param2)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || this)
                        {
                           §§push(param1);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc6_ && param1))
                              {
                                 §§push("&levelName=");
                                 if(_loc7_ || param1)
                                 {
                                    addr125:
                                    §§push(§§pop() + §§pop());
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() + escape(param2));
                                       if(!_loc6_)
                                       {
                                          addr134:
                                          if(param3 > 0)
                                          {
                                             if(_loc7_)
                                             {
                                                addr140:
                                                §§push("&score=");
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + param3);
                                                   if(!_loc6_)
                                                   {
                                                      addr158:
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         addr176:
                                                         if(param4)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push("&type=");
                                                               if(_loc7_ || param2)
                                                               {
                                                                  §§goto(addr197);
                                                               }
                                                            }
                                                            §§goto(addr197);
                                                         }
                                                         else
                                                         {
                                                            §§push("");
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr195);
                                             }
                                             §§goto(addr176);
                                          }
                                          else
                                          {
                                             §§push("");
                                             if(!(_loc6_ && param1))
                                             {
                                                §§goto(addr158);
                                                §§push(§§pop());
                                             }
                                             §§goto(addr197);
                                          }
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr134);
                                 }
                                 addr197:
                                 return §§pop() + param4 + (!!_loc7_ ? §§pop() : §§pop());
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr140);
               }
               else
               {
                  §§push(AngryBirdsFP11.§8!`§);
                  if(_loc7_ || param3)
                  {
                     §§goto(addr70);
                  }
               }
            }
            §§goto(addr73);
         }
         §§goto(addr39);
      }
      
      private function §?!v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            System.setClipboard(this.§%!!§);
            while(true)
            {
               mClip.Embed_CheckHTML.gotoAndPlay(1);
               §§goto(addr54);
            }
         }
         addr54:
         while(true)
         {
            mClip.Embed_CheckHTML.visible = true;
            if(!_loc2_)
            {
               if(!(_loc2_ && this))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §;!9§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            System.setClipboard(this.§6c§);
            while(true)
            {
               mClip.Embed_CheckURL.gotoAndPlay(1);
               while(!(_loc3_ && _loc2_))
               {
                  mClip.Embed_CheckURL.visible = true;
                  if(_loc3_ && param1)
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
      
      private function §9t§(param1:MouseEvent) : void
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
