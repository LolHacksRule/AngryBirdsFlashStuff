package
{
   import § !A§.§"!8§;
   import §-!0§.§1^§;
   import §8!Q§.§ ^§;
   import §8!Q§.§,8§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.ui.ContextMenu;
   import flash.utils.getTimer;
   
   public class §^f§ extends §"!8§
   {
      
      public static const §9!o§:String = "0.0.0.1 ({svn_version}) beta";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!o§ = "0.0.0.1 ({svn_version}) beta";
         }
      }
      
      private var §4#§:Boolean = false;
      
      private var §0s§:ClickToPlay;
      
      private var §]F§:Number;
      
      private var §,!n§:Number;
      
      public function §^f§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               if(stage)
               {
                  if(_loc2_ || _loc1_)
                  {
                  }
               }
               else
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               }
               §§goto(addr73);
            }
            this.init();
            if(_loc1_ && _loc1_)
            {
            }
         }
         addr73:
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§]F§ = stage.stageWidth;
            if(_loc1_)
            {
               this.§,!n§ = stage.stageHeight;
               § ^§.§,!S§(stage,"UA-23082676-19");
               if(_loc1_ || _loc1_)
               {
                  § ^§.enabled = true;
                  if(_loc1_ || this)
                  {
                     §,8§.§^!9§();
                     addr59:
                     if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
                     {
                        if(!(_loc2_ && this))
                        {
                           addr83:
                           loaderInfo.addEventListener(Event.COMPLETE,this.§7h§);
                           if(_loc1_ || this)
                           {
                           }
                        }
                     }
                     else
                     {
                        this.loadingComplete();
                     }
                     §§goto(addr99);
                  }
                  addr99:
                  return;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr83);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
            if(_loc3_)
            {
               this.init();
            }
         }
      }
      
      private function §7h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§7h§);
            if(_loc3_)
            {
               addr27:
               this.loadingComplete();
            }
            return;
         }
         §§goto(addr27);
      }
      
      protected function loadingComplete() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §,8§.§?!@§(§ ^§.§%!H§);
            if(!(_loc2_ && _loc1_))
            {
               loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§[!G§);
            }
         }
         var _loc1_:ContextMenu = new ContextMenu();
         if(!(_loc2_ && this))
         {
            _loc1_.hideBuiltInItems();
            this.contextMenu = _loc1_;
            if(ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
            {
               if(!_loc2_)
               {
                  if(!stage.loaderInfo.parameters.paused)
                  {
                     if(!_loc2_)
                     {
                        this.§null§();
                        addr89:
                     }
                  }
                  else
                  {
                     this.§?!9§();
                     if(_loc2_)
                     {
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr97);
               }
            }
            else
            {
               this.§`!I§();
            }
            addr97:
            return;
         }
         §§goto(addr89);
      }
      
      private function §?!9§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§0s§ = new ClickToPlay();
            §§push(this.§0s§);
            if(_loc1_)
            {
               §§push(true);
               if(!(_loc2_ && _loc2_))
               {
                  §§pop().useHandCursor = §§pop();
                  §§push(this.§0s§);
                  if(_loc1_ || _loc2_)
                  {
                     addr45:
                     §§pop().buttonMode = true;
                     if(!(_loc2_ && _loc1_))
                     {
                        stage.addChild(this.§0s§);
                        if(_loc1_ || _loc1_)
                        {
                           §§push(this.§0s§);
                           if(_loc1_)
                           {
                              §§push(stage.stageWidth - this.§0s§.width);
                              if(_loc1_)
                              {
                                 §§push(1);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() >> §§pop());
                                    if(!(_loc2_ && this))
                                    {
                                       §§pop().x = §§pop();
                                       §§goto(addr123);
                                    }
                                    §§pop().y = §§pop();
                                    addr121:
                                    addr123:
                                    §§push(this.§0s§);
                                    if(!_loc2_)
                                    {
                                       addr119:
                                       §§push(stage.stageHeight - this.§0s§.height >> 1);
                                    }
                                    §§pop().TextField_LevelName.text = §9C§.§^!G§(stage.loaderInfo.parameters.levelId);
                                    if(_loc1_)
                                    {
                                       stage.addEventListener(MouseEvent.CLICK,this.§6q§);
                                       if(_loc1_)
                                       {
                                          stage.addEventListener(Event.RESIZE,this.onStageResize);
                                       }
                                       §§goto(addr147);
                                    }
                                    addr147:
                                    return;
                                    §§push(this.§0s§);
                                 }
                              }
                              §§goto(addr119);
                           }
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr123);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr147);
      }
      
      private function §`!I§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         if(_loc3_)
         {
            _loc1_.text = "Please install Flash 11 to play";
         }
         _loc1_.textColor = 0;
         if(_loc3_ || _loc2_)
         {
            _loc1_.selectable = false;
            _loc1_.height = 30;
            _loc1_.width = 250;
            _loc1_.autoSize = TextFieldAutoSize.CENTER;
            if(_loc3_)
            {
               stage.addChild(_loc1_);
               if(!(_loc2_ && _loc3_))
               {
                  _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
                  addr90:
                  _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
                  _loc1_.mouseEnabled = true;
               }
               stage.addEventListener(MouseEvent.CLICK,this.§`!2§);
            }
            return;
         }
         §§goto(addr90);
      }
      
      private function §`!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§`!2§);
            if(_loc2_ || this)
            {
               navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
            }
         }
      }
      
      private function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§0s§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr30:
                     §§push(this.§0s§);
                     if(_loc2_ || param1)
                     {
                        §§push(stage.stageWidth - this.§0s§.width);
                        if(_loc2_)
                        {
                           §§push(1);
                           if(!_loc3_)
                           {
                              §§push(§§pop() >> §§pop());
                              if(_loc2_)
                              {
                                 §§pop().x = §§pop();
                                 §§goto(addr92);
                              }
                              §§pop().y = §§pop();
                              §§goto(addr92);
                           }
                        }
                     }
                  }
                  §§goto(addr90);
               }
               addr92:
               if(_loc2_ || this)
               {
                  addr90:
                  §§push(this.§0s§);
                  §§push(stage.stageHeight - this.§0s§.height >> 1);
               }
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr30);
      }
      
      private function §6q§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            stage.removeEventListener(Event.RESIZE,this.onStageResize);
            if(_loc2_)
            {
               stage.removeEventListener(MouseEvent.CLICK,this.§6q§);
               if(_loc2_ || _loc2_)
               {
                  addr64:
                  if(stage.contains(this.§0s§))
                  {
                     if(!(_loc3_ && param1))
                     {
                        stage.removeChild(this.§0s§);
                        if(_loc3_)
                        {
                        }
                     }
                     §§goto(addr84);
                  }
               }
               this.§null§();
               §§goto(addr84);
            }
            §§goto(addr64);
         }
         addr84:
      }
      
      private function §null§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            new §#!?§(this,this.§]F§,this.§,!n§);
         }
      }
      
      protected function §[!G§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(_loc13_)
         {
            §§push(this.§4#§);
            if(!(_loc14_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc13_)
                  {
                     this.§4#§ = true;
                     if(_loc13_)
                     {
                        §§push(0);
                        if(!(_loc14_ && _loc2_))
                        {
                           _loc2_ = §§pop();
                           _loc3_ = null;
                           if(_loc13_ || param1)
                           {
                              §§push("");
                              if(_loc13_ || param1)
                              {
                                 _loc4_ = §§pop();
                                 §§push("-");
                              }
                              _loc5_ = §§pop();
                              if(!_loc14_)
                              {
                                 addr105:
                                 _loc6_ = Math.round(getTimer() / 1000);
                                 if(!_loc14_)
                                 {
                                    addr108:
                                    §§push(param1.error is Error);
                                    if(_loc13_)
                                    {
                                       addr114:
                                       if(§§pop())
                                       {
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             addr122:
                                             §§push(int((_loc10_ = param1.error as Error).errorID));
                                             if(_loc13_ || param1)
                                             {
                                                _loc2_ = §§pop();
                                                §§push(_loc10_.message);
                                                if(!_loc14_)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc13_ || this)
                                                   {
                                                      §§push(_loc10_.getStackTrace());
                                                      if(!_loc14_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         addr174:
                                                         §,8§.§9u§(_loc2_,_loc6_);
                                                         if(_loc13_ || param1)
                                                         {
                                                            §§push(§'!V§.§6!O§);
                                                            if(!(_loc14_ && param1))
                                                            {
                                                               if(§§pop() != null)
                                                               {
                                                                  addr198:
                                                                  §§push(§'!V§.§6!O§.§^!^§());
                                                                  if(_loc13_ || param1)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!(_loc14_ && _loc3_))
                                                                     {
                                                                        addr215:
                                                                        §§push(_loc4_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr218:
                                                                           §§push(null);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(_loc13_)
                                                                                    {
                                                                                       §§pop();
                                                                                       §§push(_loc4_.length == 0);
                                                                                       if(_loc14_ && _loc3_)
                                                                                       {
                                                                                       }
                                                                                       addr331:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr334:
                                                                                             §§push("CPU");
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                _loc8_ = §§pop();
                                                                                                addr338:
                                                                                                §§push(_loc2_.toString() + "::");
                                                                                                if(!(_loc14_ && this))
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc13_ || param1)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push("::");
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            addr366:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            §§push("::");
                                                                                                            if(_loc13_ || this)
                                                                                                            {
                                                                                                               addr375:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_loc8_);
                                                                                                               if(!(_loc14_ && param1))
                                                                                                               {
                                                                                                                  addr384:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  §§push("::");
                                                                                                                  if(_loc13_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr392:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc13_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           addr403:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              addr407:
                                                                                                                              §§push(§§pop() + "::");
                                                                                                                              if(_loc14_ && this)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr426:
                                                                                                                              §§push(§§pop());
                                                                                                                              if(!(_loc14_ && param1))
                                                                                                                              {
                                                                                                                                 addr434:
                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                 if(!(_loc14_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §,8§.§?!@§(§ ^§.§[!D§,_loc9_,_loc6_);
                                                                                                                                    if(_loc14_ && _loc3_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr491);
                                                                                                                                 }
                                                                                                                                 addr465:
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    if(!_loc14_)
                                                                                                                                    {
                                                                                                                                       addr469:
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr484);
                                                                                                                                       }
                                                                                                                                       addr484:
                                                                                                                                       §§push(§§pop() + "::");
                                                                                                                                       if(!(_loc14_ && this))
                                                                                                                                       {
                                                                                                                                          addr482:
                                                                                                                                          §§push(§§pop() + _loc3_);
                                                                                                                                       }
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       §,8§.§?!@§(§ ^§.§--§,_loc12_,_loc6_);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr491);
                                                                                                                              }
                                                                                                                              §§goto(addr484);
                                                                                                                           }
                                                                                                                           §§push(§9!o§);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           §§goto(addr482);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc14_ && this))
                                                                                                                        {
                                                                                                                           §§goto(addr426);
                                                                                                                        }
                                                                                                                        §§goto(addr482);
                                                                                                                     }
                                                                                                                     §§goto(addr426);
                                                                                                                  }
                                                                                                                  §§goto(addr407);
                                                                                                               }
                                                                                                               §§goto(addr403);
                                                                                                            }
                                                                                                            §§goto(addr392);
                                                                                                         }
                                                                                                         §§goto(addr482);
                                                                                                      }
                                                                                                      §§goto(addr392);
                                                                                                   }
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                                §§goto(addr384);
                                                                                             }
                                                                                             §§goto(addr366);
                                                                                          }
                                                                                          §§goto(addr469);
                                                                                       }
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc13_ || _loc3_)
                                                                                    {
                                                                                       _loc4_ = "NoState";
                                                                                       if(_loc13_ || param1)
                                                                                       {
                                                                                          addr267:
                                                                                          §§push(_loc7_ = §1^§.§ ]§);
                                                                                          if(_loc13_ || param1)
                                                                                          {
                                                                                             addr280:
                                                                                             if(§§pop() == null)
                                                                                             {
                                                                                                if(_loc13_ || param1)
                                                                                                {
                                                                                                   addr288:
                                                                                                   _loc7_ = "";
                                                                                                   addr290:
                                                                                                   §§push("GPU");
                                                                                                   if(!(_loc14_ && param1))
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      if(!(_loc14_ && _loc3_))
                                                                                                      {
                                                                                                         if(§7j§.§else§ == null)
                                                                                                         {
                                                                                                            if(_loc13_ || param1)
                                                                                                            {
                                                                                                               §§push("NULL");
                                                                                                               if(!(_loc14_ && _loc3_))
                                                                                                               {
                                                                                                                  addr325:
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§goto(addr338);
                                                                                                                  }
                                                                                                                  §§goto(addr484);
                                                                                                               }
                                                                                                               §§goto(addr375);
                                                                                                            }
                                                                                                            §§goto(addr491);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr331);
                                                                                                            §§push(§7j§.§?!X§);
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      §§goto(addr465);
                                                                                                   }
                                                                                                   §§goto(addr325);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          §§goto(addr484);
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 §§goto(addr267);
                                                                              }
                                                                              §§goto(addr331);
                                                                           }
                                                                           §§goto(addr280);
                                                                        }
                                                                        §§goto(addr434);
                                                                     }
                                                                     §§goto(addr288);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                   §§goto(addr484);
                                                }
                                                §§goto(addr434);
                                             }
                                             §§goto(addr338);
                                          }
                                          else
                                          {
                                             addr164:
                                             _loc2_ = int((_loc11_ = param1.error as ErrorEvent).errorID);
                                          }
                                       }
                                       else
                                       {
                                          addr163:
                                          if(param1.error is ErrorEvent)
                                          {
                                             §§goto(addr164);
                                          }
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr163);
                                 }
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr108);
               }
               addr491:
               return;
            }
            §§goto(addr114);
         }
         §§goto(addr164);
      }
   }
}
