package
{
   import §+!B§.§-Q§;
   import §+!B§.§;9§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7j§.§5!N§;
   import §=!0§.§>I§;
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
   
   public class AngryBirdsEmbedCanvas extends §5!N§
   {
      
      public static const §#!3§:String = "1.0.0.5 (r105755) beta";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!3§ = "1.0.0.5 (r105755) beta";
         }
      }
      
      private var §&!>§:Boolean = false;
      
      private var §7!N§:ClickToPlay;
      
      private var §'v§:Number;
      
      private var §>Z§:Number;
      
      public function AngryBirdsEmbedCanvas()
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
                  addEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
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
            this.§'v§ = stage.stageWidth;
            if(_loc1_)
            {
               this.§>Z§ = stage.stageHeight;
               §-Q§.§%x§(stage,"UA-23082676-25");
               if(_loc1_ || _loc1_)
               {
                  §-Q§.enabled = true;
                  if(_loc1_ || this)
                  {
                     §;9§.§0!7§();
                     addr59:
                     if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
                     {
                        if(!(_loc2_ && this))
                        {
                           addr83:
                           loaderInfo.addEventListener(Event.COMPLETE,this.§,9§);
                           if(_loc1_ || this)
                           {
                           }
                        }
                     }
                     else
                     {
                        this.§in§();
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
      
      private function §!!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
            if(_loc3_)
            {
               this.init();
            }
         }
      }
      
      private function §,9§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§,9§);
            if(_loc3_)
            {
               addr27:
               this.§in§();
            }
            return;
         }
         §§goto(addr27);
      }
      
      protected function §in§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §;9§.§"!A§(§-Q§.§ 2§);
            if(!(_loc2_ && _loc1_))
            {
               loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§1@§);
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
                        this.§3V§();
                        addr89:
                     }
                  }
                  else
                  {
                     this.§%%§();
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
               this.§2+§();
            }
            addr97:
            return;
         }
         §§goto(addr89);
      }
      
      private function §%%§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(AngryBirdsFP11);
            if(_loc2_ || this)
            {
               §§push(stage.loaderInfo.parameters.serverRoot);
               if(_loc2_ || this)
               {
                  §§pop().§,A§ = §§pop() || "http://ab-in-adventure.appspot.com//";
                  if(_loc2_)
                  {
                     this.§7!N§ = new ClickToPlay();
                     if(_loc3_ && this)
                     {
                     }
                     §§goto(addr90);
                  }
                  §§push(this.§7!N§);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(true);
                     if(_loc2_)
                     {
                        §§pop().useHandCursor = §§pop();
                        if(_loc2_)
                        {
                           addr88:
                           §§push(this.§7!N§);
                           §§push(true);
                        }
                        §§goto(addr90);
                     }
                     §§pop().buttonMode = §§pop();
                     §§goto(addr90);
                  }
                  §§goto(addr88);
               }
            }
            §§goto(addr45);
         }
         addr90:
         var _loc1_:String = stage.loaderInfo.parameters.levelId;
         if(_loc2_ || this)
         {
            this.§7!N§.TextField_LevelName.text = "Level " + _loc1_.split("-")[1];
            if(_loc2_)
            {
               stage.addChild(this.§7!N§);
               if(!_loc3_)
               {
                  stage.addEventListener(MouseEvent.CLICK,this.§<#§);
                  if(!(_loc3_ && this))
                  {
                     stage.addEventListener(Event.RESIZE,this.onStageResize);
                  }
               }
            }
         }
      }
      
      private function §2+§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         if(_loc3_ || this)
         {
            _loc1_.text = "Please install Flash 11 to play";
            _loc1_.textColor = 0;
         }
         _loc1_.selectable = false;
         if(_loc3_ || _loc1_)
         {
            _loc1_.height = 30;
            _loc1_.width = 250;
            if(!_loc2_)
            {
               _loc1_.autoSize = TextFieldAutoSize.CENTER;
               if(!_loc2_)
               {
                  stage.addChild(_loc1_);
                  _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
                  _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
                  if(_loc3_)
                  {
                     _loc1_.mouseEnabled = true;
                     if(_loc2_ && _loc3_)
                     {
                     }
                     §§goto(addr119);
                  }
               }
               stage.addEventListener(MouseEvent.CLICK,this.§'!G§);
            }
         }
         addr119:
      }
      
      private function §'!G§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§'!G§);
            if(!_loc2_)
            {
               addr27:
               navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§7!N§);
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§push(this.§7!N§);
                     if(!_loc2_)
                     {
                        addr45:
                        §§push(stage.stageWidth - this.§7!N§.width);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(1);
                           if(!(_loc2_ && this))
                           {
                              §§push(§§pop() >> §§pop());
                              if(_loc3_)
                              {
                                 §§pop().x = §§pop();
                                 §§goto(addr93);
                              }
                              §§pop().y = §§pop();
                              §§goto(addr93);
                           }
                        }
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr93);
            }
            §§goto(addr45);
         }
         addr93:
         if(!_loc2_)
         {
            addr91:
            §§push(this.§7!N§);
            §§push(stage.stageHeight - this.§7!N§.height >> 1);
         }
      }
      
      private function §<#§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            stage.removeEventListener(Event.RESIZE,this.onStageResize);
            if(!_loc3_)
            {
               stage.removeEventListener(MouseEvent.CLICK,this.§<#§);
               if(_loc2_ || this)
               {
                  if(stage.contains(this.§7!N§))
                  {
                     if(!_loc3_)
                     {
                        addr66:
                        stage.removeChild(this.§7!N§);
                        if(_loc2_)
                        {
                           addr72:
                           this.§3V§();
                        }
                     }
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr66);
         }
         §§goto(addr72);
      }
      
      private function §3V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            new §<!7§(this,this.§'v§,this.§>Z§);
         }
      }
      
      protected function §1@§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         §§push(this.§&!>§);
         if(_loc14_)
         {
            if(!§§pop())
            {
               this.§&!>§ = true;
               §§push(0);
               if(_loc14_ || param1)
               {
                  _loc2_ = §§pop();
                  if(_loc14_)
                  {
                     _loc3_ = null;
                     if(_loc14_ || _loc2_)
                     {
                        §§push("");
                        if(_loc14_ || param1)
                        {
                           _loc4_ = §§pop();
                           if(_loc14_ || param1)
                           {
                              addr94:
                              _loc5_ = "-";
                              addr102:
                              _loc6_ = Math.round(getTimer() / 1000);
                              §§push(param1.error is Error);
                              if(!(_loc13_ && param1))
                              {
                                 addr114:
                                 if(§§pop())
                                 {
                                    if(!(_loc13_ && param1))
                                    {
                                       addr122:
                                       §§push(int((_loc10_ = param1.error as Error).errorID));
                                       if(_loc14_ || _loc3_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc14_ || _loc2_)
                                          {
                                             §§push(_loc10_.message);
                                             if(_loc14_ || _loc3_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(_loc10_.getStackTrace());
                                                   if(_loc14_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      addr186:
                                                      §;9§.§<w§(_loc2_,_loc6_);
                                                      §§push(§=w§.§ !H§);
                                                      if(!(_loc13_ && _loc3_))
                                                      {
                                                         if(§§pop() != null)
                                                         {
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               addr210:
                                                               _loc4_ = §=w§.§ !H§.§8!;§();
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc14_)
                                                         {
                                                            §§push(null);
                                                            if(_loc14_)
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        addr241:
                                                                        §§pop();
                                                                        §§push(_loc4_);
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(§§pop().length == 0);
                                                                           if(_loc14_)
                                                                           {
                                                                              addr250:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc13_ && _loc2_))
                                                                                 {
                                                                                    §§push("NoState");
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr269:
                                                                                          §§push(§[4§.§"!>§);
                                                                                          if(!(_loc13_ && param1))
                                                                                          {
                                                                                             addr278:
                                                                                             §§push(§§pop());
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr281:
                                                                                                if((_loc7_ = §§pop()) == null)
                                                                                                {
                                                                                                   if(!(_loc13_ && _loc2_))
                                                                                                   {
                                                                                                      _loc7_ = "";
                                                                                                      if(!(_loc13_ && _loc3_))
                                                                                                      {
                                                                                                         addr301:
                                                                                                         _loc8_ = "GPU";
                                                                                                         if(!(_loc13_ && param1))
                                                                                                         {
                                                                                                            if(§>I§.§`S§ == null)
                                                                                                            {
                                                                                                               if(!(_loc13_ && param1))
                                                                                                               {
                                                                                                                  addr321:
                                                                                                                  _loc8_ = "NULL";
                                                                                                               }
                                                                                                               §§goto(addr480);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr326:
                                                                                                               if(§>I§.§0P§)
                                                                                                               {
                                                                                                                  if(_loc14_ || _loc3_)
                                                                                                                  {
                                                                                                                     addr334:
                                                                                                                     _loc8_ = "CPU";
                                                                                                                     if(_loc13_ && param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr480);
                                                                                                               }
                                                                                                            }
                                                                                                            addr347:
                                                                                                            §§push(_loc2_.toString() + "::");
                                                                                                            §§push(_loc4_);
                                                                                                            if(!(_loc13_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push("::");
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!(_loc13_ && this))
                                                                                                                  {
                                                                                                                     addr368:
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(_loc14_ || param1)
                                                                                                                     {
                                                                                                                        §§push("::");
                                                                                                                        if(_loc14_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc14_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(_loc8_);
                                                                                                                              if(_loc14_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    addr403:
                                                                                                                                    §§push("::");
                                                                                                                                    if(!(_loc13_ && param1))
                                                                                                                                    {
                                                                                                                                       addr411:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc14_ || this)
                                                                                                                                       {
                                                                                                                                          addr464:
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             addr423:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             §§push("::");
                                                                                                                                          }
                                                                                                                                          _loc12_ = §§pop() + §§pop();
                                                                                                                                          if(_loc14_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr474:
                                                                                                                                             §;9§.§"!A§(§-Q§.§?c§,_loc12_,_loc6_);
                                                                                                                                          }
                                                                                                                                          §§goto(addr480);
                                                                                                                                       }
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       §§goto(addr429);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    §§push(§#!3§);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr464);
                                                                                                                                 }
                                                                                                                                 addr429:
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    addr433:
                                                                                                                                    §;9§.§"!A§(§-Q§.§@! §,_loc9_,_loc6_);
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr451);
                                                                                                                                    }
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    if(!(_loc13_ && param1))
                                                                                                                                    {
                                                                                                                                       §§goto(addr464);
                                                                                                                                       §§push(§§pop() + "::");
                                                                                                                                       §§push(_loc3_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr464);
                                                                                                                                 }
                                                                                                                                 addr451:
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 §§goto(addr480);
                                                                                                                              }
                                                                                                                              §§goto(addr464);
                                                                                                                           }
                                                                                                                           §§goto(addr423);
                                                                                                                        }
                                                                                                                        §§goto(addr411);
                                                                                                                     }
                                                                                                                     §§goto(addr403);
                                                                                                                  }
                                                                                                                  §§goto(addr423);
                                                                                                               }
                                                                                                               §§goto(addr411);
                                                                                                            }
                                                                                                            §§goto(addr368);
                                                                                                         }
                                                                                                         §§goto(addr433);
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                   }
                                                                                                   §§goto(addr474);
                                                                                                }
                                                                                                §§goto(addr301);
                                                                                             }
                                                                                             §§goto(addr411);
                                                                                          }
                                                                                          §§goto(addr281);
                                                                                       }
                                                                                       §§goto(addr480);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr281);
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr250);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§goto(addr411);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr334);
                                             }
                                             §§goto(addr411);
                                          }
                                          §§goto(addr451);
                                       }
                                       §§goto(addr347);
                                    }
                                    else
                                    {
                                       addr176:
                                       _loc2_ = int((_loc11_ = param1.error as ErrorEvent).errorID);
                                    }
                                 }
                                 else
                                 {
                                    addr175:
                                    if(param1.error is ErrorEvent)
                                    {
                                       §§goto(addr176);
                                    }
                                 }
                                 §§goto(addr186);
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr94);
               }
               §§goto(addr102);
            }
            addr480:
            return;
         }
         §§goto(addr114);
      }
   }
}
