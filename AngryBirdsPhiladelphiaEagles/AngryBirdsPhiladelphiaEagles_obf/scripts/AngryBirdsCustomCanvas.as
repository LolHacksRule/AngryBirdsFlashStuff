package
{
   import §0!E§.§-<§;
   import §0!E§.§3"§;
   import §5Z§.§[Z§;
   import §8!B§.§#! §;
   import §9P§.§'B§;
   import §@B§.§8V§;
   import §^]§.§`!K§;
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
   
   public class AngryBirdsCustomCanvas extends §'B§
   {
      
      public static const §-p§:int = 570;
      
      public static const §5!9§:int = 380;
      
      public static const §'S§:String = "0.0.1.0 (r98915)";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-p§ = 570;
            while(true)
            {
               §5!9§ = 380;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            §'S§ = "0.0.1.0 (r98915)";
            if(_loc2_ || _loc1_)
            {
               if(!(_loc1_ && AngryBirdsCustomCanvas))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §8Q§:Boolean = false;
      
      private var §=!0§:Number;
      
      private var §?2§:Number;
      
      public function AngryBirdsCustomCanvas()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               if(stage)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue;
               }
               addEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
            }
            while(_loc1_);
            
            §§goto(addr19);
         }
         addr19:
      }
      
      private function init() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:String = §8V§.§^^§("window.location.href.toString");
         if(_loc3_ || _loc2_)
         {
            if(_loc1_.indexOf(".swf") < 0)
            {
               loop0:
               while(true)
               {
                  this.§=!0§ = stage.stageWidth;
                  loop1:
                  while(true)
                  {
                     this.§?2§ = stage.stageHeight;
                     while(true)
                     {
                        §3"§.§7&§(stage,"UA-23082676-22");
                        while(!(_loc2_ && _loc1_))
                        {
                           §3"§.enabled = true;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 throw new Error("Cannot be viewed directly.");
                              }
                              addr137:
                              §-<§.§8!!§();
                              if(loaderInfo.bytesLoaded < loaderInfo.bytesTotal)
                              {
                                 continue;
                              }
                              this.§]!1§();
                              if(_loc3_ || this)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           return;
                        }
                     }
                  }
                  addr141:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            §§goto(addr137);
         }
         §§goto(addr141);
      }
      
      private function §+!F§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§+!F§);
            do
            {
               this.init();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private function §-!?§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§-!?§);
            do
            {
               this.§]!1§();
            }
            while(_loc2_);
            
         }
      }
      
      protected function §]!1§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc1_)
         {
            §-<§.§>v§(§3"§.§8`§);
            if(_loc3_ || _loc1_)
            {
               loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§3s§);
            }
         }
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         do
         {
            this.contextMenu = _loc1_;
            while(true)
            {
               if(!ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
               {
                  this.§ !6§();
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!(_loc3_ || this))
                     {
                        addr119:
                     }
                     return;
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               if(stage.loaderInfo.parameters.paused)
               {
                  this.§6"§();
                  break;
               }
               this.§6"§();
               §§goto(addr119);
            }
         }
         while(_loc2_);
         
         §§goto(addr119);
      }
      
      private function § !6§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         _loc1_.text = "Please install Flash 11 to play";
         loop0:
         while(true)
         {
            _loc1_.textColor = 0;
            while(true)
            {
               _loc1_.selectable = false;
               do
               {
                  _loc1_.height = 30;
               }
               while(!(_loc3_ || _loc3_));
               
               _loc1_.width = 250;
               while(true)
               {
                  _loc1_.autoSize = TextFieldAutoSize.CENTER;
                  stage.addChild(_loc1_);
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
                  addr83:
                  _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
                  _loc1_.mouseEnabled = true;
                  do
                  {
                     stage.addEventListener(MouseEvent.CLICK,this.§@T§);
                  }
                  while(_loc2_ && this);
                  
                  if(!_loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §@T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§@T§);
            do
            {
               navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
            }
            while(_loc3_ && this);
            
         }
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §6"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            new §!D§(this,this.§=!0§,this.§?2§);
         }
      }
      
      protected function §3s§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(_loc14_ || _loc2_)
         {
            §§push(this.§8Q§);
            if(_loc14_ || param1)
            {
               if(!§§pop())
               {
                  this.§8Q§ = true;
                  §§push(0);
                  loop0:
                  while(true)
                  {
                     _loc2_ = §§pop();
                     _loc3_ = null;
                     if(!_loc14_)
                     {
                        break;
                     }
                     §§push("");
                     while(true)
                     {
                        _loc4_ = §§pop();
                        if(_loc13_ && _loc3_)
                        {
                           break;
                           addr69:
                        }
                        while(true)
                        {
                           §§push("-");
                           if(_loc13_)
                           {
                              break;
                           }
                           _loc5_ = §§pop();
                           continue loop0;
                        }
                     }
                     §§push(int((_loc10_ = param1.error as Error).errorID));
                     if(_loc14_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        §§push(_loc10_.message);
                        if(!(_loc13_ && param1))
                        {
                           _loc5_ = §§pop();
                           _loc3_ = _loc10_.getStackTrace();
                           if(!(_loc13_ && _loc3_))
                           {
                              addr178:
                              §-<§.§]S§(_loc2_,_loc6_);
                              §§push(§#! §.§ A§);
                              if(!_loc13_)
                              {
                                 if(§§pop() != null)
                                 {
                                    while(true)
                                    {
                                       §§push(§#! §.§ A§);
                                       addr512:
                                       while(true)
                                       {
                                          §§push(§§pop().§,x§());
                                          addr514:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                          }
                                       }
                                    }
                                    addr510:
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(null);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop7:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(_loc4_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().length == 0);
                                                         addr470:
                                                         do
                                                         {
                                                            if(!(_loc14_ || _loc3_))
                                                            {
                                                               continue loop8;
                                                            }
                                                         }
                                                         while(!_loc13_);
                                                         
                                                         continue loop7;
                                                         addr237:
                                                         if(!(_loc14_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(§§pop() + "::");
                                                         if(!(_loc13_ && param1))
                                                         {
                                                            if(_loc14_)
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc13_)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           if(!(_loc13_ && _loc2_))
                                                                           {
                                                                              addr283:
                                                                              _loc12_ = §§pop() + §§pop();
                                                                              if(_loc14_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §-<§.§>v§(§3"§.§]#§,_loc12_,_loc6_);
                                                                                    if(_loc14_ || param1)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                   {
                                                                                                      if(!(_loc13_ && this))
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            §§goto(addr516);
                                                                                                         }
                                                                                                         §§push(_loc9_);
                                                                                                         if(_loc14_ || _loc3_)
                                                                                                         {
                                                                                                            addr230:
                                                                                                            if(_loc14_ || _loc2_)
                                                                                                            {
                                                                                                               §§goto(addr237);
                                                                                                            }
                                                                                                            loop34:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(null);
                                                                                                               if(!(_loc13_ && _loc2_))
                                                                                                               {
                                                                                                                  if(§§pop() == §§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push("");
                                                                                                                        addr461:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           addr462:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 continue loop9;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr460:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push("GPU");
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        if(!(_loc14_ || param1))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(§[Z§.§%m§ != null)
                                                                                                                        {
                                                                                                                           §§push(§[Z§.§-D§);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr443:
                                                                                                                                 §§push("CPU");
                                                                                                                                 loop23:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc14_ || this))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc8_ = "NULL";
                                                                                                                                             }
                                                                                                                                             addr429:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr416:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr461);
                                                                                                                                    }
                                                                                                                                    addr365:
                                                                                                                                    if(!(_loc14_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push("::");
                                                                                                                                    if(_loc14_ || this)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr381:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                             addr382:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr383:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc14_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push("::");
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr494:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                         break loop23;
                                                                                                                                                      }
                                                                                                                                                      addr494:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr380:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       addr392:
                                                                                                                                       addr400:
                                                                                                                                       while(_loc13_ && param1)
                                                                                                                                       {
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       _loc9_ = §§pop() + §'S§;
                                                                                                                                       loop33:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §-<§.§>v§(§3"§.§>-§,_loc9_,_loc6_);
                                                                                                                                          addr294:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc14_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             continue loop33;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§`!K§.§5g§);
                                                                                                                                    addr446:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr447:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_ = §§pop());
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr494);
                                                                                                                                 }
                                                                                                                                 addr443:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 addr304:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().toString() + "::");
                                                                                                                                    if(!(_loc13_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       if(!(_loc13_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             §§push("::");
                                                                                                                                             if(_loc14_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   addr336:
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      addr340:
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      §§push("::");
                                                                                                                                                      if(_loc14_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr348:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc14_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(_loc14_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr365);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr392);
                                                                                                                                                            }
                                                                                                                                                            addr357:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr383);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr380);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr382);
                                                                                                                                                }
                                                                                                                                                §§goto(addr340);
                                                                                                                                             }
                                                                                                                                             §§goto(addr348);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr340);
                                                                                                                                    }
                                                                                                                                    §§goto(addr336);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr470);
                                                                                                                           }
                                                                                                                           §§goto(addr443);
                                                                                                                        }
                                                                                                                        §§goto(addr429);
                                                                                                                     }
                                                                                                                     §§goto(addr462);
                                                                                                                  }
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr283);
                                                                                                      }
                                                                                                      §§goto(addr447);
                                                                                                   }
                                                                                                   §§goto(addr230);
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr516);
                                                                                          }
                                                                                          §§goto(addr460);
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 addr286:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc13_)
                                                                                 {
                                                                                    §§goto(addr494);
                                                                                    §§push("NoState");
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr510);
                                                                                 }
                                                                              }
                                                                              continue loop4;
                                                                              addr491:
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr400);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               §§goto(addr392);
                                                            }
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr283);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§goto(addr491);
                                                }
                                                §§goto(addr443);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr512);
                           }
                           §§goto(addr286);
                        }
                        §§goto(addr446);
                     }
                     §§goto(addr304);
                  }
                  _loc2_ = int((_loc11_ = param1.error as ErrorEvent).errorID);
                  §§goto(addr178);
               }
               addr516:
               return;
            }
            §§goto(addr167);
         }
         §§goto(addr74);
      }
   }
}
