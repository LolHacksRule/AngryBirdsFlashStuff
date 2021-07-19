package
{
   import § C§.§#,§;
   import § C§.§%'§;
   import § C§.§5V§;
   import § C§.§5m§;
   import § C§.§6]§;
   import § C§.§7!5§;
   import § C§.§8c§;
   import § C§.§>!9§;
   import § C§.§[!;§;
   import §!Y§.§[o§;
   import §0!!§.§,!@§;
   import §0!!§.§46§;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §9!!§.§&a§;
   import §;8§.§]'§;
   import §@!,§.§8!6§;
   import §[n§.§!N§;
   import §[x§.§else§;
   import §]4§.§ !G§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.Stage3D;
   import flash.display.StageQuality;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.getTimer;
   
   public class §^y§ extends AngryBirdsFP11
   {
      
      public static const §=!9§:String = "1.0.0.0 (r95771)";
      
      protected static var §+N§:Class;
      
      protected static var §&!,§:Class;
      
      protected static var §#^§:Class;
      
      protected static var § W§:Class;
      
      public static var get:§^y§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §^y§)
         {
            §=!9§ = "1.0.0.0 (r95771)";
            loop0:
            while(true)
            {
               §+N§ = §8F§;
               loop1:
               do
               {
                  §&!,§ = §"!'§;
                  while(true)
                  {
                     §#^§ = §8C§;
                     while(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           § W§ = §?!0§;
                           if(_loc1_ || _loc2_)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(_loc2_);
               
            }
         }
      }
      
      private var §5$§:String = null;
      
      private var §"A§:String = "";
      
      private var §@9§:Boolean = false;
      
      private var §7!B§:Sprite;
      
      private var §1T§:int = 0;
      
      private var §%T§:Number;
      
      private var §^7§:Number;
      
      public function §^y§(param1:§8!6§, param2:Number, param3:Number)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         this.§%T§ = param2;
         this.§^7§ = param3;
         while(true)
         {
            super(param1);
            get = this;
            while(true)
            {
               param1.stage.quality = StageQuality.MEDIUM;
               if(_loc4_ && param2)
               {
                  break;
               }
               §&a§.initialize(param1.stage);
               if(!(_loc4_ && param3))
               {
                  return;
               }
            }
         }
      }
      
      private function §;!8§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Stage3D = null;
         var _loc1_:* = 0;
         try
         {
            _loc2_ = canvas.stage.stage3Ds[0];
            if(!_loc5_)
            {
               if(_loc2_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     §§push(1);
                     if(!_loc5_)
                     {
                        _loc1_ = §§pop();
                        §§goto(addr87);
                     }
                     if(§§pop() == 0)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           addr87:
                           if(!_loc5_)
                           {
                              addr77:
                              §§push(_loc1_);
                              addr65:
                           }
                           §§push(false);
                           if(!_loc5_)
                           {
                              return §§pop();
                           }
                           §§goto(addr92);
                        }
                        else
                        {
                           addr91:
                           §§push(true);
                        }
                        addr92:
                        return §§pop();
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr87);
         }
         catch(e:Error)
         {
            var _loc3_:* = e;
         }
         §§goto(addr77);
      }
      
      public function §!!=§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §46§.§!t§(param1);
         }
         do
         {
            navigateToURL(new URLRequest("https://apps.facebook.com/angrybirds/?ref=" + param1),"_blank");
         }
         while(_loc3_);
         
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return 1;
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.onEnterFrame(param1);
         }
      }
      
      override protected function initSoundEngine() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@6§.init();
            do
            {
               §@6§.enabled = true;
            }
            while(!_loc1_);
            
         }
      }
      
      override protected function getAssetMap() : XML
      {
         return §]'§.§5P§(§+N§);
      }
      
      override protected function getUIData() : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:XML = super.getUIData();
         var _loc2_:XML = §]'§.§5P§(§&!,§);
         if(_loc4_ || _loc3_)
         {
            this.§'!A§(_loc2_,_loc1_,["Views","Components"],true);
         }
         return _loc1_;
      }
      
      override protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new LoadingScreen();
      }
      
      override protected function getItemData() : XML
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:XML = super.getItemData();
         var _loc2_:XML = §]'§.§5P§(§ W§);
         var _loc3_:Array = ["Item_Materials","Item_Shapes","Item_Resources_Sounds","SoundChannels","Items","Material_Damage_Multipliers","Material_Velocity_Multipliers"];
         if(_loc4_ || _loc1_)
         {
            this.§'!A§(_loc2_,_loc1_,_loc3_);
         }
         return _loc1_;
      }
      
      override protected function getLevelBackgrounds() : XML
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:XML = super.getLevelBackgrounds();
         var _loc2_:XML = §]'§.§5P§(§#^§);
         if(_loc3_)
         {
            this.§'!A§(_loc2_,_loc1_,["Backgrounds"]);
         }
         return _loc1_;
      }
      
      override protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super.initialize();
            while(true)
            {
               this.§5$§ = stage.loaderInfo.parameters.levelId;
               loop1:
               for(; _loc3_ || _loc3_; if(_loc2_ && this)
               {
                  continue;
               },this.§5$§ = "1-1",§§goto(addr75))
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§5$§);
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           addr75:
                           while(true)
                           {
                           }
                           addr75:
                        }
                        while(true)
                        {
                           §§push(stage.loaderInfo.parameters.score);
                           if(_loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §§pop();
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       if(false)
                                       {
                                          continue loop2;
                                       }
                                       §§push("0");
                                    }
                                    else
                                    {
                                       §§goto(addr75);
                                    }
                                 }
                                 break;
                              }
                              §§push(§§pop());
                              break;
                           }
                           break;
                        }
                        var _loc1_:* = §§pop();
                        if(!_loc2_)
                        {
                           this.§1T§ = parseInt(_loc1_);
                           if(this.§1T§ <= 0)
                           {
                              if(_loc3_)
                              {
                                 this.§1T§ = 0;
                                 addr138:
                              }
                              §§goto(addr138);
                           }
                           §-!9§(true);
                           addr144:
                           if(_loc3_)
                           {
                              if(_loc2_ && this)
                              {
                                 §§goto(addr144);
                              }
                              return;
                           }
                        }
                        §§goto(addr138);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      override protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§;!8§())
            {
               this.§7Y§();
               if(_loc1_ || _loc2_)
               {
                  if(!_loc1_)
                  {
                     addr51:
                     §[o§.§='§ = new §else§(stage);
                     addr56:
                  }
                  return;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr51);
      }
      
      private function §7Y§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:TextField = new TextField();
         if(_loc3_ || _loc1_)
         {
            _loc1_.text = "The game doesn\'t yet run on this device";
            _loc1_.textColor = 0;
            while(true)
            {
               _loc1_.selectable = false;
               addr105:
               loop2:
               while(true)
               {
                  _loc1_.width = 300;
                  if(_loc2_)
                  {
                     break;
                  }
                  _loc1_.autoSize = TextFieldAutoSize.CENTER;
                  while(true)
                  {
                     stage.addChild(_loc1_);
                     continue loop2;
                     addr87:
                     _loc1_.x = stage.stageWidth - _loc1_.width >> 1;
                     if(_loc3_)
                     {
                        _loc1_.y = (stage.stageHeight - _loc1_.height >> 1) - 20;
                        if(!_loc2_)
                        {
                           return;
                        }
                        continue loop2;
                        addr70:
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc1_.height = 30;
            §§goto(addr105);
         }
      }
      
      override protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §64§ = new §!N§(§]J§);
         }
      }
      
      override protected function initStates() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §9!2§(new §[!;§(false));
         loop0:
         while(true)
         {
            §9!2§(new §%'§(false));
            §9!2§(new §>!9§(false));
            while(true)
            {
               §9!2§(new §6]§(false,this.§1T§));
               §9!2§(new §#,§(false));
               while(true)
               {
                  §9!2§(new §5m§(false,this.§1T§));
                  if(!(_loc1_ || _loc2_))
                  {
                     break;
                  }
                  if(_loc1_)
                  {
                     §9!2§(new §5V§(false));
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override protected function initStateLoad() : § !G§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§'Q§)
            {
               if(_loc1_ || this)
               {
                  if(!stage.loaderInfo.parameters.assetsUrl)
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        addr39:
                        §46§.§[3§("assetsUrl");
                     }
                  }
               }
               §§goto(addr39);
            }
            §§push(§§findproperty(§7!5§));
            §§push(true);
            §§push(§ !G§.§?B§);
            §§push(this.getMinLoadingScreenTime());
            if(_loc1_ || this)
            {
               §§push(stage.loaderInfo.parameters.assetsUrl);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           addr93:
                           §§pop();
                           addr95:
                           §§push("");
                           §§push(stage.loaderInfo.parameters.buildNumber);
                           if(_loc1_ || this)
                           {
                              return new §§pop().§7!5§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop() || "");
                           }
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr93);
         }
         §§goto(addr39);
      }
      
      override protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         §[h§ = true;
         §§push(this.§5$§);
         if(_loc3_)
         {
            if(§§pop())
            {
               loop0:
               while(true)
               {
                  §§push(§0$§.§5D§(this.§5$§));
                  if(!_loc4_)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                     }
                     addr100:
                  }
                  do
                  {
                     _loc2_ = §§pop();
                     §§push(_loc2_);
                  }
                  while(!(_loc3_ || param1));
                  
                  if(§§pop() != this.§5$§)
                  {
                     §46§.§=L§(this.§5$§);
                     continue;
                  }
                  addr49:
                  while(true)
                  {
                     this.§5$§ = null;
                     do
                     {
                        §&K§(§>!9§.§?B§);
                     }
                     while(_loc4_ && _loc3_);
                     
                     if(_loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr100);
      }
      
      override protected function onStageResize(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§!!A§();
         }
      }
      
      private function §!!A§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = int(Math.round(stage.stageWidth));
         var _loc2_:int = Math.round(stage.stageHeight);
         §§push(_loc1_);
         §§push(20);
         loop0:
         while(true)
         {
            §§push(§§pop() < §§pop());
            §§push(§§pop() < §§pop());
            loop1:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr293:
                     while(true)
                     {
                        §§push(_loc2_);
                        addr279:
                        while(true)
                        {
                           §§push(20);
                           addr280:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                           }
                        }
                     }
                  }
                  addr292:
               }
               while(true)
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(int(§%! §));
                           addr285:
                           while(true)
                           {
                              _loc1_ = §§pop();
                              _loc2_ = §=j§;
                           }
                        }
                        addr283:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              §§push(2);
                              loop11:
                              for(; !_loc3_; while(!(_loc3_ && _loc1_))
                              {
                                 §§goto(addr224);
                                 §§push(§§pop() < §§pop());
                              })
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    §§push(§§pop());
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr226:
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   return;
                                                }
                                                §§goto(addr283);
                                             }
                                             else
                                             {
                                                if(this.§7!B§)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      this.§7!B§.x = this.§%T§ - this.§7!B§.width / this.§7!B§.scaleX >> 1;
                                                      loop19:
                                                      while(true)
                                                      {
                                                         this.§7!B§.y = this.§^7§ - this.§7!B§.height / this.§7!B§.scaleY >> 1;
                                                         this.§7!B§.scaleX = stage.stageWidth / this.§%T§;
                                                         addr168:
                                                         addr271:
                                                         while(_loc4_ || this)
                                                         {
                                                            this.§7!B§.scaleY = stage.stageHeight / this.§^7§;
                                                            if(_loc3_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               addr96:
                                                               §[o§.§6g§(0,0,_loc1_,_loc2_);
                                                               setViewSize(_loc1_,_loc2_);
                                                               do
                                                               {
                                                                  this.§ null§(_loc1_,_loc2_);
                                                               }
                                                               while(_loc3_);
                                                               
                                                               if(_loc4_)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr39:
                                                                     §%! § = _loc1_;
                                                                     if(!_loc3_)
                                                                     {
                                                                        §=j§ = _loc2_;
                                                                        return;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(int(Math.round(_loc2_ * (25 / 12))));
                                                                     addr130:
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        if(!(_loc4_ || this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop19;
                                                                     §§goto(addr96);
                                                                  }
                                                                  addr122:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr293);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr215:
                                                            while(true)
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§goto(addr168);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(!(_loc3_ && this))
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc3_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(§§pop() / §§pop() <= 25 / 12)
                                                         {
                                                            continue loop17;
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr130);
                                                }
                                                §§goto(addr215);
                                             }
                                          }
                                       }
                                       addr224:
                                    }
                                    §§goto(addr268);
                                 }
                                 else
                                 {
                                    §§goto(addr292);
                                 }
                              }
                              §§goto(addr280);
                           }
                           break;
                        }
                        §§goto(addr285);
                     }
                     §§goto(addr279);
                  }
               }
            }
         }
      }
      
      public function § null§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §&a§.setViewSize(param1,param2);
         }
      }
      
      protected function §'!A§(param1:XML, param2:XML, param3:Array, param4:Boolean = false) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         for each(_loc5_ in param3)
         {
            if(!(_loc12_ && param2))
            {
               var _loc9_:int = 0;
               if(_loc11_)
               {
                  for each(_loc6_ in param1[_loc5_].§*§)
                  {
                     if(!(_loc12_ && this))
                     {
                        §§push(param4);
                        if(!(_loc12_ && param2))
                        {
                           if(§§pop())
                           {
                              if(!_loc12_)
                              {
                                 addr102:
                                 delete param2[_loc5_][_loc6_.name()];
                                 if(_loc12_ && param1)
                                 {
                                    continue;
                                 }
                              }
                           }
                           param2[_loc5_].appendChild(_loc6_);
                           continue;
                        }
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(_loc2_)
         {
            return §§pop() + §=!9§.replace("{svn_version}","local dev build");
         }
      }
      
      override protected function initializeGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(_loc2_ || _loc1_)
         {
            §46§.§3!7§(§,!@§.§`!9§,_loc1_.toString(),_loc1_);
            while(true)
            {
               this.§@9§ = true;
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            super.initializeGame();
            if(!(_loc3_ && _loc3_))
            {
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.onKeyDown(param1);
            §§push(this.§"A§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     this.§"A§ = String.fromCharCode(param1.keyCode);
                  }
               }
               else
               {
                  this.§"A§ += String.fromCharCode(param1.keyCode);
                  addr93:
                  while(true)
                  {
                  }
                  addr93:
               }
               while(true)
               {
                  this.§"A§ = this.§"A§.toLowerCase();
                  continue loop0;
                  §§goto(addr93);
               }
            }
         }
         §§goto(addr93);
      }
      
      override public function externalPause() : void
      {
      }
      
      override public function externalResume() : void
      {
      }
   }
}
