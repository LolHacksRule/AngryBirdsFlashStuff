package
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §0!!§.§,!@§;
   import §0!!§.§46§;
   import §3"§.§0$§;
   import §@!,§.§8!6§;
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
   
   public class AngryBirdsKimiCanvas extends §8!6§
   {
      
      public static const §=!9§:String = "1.0.0.0 (r95771)";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §=!9§ = "1.0.0.0 (r95771)";
         }
      }
      
      private var §=m§:Boolean = false;
      
      private var §%T§:Number;
      
      private var §^7§:Number;
      
      public function AngryBirdsKimiCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               if(!stage)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     addr67:
                  }
                  else
                  {
                     addr80:
                  }
               }
               continue;
               return;
            }
            while(!(_loc2_ || _loc1_));
            
            this.init();
            §§goto(addr80);
         }
         §§goto(addr67);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%T§ = stage.stageWidth;
            loop0:
            while(true)
            {
               this.§^7§ = stage.stageHeight;
               §,!@§.§4g§(stage,"UA-23082676-22");
               loop1:
               while(true)
               {
                  §,!@§.enabled = true;
                  do
                  {
                     if(_loc1_ || _loc1_)
                     {
                        §46§.§[!2§();
                        if(loaderInfo.bytesLoaded >= loaderInfo.bytesTotal)
                        {
                           this.§;=§();
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           if(!(_loc2_ && this))
                           {
                              addr19:
                              return;
                              addr42:
                           }
                        }
                        if(_loc1_)
                        {
                           loaderInfo.addEventListener(Event.COMPLETE,this.§%D§);
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  while(!(_loc1_ || this));
                  
                  §§goto(addr19);
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §1!G§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§1!G§);
            do
            {
               this.init();
            }
            while(!_loc3_);
            
         }
      }
      
      private function §%D§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            loaderInfo.removeEventListener(Event.COMPLETE,this.§%D§);
         }
         do
         {
            this.§;=§();
         }
         while(!_loc3_);
         
      }
      
      protected function §;=§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §46§.§3!7§(§,!@§.§ E§);
            if(!(_loc2_ && _loc1_))
            {
               loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.§4E§);
            }
         }
         var _loc1_:ContextMenu = new ContextMenu();
         if(!(_loc2_ && this))
         {
            _loc1_.hideBuiltInItems();
            this.contextMenu = _loc1_;
            if(!ApplicationDomain.currentDomain.hasDefinition("flash.display.Stage3D"))
            {
               this.§3!8§();
               if(_loc2_)
               {
                  loop0:
                  for(; !_loc2_; while(true)
                  {
                     if(!stage.loaderInfo.parameters.paused)
                     {
                        break loop0;
                     }
                     this.§[G§();
                     continue loop0;
                  })
                  {
                     if(_loc2_)
                     {
                        continue;
                     }
                     addr63:
                  }
                  this.§[G§();
                  §§goto(addr63);
                  addr104:
               }
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr104);
      }
      
      private function §3!8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:TextField = new TextField();
         if(_loc2_)
         {
            _loc1_.text = "Please install Flash 11 to play";
            _loc1_.textColor = 0;
         }
         _loc1_.selectable = false;
         loop0:
         do
         {
            _loc1_.height = 30;
            loop1:
            while(true)
            {
               _loc1_.width = 250;
               _loc1_.autoSize = TextFieldAutoSize.CENTER;
               stage.addChild(_loc1_);
               do
               {
                  _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
                  do
                  {
                     _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
                     continue loop1;
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
               continue loop0;
            }
         }
         while(stage.addEventListener(MouseEvent.CLICK,this.§%E§), _loc3_ && this);
         
      }
      
      private function §%E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            stage.removeEventListener(MouseEvent.CLICK,this.§%E§);
            do
            {
               navigateToURL(new URLRequest("http://get.adobe.com/flashplayer/"),"_blank");
            }
            while(_loc3_);
            
         }
      }
      
      private function onStageResize(param1:Event) : void
      {
      }
      
      private function §[G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            new §^y§(this,this.§%T§,this.§^7§);
         }
      }
      
      protected function §4E§(param1:UncaughtErrorEvent) : void
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:* = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:Error = null;
         var _loc11_:ErrorEvent = null;
         var _loc12_:String = null;
         if(_loc14_ || this)
         {
            §§push(this.§=m§);
            if(_loc14_)
            {
               if(!§§pop())
               {
                  this.§=m§ = true;
                  §§push(0);
                  while(true)
                  {
                     _loc2_ = §§pop();
                     addr108:
                     while(true)
                     {
                        _loc3_ = null;
                        §§push("");
                        loop37:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr99:
                           while(true)
                           {
                              continue loop37;
                           }
                        }
                     }
                     §§push(int(Math.round(getTimer() / 1000)));
                     if(_loc13_ && _loc2_)
                     {
                        continue;
                     }
                     _loc6_ = §§pop();
                     if(!_loc13_)
                     {
                        if(false)
                        {
                           §§goto(addr76);
                        }
                        §§push(param1.error is Error);
                        if(_loc14_ || _loc2_)
                        {
                           addr129:
                           if(§§pop())
                           {
                              §§push(int((_loc10_ = param1.error as Error).errorID));
                              if(_loc14_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc14_)
                                 {
                                    _loc5_ = _loc10_.message;
                                    if(!_loc13_)
                                    {
                                       _loc3_ = _loc10_.getStackTrace();
                                       if(_loc14_ || _loc2_)
                                       {
                                          addr177:
                                          §46§.§>3§(_loc2_,_loc6_);
                                          §§push(§[o§.§&6§);
                                          if(_loc14_)
                                          {
                                             if(§§pop() != null)
                                             {
                                                if(!(_loc13_ && _loc3_))
                                                {
                                                   addr522:
                                                   §§push(§[o§.§&6§.§-! §());
                                                   while(true)
                                                   {
                                                      _loc4_ = §§pop();
                                                   }
                                                   addr524:
                                                }
                                                while(true)
                                                {
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                §§push(null);
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(!(_loc13_ && _loc2_))
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            addr506:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               addr467:
                                                               while(true)
                                                               {
                                                                  addr470:
                                                                  §§push(§§pop().length == 0);
                                                                  if(!(_loc13_ && _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop17;
                                                               }
                                                            }
                                                         }
                                                         addr505:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            _loc4_ = "NoState";
                                                            addr481:
                                                            while(true)
                                                            {
                                                            }
                                                            addr481:
                                                         }
                                                         addr443:
                                                         while(true)
                                                         {
                                                            §§push(§0$§.§[C§);
                                                            addr446:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr447:
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_ = §§pop());
                                                                  if(!_loc14_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                         }
                                                         §§goto(addr470);
                                                      }
                                                   }
                                                   §§goto(addr505);
                                                }
                                             }
                                          }
                                          §§goto(addr522);
                                       }
                                       §§goto(addr428);
                                    }
                                    §§goto(addr296);
                                 }
                                 §§goto(addr481);
                              }
                              §§goto(addr299);
                           }
                           else
                           {
                              addr166:
                              if(param1.error is ErrorEvent)
                              {
                                 _loc2_ = int((_loc11_ = param1.error as ErrorEvent).errorID);
                              }
                           }
                           §§goto(addr177);
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr526);
            }
            §§goto(addr129);
         }
         §§goto(addr108);
      }
   }
}
