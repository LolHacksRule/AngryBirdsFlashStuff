package
{
   import §_-0S§.§_-hP§;
   import §_-2J§.§_-3T§;
   import §_-9§.§_-JR§;
   import §_-Aw§.§_-BS§;
   import §_-HU§.§_-yP§;
   import §_-IV§.§_-qW§;
   import §_-OJ§.§_-tL§;
   import §_-Qx§.§_-Sf§;
   import §_-bz§.§_-uC§;
   import §_-e3§.§_-54§;
   import §_-e3§.§_-9Y§;
   import §_-e3§.§_-JN§;
   import §_-hU§.§_-MB§;
   import §_-hq§.§_-AD§;
   import §_-l1§.§_-YO§;
   import §_-rQ§.§_-Ou§;
   import §_-wt§.§_-TQ§;
   import §_-y7§.§_-VA§;
   import §else§.StateCutScene;
   import §else§.StatePlay;
   import §else§.§_-1j§;
   import §else§.§_-D4§;
   import §else§.§_-Jw§;
   import §else§.§_-PC§;
   import §else§.§_-Rk§;
   import §else§.§_-mk§;
   import §else§.§_-nZ§;
   import §else§.§_-pX§;
   import §else§.§_-xb§;
   import §else§.§_-z0§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.MouseEvent;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class §_-Qu§ extends §_-JR§
   {
      
      private static var §_-R9§:Class = §_-5P§;
      
      public static const VERSION:String = "1.0.0.14";
      
      public static var §_-1q§:int = 760;
      
      public static var §_-SP§:int = 570;
      
      public static const §_-49§:Boolean = false;
      
      public static const §_-30§:int = 3000;
      
      public static const §_-BK§:String = "../service";
      
      public static const §_-p2§:String = "../mail";
      
      private static var §_-N5§:Class;
      
      private static var §_-2p§:Class;
      
      private static var §_-Pw§:Class;
      
      private static var §_-K4§:Class;
      
      private static var §_-40§:Class;
      
      public static var §_-di§:§_-YO§ = null;
      
      public static var §_-55§:Boolean = true;
      
      public static var §_-v§:MovieClip = null;
      
      public static var §_-UB§:§_-Qu§ = null;
      
      public static var §_-FD§:Sprite = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-1q§ = 760;
            if(!_loc1_)
            {
               §_-SP§ = 570;
               if(_loc2_ || _loc2_)
               {
                  §_-49§ = false;
                  addr40:
                  §_-30§ = 3000;
                  if(_loc2_)
                  {
                     §_-BK§ = "../service";
                     §_-p2§ = "../mail";
                     if(!(_loc1_ && §_-Qu§))
                     {
                        §_-N5§ = §_-r7§;
                        if(_loc2_)
                        {
                           §_-2p§ = §_-Pb§;
                           if(_loc2_ || _loc2_)
                           {
                              addr80:
                              §_-Pw§ = §_-SG§;
                              §§goto(addr83);
                           }
                        }
                        §§goto(addr96);
                     }
                     addr83:
                     §_-K4§ = §_-VY§;
                     if(_loc2_)
                     {
                        §_-40§ = §_-YN§;
                        §_-di§ = null;
                        if(_loc2_)
                        {
                           addr96:
                           §_-55§ = true;
                           if(_loc2_ || _loc2_)
                           {
                           }
                           §§goto(addr128);
                        }
                        §_-v§ = null;
                        if(_loc2_)
                        {
                           §_-UB§ = null;
                           if(_loc1_ && _loc2_)
                           {
                           }
                        }
                        §§goto(addr128);
                     }
                     addr128:
                     §_-FD§ = null;
                     return;
                  }
                  §§goto(addr80);
               }
               §§goto(addr96);
            }
            §§goto(addr40);
         }
         §§goto(addr96);
      }
      
      public function §_-Qu§(param1:CustomAngryBirdsCanvas)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            Security.allowDomain("http://angrybirds-pepsicomx.appspot.com");
            if(!_loc4_)
            {
               §_-qW§.enabled = true;
               if(_loc5_ || _loc3_)
               {
                  §_-qW§.§_-6h§(§_-qW§.§_-cZ§);
                  if(_loc5_)
                  {
                     addr37:
                     §_-j1§ = §_-1q§;
                     if(_loc4_ && this)
                     {
                     }
                     addr50:
                     var _loc2_:Sprite = new §_-Pw§();
                     if(_loc5_ || this)
                     {
                        super(param1,_loc2_,§_-JN§.§_-Yd§(§_-N5§),§_-JN§.§_-Yd§(§_-2p§));
                        §_-TQ§.init(§_-uC§.§_-V9§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",§_-BS§.§_-BF§(),this.§_-zj§);
                        §_-UB§ = this;
                        stage.scaleMode = StageScaleMode.NO_SCALE;
                        if(!(_loc4_ && param1))
                        {
                           stage.align = StageAlign.TOP_LEFT;
                           if(_loc5_ || param1)
                           {
                              §_-MB§.init(this,§_-1q§,§_-SP§);
                              if(_loc5_)
                              {
                                 addr129:
                                 §_-MB§.§_-A7§ = new §_-tL§(stage);
                                 §_-MB§.§_-Dg§.visible = §_-49§;
                                 §_-13§(new §_-z0§(false));
                                 if(!_loc4_)
                                 {
                                    §_-13§(new §_-mk§(false));
                                    if(_loc5_)
                                    {
                                       §_-13§(new §_-Jw§(false));
                                       addr157:
                                       §_-13§(new §_-pX§(false));
                                       §_-13§(new StatePlay(false));
                                    }
                                    §§goto(addr157);
                                 }
                                 §_-13§(new §_-xb§(false));
                                 if(!_loc4_)
                                 {
                                    §_-13§(new §_-Rk§(false));
                                    if(_loc5_ || _loc3_)
                                    {
                                       §_-13§(new §_-D4§(false));
                                       if(!_loc4_)
                                       {
                                          addr200:
                                          §_-13§(new §_-nZ§(false));
                                          addr205:
                                          §_-13§(new StateCutScene(false));
                                          if(!_loc4_)
                                          {
                                             §_-13§(new §_-1j§(false));
                                             if(!_loc4_)
                                             {
                                                addr219:
                                                §_-13§(new §_-PC§(false));
                                                if(_loc5_ || _loc2_)
                                                {
                                                }
                                                addr241:
                                                §_-54§.§_-WT§(true);
                                                var _loc3_:XMLList = §_-JN§.§_-Yd§(§_-R9§).children();
                                                §_-hP§.init(_loc3_);
                                                stage.showDefaultContextMenu = false;
                                                §_-vM§(true);
                                                §_-Ou§.§_-Rz§("CHANNEL_THEME",1,1);
                                                §_-di§ = new §_-YO§("");
                                                if(!_loc4_)
                                                {
                                                   stage.addEventListener(Event.MOUSE_LEAVE,this.§_-o1§);
                                                   if(!_loc4_)
                                                   {
                                                      addr279:
                                                      stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-tj§);
                                                      stage.addEventListener(Event.RESIZE,this.§_-TU§);
                                                      stage.addEventListener(FullScreenEvent.FULL_SCREEN,this.§_-mo§);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(stage.stageWidth == §_-1q§);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(!§§pop());
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        addr330:
                                                                        §§push(stage.stageHeight == §_-SP§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr344);
                                                                        }
                                                                        addr344:
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr350);
                                                                     }
                                                                     this.§_-TU§(null);
                                                                     §§goto(addr350);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr344);
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   addr350:
                                                   return;
                                                }
                                                §§goto(addr279);
                                             }
                                             §_-54§.§_-H7§(§_-XX§);
                                             if(_loc5_ || _loc3_)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr241);
                                    }
                                    §§goto(addr219);
                                 }
                                 §§goto(addr205);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr200);
                        }
                        §§goto(addr129);
                     }
                     §§goto(addr157);
                  }
                  §_-iZ§ = §_-SP§;
                  §§goto(addr50);
               }
            }
         }
         §§goto(addr37);
      }
      
      public static function §_-vM§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-55§ = param1;
            if(_loc3_)
            {
               §_-Ou§.§_-m1§(§_-55§);
            }
         }
      }
      
      public static function §_-E§() : Boolean
      {
         return §_-55§;
      }
      
      public static function §_-os§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§_-Ou§.§_-g9§("Channel_Theme"));
            if(_loc2_)
            {
               §§push(§§pop() == null);
               if(_loc2_ || _loc1_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_)
                     {
                        §§goto(addr41);
                     }
                  }
                  §§goto(addr58);
               }
               addr41:
               §§pop();
               if(_loc2_)
               {
                  addr47:
                  §§push(§_-Ou§.§_-g9§("Channel_Theme").§_-Z§());
                  if(_loc2_)
                  {
                     §§goto(addr58);
                  }
                  addr58:
                  if(!§§pop())
                  {
                     if(_loc1_)
                     {
                     }
                  }
                  §§goto(addr66);
               }
               §_-Ou§.playSound("ThemeMusic","Channel_Theme",100);
               §§goto(addr66);
            }
            §§goto(addr47);
         }
         addr66:
      }
      
      public static function §_-SQ§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§_-Ou§.§_-g9§("Channel_Theme"));
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr52);
            }
            §§pop().§_-yO§();
         }
         addr52:
         if(_loc2_)
         {
            §§push(§_-Ou§.§_-g9§("Channel_Theme"));
         }
      }
      
      private function §_-zj§(param1:ByteArray) : void
      {
      }
      
      private function §_-o1§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §_-9Y§.§_-i8§();
         }
      }
      
      private function §_-tj§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §_-9Y§.§_-Ud§();
         }
      }
      
      private function §_-TU§(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         §§push(stage.stageWidth / §_-1q§);
         if(_loc7_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(stage.stageHeight / §_-SP§);
         if(_loc7_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         if(!_loc8_)
         {
            if(§§pop() < _loc3_)
            {
               if(_loc7_ || _loc2_)
               {
                  §_-XX§.scaleX = §_-XX§.scaleY = _loc2_;
                  if(_loc7_ || param1)
                  {
                     §_-MB§.§_-ze§(§_-XX§.x,§_-XX§.y,stage.stageWidth,stage.stageWidth * (§_-SP§ / §_-1q§));
                     addr92:
                  }
                  else
                  {
                     addr136:
                     _loc5_ = stage.stageHeight;
                     addr137:
                     §_-MB§.§_-ze§(§_-XX§.x,§_-XX§.y,_loc4_,_loc5_);
                     addr126:
                  }
                  return;
               }
               §§goto(addr92);
            }
            else
            {
               §_-XX§.scaleX = §_-XX§.scaleY = _loc3_;
               §§push(stage.stageHeight * (§_-1q§ / §_-SP§));
               if(_loc7_ || _loc2_)
               {
                  §§push(Number(§§pop()));
                  if(_loc7_)
                  {
                     addr118:
                     _loc4_ = §§pop();
                     if(!(_loc8_ && _loc3_))
                     {
                        §§goto(addr126);
                     }
                     §§goto(addr137);
                  }
               }
            }
            §§goto(addr136);
         }
         §§goto(addr118);
      }
      
      protected function §_-mo§(param1:FullScreenEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-TU§(null);
         }
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.setFirstGameState();
            if(!_loc1_)
            {
               §_-TQ§.packages = null;
               if(_loc2_)
               {
                  §_-Sf§.§_-Do§(§_-AD§.§_-Ae§(§_-BS§.§_-BF§().getFileAsString("Chapters.json")));
                  if(_loc1_)
                  {
                  }
                  §§goto(addr51);
               }
            }
            this.§_-OA§();
         }
         addr51:
      }
      
      private function §_-OA§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = Math.round(getTimer() / 1000);
         if(!_loc3_)
         {
            §_-qW§.§_-6h§(§_-qW§.§_-wV§,_loc1_.toString(),_loc1_);
            if(!(_loc3_ && _loc2_))
            {
               §_-MB§.§_-Zd§(§_-K4§,§_-40§);
               if(!_loc2_)
               {
               }
               §§goto(addr65);
            }
            §_-MB§.§_-Et§(new §_-3T§(),§_-yP§.§_-7Y§(),this.§_-li§);
         }
         addr65:
      }
      
      private function §_-li§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §_-Ld§(§_-mk§.§_-Az§);
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(§_-MB§.§_-Dg§);
            if(!_loc4_)
            {
               if(§§pop() != null)
               {
                  addr35:
                  if(_loc5_)
                  {
                     §§push(§_-MB§.§_-Dg§);
                  }
                  §§push(super.updateState(param1));
                  if(!(_loc4_ && param1))
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc2_:* = §§pop();
                  if(_loc5_ || this)
                  {
                     if(!§_-cO§().isGenericState())
                     {
                        if(!_loc4_)
                        {
                           §§push(_loc2_);
                           if(!_loc4_)
                           {
                              if(§§pop() == §_-VA§.STATE_STATUS_COMPLETED)
                              {
                                 if(_loc5_)
                                 {
                                    §§push(§_-54§);
                                    §§push("AngryBirdSocial::run() state change is about to start. Old State = " + §_-cO§().mName);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + " New State = ");
                                       if(_loc5_)
                                       {
                                          addr87:
                                          §§push(§§pop() + §_-cO§().mNextState);
                                       }
                                       §§pop().log(§§pop());
                                       if(!_loc4_)
                                       {
                                          addr101:
                                          §_-Ld§(§_-cO§().mNextState);
                                          addr107:
                                          return _loc2_;
                                          addr106:
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr87);
                                 }
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr107);
                        }
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr101);
               }
               §§goto(addr35);
            }
            §§pop().update(param1);
         }
         §§goto(addr35);
      }
      
      override public function getAppWidth() : Number
      {
         return §_-1q§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-SP§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-30§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         if(_loc5_)
         {
            if(stage != null)
            {
               if(_loc5_)
               {
                  §§push(stage.loaderInfo.parameters.buildNumber);
                  if(!(_loc4_ && _loc1_))
                  {
                     _loc1_ = §§pop();
                     addr41:
                     §§push(_loc1_);
                     if(_loc5_)
                     {
                        §§push(§§pop() == null);
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(!§§pop());
                           if(_loc5_ || _loc1_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    addr65:
                                    §§pop();
                                    §§goto(addr116);
                                 }
                              }
                              if(§§pop())
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    §§push(int(§§pop().indexOf(".")));
                                    if(!(_loc4_ && this))
                                    {
                                       _loc2_ = §§pop();
                                       addr99:
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          if(§§pop() > 0)
                                          {
                                             §§push(_loc1_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                addr112:
                                                addr116:
                                                §§push(_loc1_);
                                                if(!(_loc4_ && this))
                                                {
                                                   §§push(§§pop().length > 0);
                                                }
                                                _loc1_ = §§pop();
                                                addr118:
                                                _loc3_ = 0;
                                                addr117:
                                                while(true)
                                                {
                                                   if(_loc3_ >= 5)
                                                   {
                                                      if(!(_loc4_ && this))
                                                      {
                                                         addr151:
                                                         §§push(_loc1_);
                                                         if(_loc5_ || this)
                                                         {
                                                            break;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr167:
                                                         §§push(VERSION);
                                                      }
                                                      return §§pop().replace("{svn_version}","local dev build");
                                                   }
                                                   §§push(_loc1_);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(§§pop().replace("-","."));
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         _loc3_++;
                                                         if(!_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      break;
                                                   }
                                                   break;
                                                   §§goto(addr151);
                                                }
                                                return §§pop();
                                                §§push(§§pop().substr(0,_loc2_));
                                             }
                                             §§goto(addr116);
                                          }
                                          §§goto(addr117);
                                       }
                                    }
                                    §§goto(addr118);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr167);
                           }
                        }
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr112);
               }
               §§goto(addr41);
            }
            §§goto(addr167);
         }
         §§goto(addr99);
      }
   }
}
