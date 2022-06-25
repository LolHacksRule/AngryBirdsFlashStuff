package
{
   import §_-0AB§.§_-cx§;
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-Hy§;
   import §_-0BH§.§_-ZE§;
   import §_-0DG§.§_-09t§;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-pX§;
   import §_-Ga§.LevelManager;
   import §_-Hb§.§_-ok§;
   import §_-TG§.§_-00u§;
   import §_-aC§.§_-ML§;
   import §_-ad§.StateCutScene;
   import §_-ad§.StatePlay;
   import §_-ad§.§_-00w§;
   import §_-ad§.§_-05N§;
   import §_-ad§.§_-07g§;
   import §_-ad§.§_-08C§;
   import §_-ad§.§_-08x§;
   import §_-ad§.§_-7A§;
   import §_-ad§.§_-MG§;
   import §_-ad§.§_-Rp§;
   import §_-ad§.§_-UO§;
   import §_-ad§.§_-iz§;
   import §_-ad§.§_-rF§;
   import §_-dX§.§_-03L§;
   import §_-jn§.§_-G2§;
   import §_-jn§.§_-hS§;
   import §_-qO§.§ in§;
   import §_-qO§.§_-T0§;
   import §_-ry§.§_-00s§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-0BK§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageDisplayState;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class AngryBirdsFP11 extends §_-G2§
   {
      
      protected static var §_-0BW§:Class;
      
      public static const VERSION:String = "0.0.1.({svn_version})";
      
      public static var §_-3T§:String;
      
      public static var §_-08Q§:String;
      
      public static const §_-W8§:int = 1024;
      
      public static const §_-Kj§:int = 768;
      
      public static const §_-LI§:Boolean = false;
      
      public static const §_-4s§:int = 2000;
      
      public static const §_-0EL§:Boolean = false;
      
      private static const §_-GL§:int = 750;
      
      private static const §_-OW§:int = 3;
      
      private static const §_-B1§:int = 15;
      
      protected static var §_-zc§:Class;
      
      protected static var §_-X7§:Class;
      
      protected static var §_-vt§:Class;
      
      protected static var §_-xP§:Class;
      
      public static var sUserProgress:§_-00s§ = null;
      
      public static var §_-gR§:Boolean = true;
      
      private static var §_-rY§:AngryBirdsFP11 = null;
      
      public static var §_-SK§:Sprite = null;
      
      public static var §_-Z§:§_-T0§;
      
      public static var §_-pL§:Boolean = false;
      
      protected static var §_-pO§:int = 0;
      
      protected static var §_-02I§:int = 0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-0BW§ = AngryBirdsFP11_mTextBinary;
            while(true)
            {
               VERSION = "0.0.1.({svn_version})";
               while(true)
               {
                  §_-W8§ = 1024;
                  loop2:
                  while(true)
                  {
                     §_-Kj§ = 768;
                     addr207:
                     while(true)
                     {
                        §_-LI§ = false;
                        loop4:
                        while(true)
                        {
                           §_-4s§ = 2000;
                           addr197:
                           while(true)
                           {
                              §_-0EL§ = false;
                              addr192:
                              while(true)
                              {
                                 §_-GL§ = 750;
                                 addr187:
                                 while(true)
                                 {
                                    §_-OW§ = 3;
                                    addr172:
                                    while(true)
                                    {
                                       §_-B1§ = 15;
                                       continue loop2;
                                       addr136:
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      private var §_-SF§:§_-ML§;
      
      private var §_-lD§:int;
      
      private var §_-04g§:Boolean;
      
      private var §_-ao§:int;
      
      private var §_-By§:int;
      
      protected var §_-aR§:Boolean;
      
      public function AngryBirdsFP11(param1:§_-hS§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-SF§ = new §_-ML§();
            while(true)
            {
               super(param1,this.getLoadingScreen(),this.getUIData(),this.getAssetMap());
               loop1:
               while(!(_loc3_ && _loc2_))
               {
                  this.initialize();
                  while(true)
                  {
                     this.initStates();
                     loop3:
                     while(!_loc3_)
                     {
                        §§push(stage.stageWidth == §_-Uj§);
                        loop4:
                        while(true)
                        {
                           §§push(!§§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          this.onStageResize(null);
                                       }
                                       else
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(stage.stageHeight == §_-06d§);
                                             if(!_loc3_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop4;
                                                continue loop5;
                                             }
                                             addr89:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop7;
                                             }
                                          }
                                          addr90:
                                       }
                                    }
                                    break;
                                 }
                                 return;
                                 addr45:
                              }
                           }
                           §§goto(addr89);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public static function get stageWidth() : int
      {
         return §_-pO§;
      }
      
      public static function get stageHeight() : int
      {
         return §_-02I§;
      }
      
      public static function §_-mv§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §_-gR§ = param1;
         }
         do
         {
            §_-pX§.§_-bg§(§_-gR§);
         }
         while(!_loc3_);
         
      }
      
      public static function §_-Lz§() : Boolean
      {
         return §_-gR§;
      }
      
      public static function get §_-Uj§() : int
      {
         return §_-07§.getAppWidth();
      }
      
      public static function get §_-06d§() : int
      {
         return §_-07§.getAppHeight();
      }
      
      public static function playThemeMusic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§_-pX§.§_-BM§("Channel_Theme"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(_loc2_ || AngryBirdsFP11)
               {
                  if(§§pop())
                  {
                     while(§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §_-pX§.playSound("ThemeMusic","Channel_Theme",999);
                        }
                        if(_loc2_)
                        {
                           break;
                        }
                        §§push(§§pop().§_-3t§());
                        addr35:
                        continue loop0;
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(!(_loc1_ && _loc1_))
                        {
                           continue;
                        }
                        addr97:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr35);
                        }
                        addr97:
                     }
                     return;
                     addr56:
                  }
               }
               §§goto(addr97);
            }
            addr86:
         }
         while(true)
         {
            §§push(§_-pX§.§_-BM§("Channel_Theme"));
            if(!(_loc1_ && _loc2_))
            {
               §§goto(addr35);
            }
            else
            {
               §§goto(addr86);
            }
            §§goto(addr97);
         }
      }
      
      public static function §_-8§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-pX§.§_-0B7§("Channel_Theme");
         }
      }
      
      public static function get §_-07§() : AngryBirdsFP11
      {
         return §_-rY§;
      }
      
      protected function getAssetMap() : XML
      {
         return §_-ZE§.§_-ve§(§_-X7§);
      }
      
      protected function getUIData() : XML
      {
         return §_-ZE§.§_-ve§(§_-zc§);
      }
      
      protected function getLoadingScreen() : DisplayObjectContainer
      {
         return new Sprite();
      }
      
      protected function initialize() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-03L§.§_-3S§.init(§_-ok§.§_-Ji§(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "",this.§_-SF§,this.§_-fH§);
            while(true)
            {
               §_-rY§ = this;
               addr109:
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
                  addr104:
                  while(true)
                  {
                     stage.align = StageAlign.TOP_LEFT;
                  }
               }
            }
            addr147:
         }
         while(true)
         {
            §_-Jg§ = §_-Uj§;
            loop4:
            while(true)
            {
               §_-4a§ = §_-06d§;
               while(true)
               {
                  § in§.init(this,§_-Uj§,§_-06d§);
                  addr75:
                  while(_loc3_ || this)
                  {
                     this.initLevelMain();
                     while(true)
                     {
                        § in§.§_-Cv§.visible = false;
                        continue loop4;
                     }
                  }
               }
            }
            if(_loc2_ && _loc3_)
            {
               continue;
            }
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  if(false)
                  {
                     §§goto(addr43);
                  }
                  var _loc1_:XMLList = §_-ZE§.§_-ve§(§_-0BW§).children();
                  if(_loc3_ || _loc1_)
                  {
                     §_-0BK§.init(_loc1_);
                     §_-pX§.§_-UJ§("CHANNEL_THEME",1,1);
                     §_-pX§.§_-UJ§("CHANNEL_AMBIENT",1,1);
                     addr293:
                     addr289:
                  }
                  this.initUserProgress();
                  stage.addEventListener(Event.MOUSE_LEAVE,this.§_-06h§);
                  addr282:
                  if(!(_loc2_ && _loc2_))
                  {
                     stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§_-0AC§);
                     stage.addEventListener(Event.RESIZE,this.onStageResize);
                     addr236:
                     addr246:
                     if(!_loc2_)
                     {
                        stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown);
                        addr221:
                        if(_loc3_ || this)
                        {
                           §_-Z§ = new §_-T0§(stage);
                           addr204:
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§push(§_-cx§.§_-3S§);
                                 §§push(§_-LI§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(!§§pop());
                                 }
                                 §§pop().§_-JH§ = §§pop();
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             §§goto(addr282);
                                          }
                                          return;
                                       }
                                       §§goto(addr282);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr293);
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr289);
                  }
                  addr275:
                  §§goto(addr275);
               }
               §§goto(addr109);
            }
            §§goto(addr104);
         }
      }
      
      protected function initLevelMain() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            § in§.§_-Dc§ = new §_-00u§(stage);
         }
      }
      
      protected function initUserProgress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            sUserProgress = new §_-00s§(§_-08Q§);
         }
      }
      
      protected function initStates() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-pP§(new §_-00w§(false));
            while(true)
            {
               §_-pP§(new §_-MG§(false));
               while(true)
               {
                  §_-pP§(new §_-05N§(false));
                  loop2:
                  while(true)
                  {
                     §_-pP§(new §_-Rp§(false));
                     loop3:
                     while(true)
                     {
                        §_-pP§(new §_-UO§(false));
                        loop4:
                        while(true)
                        {
                           §_-pP§(new StatePlay(false));
                           while(_loc2_)
                           {
                              §_-pP§(new §_-08C§(false));
                              continue loop4;
                              while(_loc2_ || this)
                              {
                                 §_-pP§(new §_-iz§(false));
                                 while(true)
                                 {
                                    §_-pP§(new §_-rF§(false));
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr20);
            }
         }
         while(true)
         {
            §_-pP§(new §_-08x§(false));
            §§goto(addr164);
         }
      }
      
      protected function §_-fH§(param1:ByteArray) : void
      {
      }
      
      protected function §_-06h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §_-Hy§.§_-ih§();
         }
      }
      
      protected function §_-0AC§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            §_-Hy§.§_-03u§();
            if(!_loc5_)
            {
               if(this.§_-04g§)
               {
                  if(!_loc5_)
                  {
                     addr32:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§_-By§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc2_.§_-By§ = _loc3_;
                     }
                     if(_loc4_)
                     {
                        §§push(this.§_-By§);
                        loop2:
                        while(true)
                        {
                           §§push(§_-B1§);
                           loop3:
                           while(true)
                           {
                              if(§§pop() > §§pop())
                              {
                                 loop0:
                                 while(true)
                                 {
                                    this.§_-04g§ = false;
                                    while(true)
                                    {
                                       §§push(this.§_-ao§);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§_-OW§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         this.§_-0B3§(this.§_-lD§);
                                                         addr103:
                                                         break loop0;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr103);
                                             }
                                             break loop0;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 addr108:
                              }
                              §§goto(addr61);
                           }
                        }
                     }
                  }
                  §§goto(addr103);
               }
               addr61:
               return;
            }
            §§goto(addr108);
         }
         §§goto(addr32);
      }
      
      public function §_-PO§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.onStageResize(null);
         }
      }
      
      protected function onStageResize(param1:Event) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_ || _loc2_)
         {
            §§push(this.§_-aR§);
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(stage.stageWidth < 2);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(!_loc6_)
                        {
                           §§pop();
                           while(true)
                           {
                              §§push(stage.stageHeight < 2);
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                              if(!(_loc7_ || _loc2_))
                              {
                                 break;
                              }
                              addr55:
                              if(!(_loc7_ || param1))
                              {
                                 continue;
                              }
                              if(!(_loc7_ || _loc2_))
                              {
                                 continue loop1;
                              }
                              if(false)
                              {
                                 continue loop1;
                              }
                              addr87:
                              §§push(stage.stageWidth / §_-Uj§);
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc2_:* = §§pop();
                              §§push(stage.stageHeight / §_-06d§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              if(_loc7_)
                              {
                                 addr235:
                                 if(_loc2_ >= _loc3_)
                                 {
                                    §§push(stage.stageHeight * (§_-Uj§ / §_-06d§));
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          if(_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§goto(addr235);
                                             }
                                             addr222:
                                             _loc4_ = Number(§§pop());
                                             addr223:
                                             §§push(Number(stage.stageHeight));
                                             if(_loc7_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   _loc5_ = §§pop();
                                                   addr186:
                                                   if(!_loc6_)
                                                   {
                                                      addr167:
                                                      § in§.§_-82§(0,0,stage.stageWidth,stage.stageHeight);
                                                      setViewSize(stage.stageWidth,stage.stageHeight);
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §_-pO§ = stage.stageWidth;
                                                            addr140:
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc6_ && _loc2_))
                                                               {
                                                                  §_-02I§ = stage.stageHeight;
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr167);
                                                                        addr233:
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr140);
                                                               }
                                                               addr232:
                                                               _loc5_ = Number(stage.stageWidth * (§_-06d§ / §_-Uj§));
                                                               addr231:
                                                               §§goto(addr233);
                                                               addr243:
                                                            }
                                                            §§goto(addr167);
                                                         }
                                                         §§goto(addr186);
                                                      }
                                                      addr176:
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                addr242:
                                                _loc4_ = §§pop();
                                                §§goto(addr243);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr231);
                                       }
                                       §§goto(addr232);
                                    }
                                    §§goto(addr222);
                                 }
                                 if(!_loc6_)
                                 {
                                    §§goto(addr242);
                                    §§push(Number(stage.stageWidth));
                                 }
                                 §§goto(addr232);
                              }
                              §§goto(addr167);
                           }
                           continue loop2;
                        }
                        continue loop0;
                     }
                     while(§§pop())
                     {
                        if(!(_loc6_ && this))
                        {
                           if(_loc7_)
                           {
                              return;
                           }
                           break loop0;
                        }
                        §§goto(addr55);
                     }
                     §§goto(addr87);
                  }
               }
            }
         }
      }
      
      public function §_-0De§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = getTimer();
         if(_loc2_)
         {
            if(_loc1_ - this.§_-lD§ > §_-GL§)
            {
               for(; stage.displayState != StageDisplayState.FULL_SCREEN; if(!(_loc2_ || _loc3_))
               {
                  continue;
               },addr81:)
               {
                  if(stage.displayState != StageDisplayState.NORMAL)
                  {
                     addr23:
                     return;
                  }
                  if(!(_loc3_ && _loc1_))
                  {
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     this.§_-9e§(_loc1_);
                  }
                  if(!_loc2_)
                  {
                     §§goto(addr23);
                  }
                  else
                  {
                     addr96:
                  }
               }
               this.§_-0B3§(_loc1_);
            }
            §§goto(addr96);
         }
         §§goto(addr81);
      }
      
      public function §_-DE§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-0B3§(0);
         }
      }
      
      public function §_-Mh§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(stage)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§push(stage.displayState == StageDisplayState.FULL_SCREEN);
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
      
      private function §_-0B3§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-aR§ = true;
            do
            {
               stage.displayState = StageDisplayState.NORMAL;
               do
               {
                  this.§_-lD§ = param1;
                  do
                  {
                     this.§_-04g§ = false;
                  }
                  while(_loc2_ && _loc2_);
                  
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(_loc2_ && param1);
            
         }
      }
      
      private function §_-9e§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-aR§ = true;
            while(true)
            {
               stage.displayState = StageDisplayState.FULL_SCREEN;
               addr93:
               while(true)
               {
                  this.§_-lD§ = param1;
               }
            }
            addr97:
         }
         loop2:
         while(true)
         {
            this.§_-ao§ = 0;
            while(true)
            {
               if(_loc2_ || _loc2_)
               {
                  if(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr97);
                  }
                  break;
               }
               continue loop2;
            }
            §§goto(addr93);
         }
      }
      
      protected function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = param1.keyCode;
         if(!_loc4_)
         {
            if(Keyboard.F === _loc2_)
            {
               addr40:
               §§push(0);
               if(_loc4_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
            }
            return;
         }
         §§goto(addr40);
      }
      
      override public function setFirstGameState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.setFirstGameState();
            while(true)
            {
               §_-03L§.§_-3S§.§_-qu§();
               while(_loc2_)
               {
                  LevelManager.§_-Vk§(JSON.parse(this.§_-SF§.getFileAsString("Chapters.json")));
                  loop2:
                  while(_loc2_)
                  {
                     while(true)
                     {
                        this.initializeGame();
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         if(_loc4_)
         {
            §§push(§ in§.§_-Cv§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop() != null)
               {
                  if(_loc4_ || _loc3_)
                  {
                     addr40:
                     § in§.§_-Cv§.update(param1);
                  }
               }
               §§push(super.updateState(param1));
               if(!(_loc5_ && _loc2_))
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(!(_loc5_ && this))
               {
                  if(!§_-053§().isGenericState())
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           if(§§pop() == §_-nG§.STATE_STATUS_COMPLETED)
                           {
                           }
                           §§goto(addr72);
                        }
                     }
                     loop1:
                     while(true)
                     {
                        §§push(§_-FK§);
                        §§push("AngryBirdSocial::run() state change is about to start. Old State = ");
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + §_-053§().mName);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() + " New State = ");
                              if(_loc4_)
                              {
                                 addr144:
                                 §§push(§§pop() + §_-053§().mNextState);
                              }
                           }
                           §§pop().log(§§pop());
                           while(true)
                           {
                              §_-Sk§(§_-053§().mNextState);
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                              if(_loc5_ && _loc2_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr72);
                           }
                           addr149:
                        }
                        §§goto(addr144);
                     }
                  }
                  addr72:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  return §§pop();
               }
               §§goto(addr149);
            }
         }
         §§goto(addr40);
      }
      
      override public function getAppWidth() : Number
      {
         return §_-W8§;
      }
      
      override public function getAppHeight() : Number
      {
         return §_-Kj§;
      }
      
      override public function getMinLoadingScreenTime() : Number
      {
         return §_-4s§;
      }
      
      override public function getVersionInfo() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("Client: ");
         if(_loc2_)
         {
            §§push(VERSION);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() + §§pop().replace("{svn_version}","local dev build"));
               if(!_loc1_)
               {
                  §§push(", ");
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr74);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr74);
                  }
               }
            }
            §§goto(addr74);
         }
         addr74:
         §§push(§§pop() + §§pop());
         if(_loc2_)
         {
            §§push("Server: ");
         }
         return §§pop() + §_-3T§;
      }
      
      protected function initializeGame() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § in§.§_-0-C§(this.getItemData(),this.getLevelBackgrounds());
            do
            {
               § in§.§_-041§(this.§_-SF§.§_-07S§,§_-09t§.§_-19§(),this.onGraphicsInitialized);
            }
            while(!_loc2_);
            
         }
      }
      
      protected function getLevelBackgrounds() : XML
      {
         return §_-ZE§.§_-ve§(§_-xP§);
      }
      
      protected function getItemData() : XML
      {
         return §_-ZE§.§_-ve§(§_-vt§);
      }
      
      protected function onGraphicsInitialized(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §_-pL§ = true;
            do
            {
               if(!§_-0EL§)
               {
                  §_-Sk§(§_-05N§.§_-pk§);
                  if(_loc2_ || _loc3_)
                  {
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     addr79:
                  }
               }
               continue;
               return;
            }
            while(_loc3_);
            
         }
         §_-Sk§(§_-00w§.§_-pk§);
         §§goto(addr79);
      }
      
      public function newUserScore(param1:String) : void
      {
      }
      
      override public function onEnterFrame(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§_-04g§);
            if(!(_loc5_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr35:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§_-ao§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc2_.§_-ao§ = _loc3_;
                     }
                     if(!_loc5_)
                     {
                        addr115:
                        §§push(§_-AY§.§_-Ow§());
                        loop0:
                        for(; §§pop(); §§push(this.§_-aR§),if(!_loc4_)
                        {
                           continue;
                        },while(§§pop())
                        {
                           if(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 this.§_-aR§ = false;
                              }
                              else
                              {
                                 §§goto(addr107);
                              }
                           }
                           if(!(_loc5_ && this))
                           {
                              addr102:
                              break;
                           }
                           break loop0;
                        },return,addr77:)
                        {
                           loop1:
                           while(true)
                           {
                              super.onEnterFrame(param1);
                              addr107:
                              while(true)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr102);
                  }
                  addr118:
                  return;
               }
               §§goto(addr115);
            }
            §§goto(addr77);
         }
         §§goto(addr35);
      }
      
      public function externalPause() : void
      {
      }
      
      public function externalResume() : void
      {
      }
   }
}
