package §_-gY§
{
   import §_-1Q§.§_-WL§;
   import §_-LP§.DisplayObject;
   import §_-LP§.Stage;
   import §_-LP§.§_-19§;
   import §_-LP§.§_-rC§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DCompareMode;
   import flash.display3D.Program3D;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TouchEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.KeyboardEvent;
   import starling.events.§_-5K§;
   import starling.events.§_-Ei§;
   import starling.events.§_-QY§;
   
   public class §_-Vu§
   {
      
      private static var §_-YZ§:§_-Vu§;
      
      private static var §_-tZ§:Boolean;
      
      private static var §_-WM§:int;
       
      
      private var mStage3D:Stage3D;
      
      private var mStage:§_-LP§.Stage;
      
      private var §_-1g§:Class;
      
      private var §_-x6§:§_-LP§.DisplayObject;
      
      private var §_-Wo§:§_-WL§;
      
      private var §_-ow§:Boolean;
      
      private var §_-4N§:§_-K6§;
      
      private var §_-qe§:§_-Ei§;
      
      private var §_-Am§:int;
      
      private var §_-cM§:Boolean;
      
      private var §_-E9§:Boolean;
      
      private var §_-e2§:Number;
      
      private var mViewPort:Rectangle;
      
      private var §_-97§:flash.display.Stage;
      
      private var §_-q4§:Sprite;
      
      private var §_-Dt§:Context3D;
      
      private var §_-EV§:Dictionary;
      
      private var §_-L8§:int;
      
      private var §_-PM§:Boolean;
      
      private var §_-GD§:Number;
      
      private var §_-eD§:Number;
      
      private var set:Number;
      
      private var §_-Iy§:Number;
      
      private var §_-VD§:Number;
      
      private var §_-AE§:Number;
      
      private var §_-M3§:Function;
      
      private var §_-T-§:uint;
      
      private var §_-kx§:String;
      
      public function §_-Vu§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:String = null;
         super();
         if(param2 == null)
         {
            throw new ArgumentError("Stage must not be null");
         }
         if(param1 == null)
         {
            throw new ArgumentError("Root class must not be null");
         }
         if(param3 == null)
         {
            param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
         }
         if(param4 == null)
         {
            if(_loc10_ || param3)
            {
               param4 = param2.stage3Ds[0];
               addr65:
               this.§_-GD§ = param3.width;
               if(!(_loc11_ && param1))
               {
                  this.§_-eD§ = param3.height;
                  this.set = this.§_-GD§;
                  this.§_-Iy§ = this.§_-eD§;
                  if(_loc10_)
                  {
                     this.§_-VD§ = param2.stageWidth;
                     this.§_-AE§ = param2.stageHeight;
                     this.§_-1g§ = param1;
                     if(_loc10_)
                     {
                        this.mViewPort = param3;
                        if(!(_loc11_ && param3))
                        {
                           this.mStage3D = param4;
                           this.mStage = new §_-LP§.Stage(param3.width,param3.height,param2.color);
                           this.§_-T-§ = param2.color;
                           this.§_-97§ = param2;
                           if(_loc10_ || this)
                           {
                              this.§_-qe§ = new §_-Ei§(this.mStage);
                              if(_loc10_)
                              {
                                 this.§_-Wo§ = new §_-WL§();
                                 if(_loc10_ || param3)
                                 {
                                    addr166:
                                    this.§_-Am§ = 0;
                                    addr169:
                                    this.§_-cM§ = false;
                                    this.§_-E9§ = false;
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr181);
                           }
                           this.§_-e2§ = getTimer() / 1000;
                           addr181:
                           this.§_-EV§ = new Dictionary();
                           §§goto(addr185);
                        }
                        §§goto(addr203);
                     }
                     addr185:
                     this.§_-4N§ = new §_-K6§();
                     if(_loc10_ || param3)
                     {
                        if(§_-YZ§ == null)
                        {
                           this.§_-I4§();
                           if(_loc10_)
                           {
                              addr203:
                              if(Multitouch.supportsTouchEvents)
                              {
                                 var _loc6_:Array = !!_loc10_ ? §§pop() : §§pop();
                                 var _loc8_:int = 0;
                                 var _loc9_:* = _loc6_;
                                 §§goto(addr206);
                              }
                              else
                              {
                                 §§push([MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP]);
                              }
                              §§goto(addr224);
                           }
                        }
                        §§goto(addr203);
                     }
                     addr206:
                     §§push([TouchEvent.TOUCH_BEGIN,TouchEvent.TOUCH_MOVE,TouchEvent.TOUCH_END]);
                     for each(_loc7_ in _loc9_)
                     {
                        if(!(_loc11_ && param1))
                        {
                           param2.addEventListener(_loc7_,this.§_-Bb§,false,0,true);
                        }
                     }
                     param2.addEventListener(Event.ENTER_FRAME,this.§_-Oe§,false,0,true);
                     param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-6E§,false,0,true);
                     param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-6E§,false,0,true);
                     param2.addEventListener(Event.RESIZE,this.§_-P2§,false,0,true);
                     this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§_-2n§,false,0,true);
                     this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§_-d8§,false,0,true);
                     this.mStage3D.visible = false;
                     this.§_-kx§ = param5;
                     return;
                  }
                  §§goto(addr181);
               }
               §§goto(addr169);
            }
            §§goto(addr166);
         }
         §§goto(addr65);
      }
      
      public static function get §_-Wf§() : int
      {
         return §_-dq§.§_-L8§;
      }
      
      public static function get §_-wB§() : Boolean
      {
         return §_-dq§.§_-PM§;
      }
      
      public static function §_-5v§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§_-ez§ == null);
            if(!(_loc1_ && _loc1_))
            {
               §§push(!§§pop());
               if(_loc2_ || §_-Vu§)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        §§pop();
                        addr46:
                        §§push(§_-ez§.driverInfo == "Disposed");
                        if(_loc2_ || _loc1_)
                        {
                        }
                        §§goto(addr65);
                     }
                  }
                  §§goto(addr65);
               }
               §§push(!§§pop());
            }
            addr65:
            return §§pop();
         }
         §§goto(addr46);
      }
      
      public static function get §_-dq§() : §_-Vu§
      {
         return §_-YZ§;
      }
      
      public static function get §_-ez§() : Context3D
      {
         return §_-YZ§.§_-ez§;
      }
      
      public static function get §_-jT§() : §_-WL§
      {
         return §_-YZ§.§_-jT§;
      }
      
      public static function get §_-dn§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-dn§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public function get stage() : §_-LP§.Stage
      {
         return this.mStage;
      }
      
      public function get §_-UN§() : §_-LP§.DisplayObject
      {
         return this.§_-x6§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-T-§ = param1;
         }
      }
      
      public function §_-R0§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§_-kx§);
         }
         catch(e:Error)
         {
            §_-ft§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Program3D = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§_-EV§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            if(this.§_-Dt§)
            {
               if(_loc4_ || _loc2_)
               {
                  this.§_-Dt§.dispose();
                  if(_loc4_ || _loc3_)
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr90);
            }
            addr66:
            §§push(this.§_-qe§);
            if(_loc4_ || _loc1_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr93);
            }
            §§pop().dispose();
            §§goto(addr93);
         }
         addr93:
         if(_loc4_ || _loc1_)
         {
            addr90:
            §§push(this.§_-qe§);
         }
      }
      
      private function §_-0B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§_-Dt§ = this.mStage3D.context3D;
         if(_loc2_)
         {
            this.§_-Dt§.enableErrorChecking = this.§_-E9§;
            if(_loc2_)
            {
               addr35:
               this.§_-Dt§.setDepthTest(false,Context3DCompareMode.NEVER);
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr48);
               }
               §§goto(addr64);
            }
            addr48:
            this.§_-EP§();
            if(this.§_-Dt§.driverInfo.indexOf("Software") >= 0)
            {
               addr64:
               this.§_-PM§ = true;
            }
            return;
         }
         §§goto(addr35);
      }
      
      private function §_-gx§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§_-tZ§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §_-rC§.§_-Dk§(this);
                  if(_loc2_)
                  {
                     §_-19§.§_-Dk§(this);
                     if(_loc2_)
                     {
                        addr54:
                        §_-tZ§ = true;
                     }
                  }
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §_-g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-x6§);
            if(_loc2_)
            {
               §§push(null);
               if(!(_loc1_ && _loc2_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc2_ || this)
                     {
                        this.§_-x6§ = new this.§_-1g§();
                        if(_loc1_ && _loc2_)
                        {
                        }
                     }
                     §§goto(addr76);
                  }
                  addr56:
                  §§push(this.§_-x6§);
                  §§push(null);
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc1_)
                  {
                     throw new Error("Invalid root class: " + this.§_-1g§);
                  }
               }
               else
               {
                  §§goto(addr76);
               }
               §§goto(addr76);
            }
            §§goto(addr56);
         }
         addr76:
         this.mStage.addChild(this.§_-x6§);
      }
      
      private function §_-EP§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§_-Dt§)
            {
               if(_loc2_ || this)
               {
                  this.§_-Dt§.configureBackBuffer(this.mViewPort.width,this.mViewPort.height,this.§_-Am§,false);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr67);
               }
            }
            this.mStage3D.x = this.mViewPort.x;
            if(_loc1_ && _loc1_)
            {
            }
            §§goto(addr67);
         }
         addr67:
         this.mStage3D.y = this.mViewPort.y;
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§_-Dt§ == null);
            if(!_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§pop();
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§_-5v§());
                        if(!_loc3_)
                        {
                        }
                        addr48:
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              return;
                           }
                           addr57:
                           §§push(getTimer() / 1000);
                           if(_loc3_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc1_:* = §§pop();
                           §§push(_loc1_);
                           if(_loc3_)
                           {
                              §§push(§§pop() - this.§_-e2§);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc2_:* = §§pop();
                           this.§_-e2§ = _loc1_;
                           if(_loc3_)
                           {
                              §§push(this.mStage);
                              if(!(_loc4_ && this))
                              {
                                 §§pop().§_-IE§(_loc2_);
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    this.§_-Wo§.§_-IE§(_loc2_);
                                    this.§_-qe§.§_-IE§(_loc2_);
                                    §§push(this.§_-4N§);
                                    if(_loc3_)
                                    {
                                       §§pop().§_-M1§(this.mStage.stageWidth,this.mStage.stageHeight);
                                       addr134:
                                       §§push(this.§_-4N§);
                                       if(_loc3_ || this)
                                       {
                                          §§pop().§_-Nw§(true);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             §§push(this.§_-4N§);
                                             if(_loc3_)
                                             {
                                                §§pop().clear(this.§_-T-§,1);
                                                addr162:
                                                this.mStage.render(this.§_-4N§,1);
                                                if(this.§_-M3§ != null)
                                                {
                                                   addr170:
                                                   this.§_-M3§();
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      this.§_-M3§ = null;
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                      }
                                                      addr201:
                                                      this.§_-4N§.§_-ar§();
                                                      return;
                                                      addr199:
                                                   }
                                                   §§goto(addr199);
                                                }
                                                this.§_-Dt§.present();
                                             }
                                          }
                                          §§goto(addr201);
                                       }
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr170);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr134);
                        }
                     }
                     §§goto(addr57);
                  }
                  §§push(!§§pop());
               }
            }
            §§goto(addr48);
         }
         §§goto(addr57);
      }
      
      public function set §_-bR§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-M3§ = param1;
         }
      }
      
      private function §_-6u§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-q4§.x = this.mViewPort.x;
            if(!(_loc3_ && _loc1_))
            {
               addr34:
               this.§_-q4§.y = this.mViewPort.y;
               if(!(_loc3_ && this))
               {
                  this.§_-q4§.scaleX = this.mViewPort.width / this.mStage.stageWidth;
                  if(_loc4_ || _loc1_)
                  {
                     this.§_-q4§.scaleY = this.mViewPort.height / this.mStage.stageHeight;
                  }
               }
            }
            var _loc1_:int = this.§_-q4§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§_-q4§.parent;
            §§push(_loc1_);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!(_loc3_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc4_)
                              {
                                 §§push(_loc2_ == null);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr125);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr138);
                           }
                           addr125:
                           if(§§pop())
                           {
                              this.§_-97§.addChild(this.§_-q4§);
                              if(_loc4_ || _loc1_)
                              {
                                 addr138:
                              }
                           }
                           else
                           {
                              addr142:
                              if(_loc1_ == 0 && _loc2_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    this.§_-97§.removeChild(this.§_-q4§);
                                 }
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr144);
               }
            }
            §§goto(addr142);
         }
         §§goto(addr34);
      }
      
      private function §_-ft§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc5_ || this)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            _loc2_.defaultTextFormat = _loc3_;
            _loc2_.wordWrap = true;
            _loc2_.width = this.mStage.stageWidth * 0.75;
            _loc2_.autoSize = TextFieldAutoSize.CENTER;
            if(_loc5_)
            {
               addr62:
               _loc2_.text = param1;
            }
            _loc2_.x = (this.mStage.stageWidth - _loc2_.width) / 2;
            if(!(_loc4_ && _loc2_))
            {
               _loc2_.y = (this.mStage.stageHeight - _loc2_.height) / 2;
               _loc2_.background = true;
            }
            _loc2_.backgroundColor = 4456448;
            this.§_-5t§.addChild(_loc2_);
            return;
         }
         §§goto(addr62);
      }
      
      public function §_-I4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §_-YZ§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-ow§ = true;
            if(_loc1_ || this)
            {
               this.mStage3D.visible = true;
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-ow§ = false;
            if(!(_loc2_ && this))
            {
               this.mStage3D.visible = false;
            }
         }
      }
      
      private function §_-d8§(param1:ErrorEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = "This application is not correctly embedded (wrong wmode value)";
         if(!(_loc3_ && param1))
         {
            this.§_-ft§(_loc2_);
         }
         throw new Error(param1.errorID,_loc2_);
      }
      
      private function §_-2n§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var _loc2_:*;
            §§push((_loc2_ = §§findproperty(§_-WM§)).§_-WM§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() + 1);
            }
            var _loc3_:* = §§pop();
            if(!_loc4_)
            {
               _loc2_.§_-WM§ = _loc3_;
            }
            if(_loc5_)
            {
               addr38:
               this.§_-L8§ = §_-WM§;
               if(_loc5_ || _loc3_)
               {
                  this.§_-EV§ = new Dictionary();
                  if(_loc5_ || this)
                  {
                  }
                  addr69:
                  loop0:
                  while(true)
                  {
                     §§push(this.mStage);
                     while(true)
                     {
                        if(§§pop().numChildren > 0)
                        {
                           §§push(this.mStage);
                           if(!_loc4_)
                           {
                              §§pop().removeChildAt(0);
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        if(_loc5_ || this)
                        {
                           this.§_-0B§();
                           if(_loc5_)
                           {
                              this.§_-gx§();
                              if(!_loc4_)
                              {
                                 addr99:
                                 this.§_-g§();
                                 if(!(_loc4_ && param1))
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr120);
                           }
                           break;
                        }
                        §§goto(addr99);
                     }
                     this.§_-qe§.include = this.§_-cM§;
                     addr120:
                     return;
                  }
               }
               §_-tZ§ = false;
            }
            §§goto(addr69);
         }
         §§goto(addr38);
      }
      
      private function §_-Oe§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§_-q4§)
            {
               if(_loc5_ || param1)
               {
                  this.§_-6u§();
               }
            }
         }
         §§push(getTimer() / 1000);
         if(_loc5_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || param1)
         {
            §§push(§§pop() - this.§_-e2§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this.§_-ow§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr96);
                     }
                  }
                  §§goto(addr107);
               }
            }
            addr96:
            §§pop();
            if(!(_loc4_ && _loc2_))
            {
               addr107:
               if(_loc3_ > 1)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     this.render();
                  }
               }
            }
            return;
         }
         §§goto(addr107);
      }
      
      private function §_-6E§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mStage.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
      }
      
      private function §_-P2§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         §§push(_loc2_.stageWidth / this.§_-VD§);
         if(_loc6_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_.stageHeight / this.§_-AE§);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §§push(this.mStage);
            if(_loc6_)
            {
               §§push(this.set);
               if(_loc6_ || _loc2_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§goto(addr90);
                  }
                  §§push(§§pop() / §§pop());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§goto(addr90);
                  }
                  §§goto(addr99);
               }
               addr90:
               §§push(§§pop() * §§pop());
               if(_loc6_ || param1)
               {
                  §§push(_loc4_);
               }
               §§pop().stageWidth = §§pop();
               if(!_loc5_)
               {
                  §§push(this.mStage);
                  if(!_loc5_)
                  {
                     addr99:
                     §§pop().stageHeight = this.§_-Iy§;
                     §§goto(addr125);
                  }
                  §§pop().dispatchEvent(new §_-QY§(Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
                  §§goto(addr125);
               }
               addr125:
               if(_loc6_ || this)
               {
                  §§push(this.mStage);
               }
               return;
            }
         }
         §§goto(addr99);
      }
      
      public function §_-Bq§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() / this.§_-GD§);
            if(_loc6_ || this)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param2);
            if(!(_loc5_ && _loc3_))
            {
               §§push(§§pop() / this.§_-eD§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.mStage);
               if(_loc6_)
               {
                  §§push(this.§_-GD§);
                  if(_loc6_ || this)
                  {
                     §§push(_loc3_);
                     if(_loc6_ || _loc3_)
                     {
                        addr81:
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                        }
                        §§pop().stageWidth = §§pop();
                        if(_loc6_)
                        {
                           §§push(this.mStage);
                           if(_loc6_ || _loc3_)
                           {
                              addr95:
                              §§pop().stageHeight = this.§_-eD§;
                              if(_loc6_)
                              {
                                 addr98:
                                 this.set = param1;
                                 if(_loc6_ || param2)
                                 {
                                    this.§_-Iy§ = param2;
                                    if(!(_loc5_ && param1))
                                    {
                                       addr127:
                                       this.mStage.dispatchEvent(new §_-QY§(Event.RESIZE,param1,param2));
                                       addr125:
                                    }
                                    return;
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr127);
                        }
                        §§goto(addr98);
                     }
                     §§push(§§pop() / §§pop());
                     if(_loc6_)
                     {
                        §§goto(addr81);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr81);
               }
               §§goto(addr127);
            }
            §§goto(addr98);
         }
         §§goto(addr27);
      }
      
      public function §_-rd§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§_-Bq§(this.§_-GD§,this.§_-eD§);
         }
      }
      
      private function §_-Bb§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(_loc4_ || this)
         {
            §§push(null);
            if(!(_loc3_ && param1))
            {
               §§pop().§§slot[2] = §§pop();
               if(!(_loc3_ && this))
               {
                  §§push(§§newactivation());
                  if(!(_loc3_ && param1))
                  {
                     §§push(null);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           §§pop().§§slot[3] = §§pop();
                           §§push(§§newactivation());
                           §§push(0);
                           if(!_loc3_)
                           {
                              §§pop().§§slot[4] = §§pop();
                              §§push(§§newactivation());
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(null);
                                 if(_loc4_)
                                 {
                                    addr74:
                                    §§pop().§§slot[8] = §§pop();
                                    §§push(§§newactivation());
                                    if(_loc4_)
                                    {
                                       addr80:
                                       §§pop().§§slot[9] = null;
                                       var event:Event = param1;
                                       §§push(§§newactivation());
                                       if(!(_loc3_ && this))
                                       {
                                          addr93:
                                          §§pop().§§slot[5] = function(param1:Point):Point
                                          {
                                             return new Point(param1.x - mViewPort.x + mViewPort.width / mStage.stageWidth,param1.y - mViewPort.y + mViewPort.height / mStage.stageHeight);
                                          };
                                          §§push(§§newactivation());
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr104:
                                             §§pop().§§slot[6] = function(param1:MouseEvent):String
                                             {
                                                switch(param1.type)
                                                {
                                                   case MouseEvent.MOUSE_DOWN:
                                                      return §_-5K§.§_-RF§;
                                                   case MouseEvent.MOUSE_UP:
                                                      return §_-5K§.§_-an§;
                                                   case MouseEvent.MOUSE_MOVE:
                                                      return !!mouseEvent.buttonDown ? §_-5K§.§_-qP§ : §_-5K§.§_-d2§;
                                                   default:
                                                      return null;
                                                }
                                             };
                                             if(_loc4_)
                                             {
                                                var getPhaseFromTouchEvent:Function = function(param1:TouchEvent):String
                                                {
                                                   switch(param1.type)
                                                   {
                                                      case TouchEvent.TOUCH_BEGIN:
                                                         return §_-5K§.§_-RF§;
                                                      case TouchEvent.TOUCH_MOVE:
                                                         return §_-5K§.§_-qP§;
                                                      case TouchEvent.TOUCH_END:
                                                         return §_-5K§.§_-an§;
                                                      default:
                                                         return null;
                                                   }
                                                };
                                                if(!this.§_-ow§)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                else
                                                {
                                                   addr119:
                                                   if(event is MouseEvent)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§newactivation());
                                                         §§push(§§newactivation());
                                                         if(_loc4_ || this)
                                                         {
                                                            §§pop().§§slot[8] = §§pop().§§slot[1] as MouseEvent;
                                                            if(!(_loc3_ && param1))
                                                            {
                                                               addr152:
                                                               §§push(§§newactivation());
                                                               §§push(convertPosition);
                                                               if(_loc4_)
                                                               {
                                                                  §§push(global);
                                                                  if(_loc4_ || _loc2_)
                                                                  {
                                                                     §§pop().§§slot[2] = §§pop()(new Point(mouseEvent.stageX,mouseEvent.stageY));
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           §§push(getPhaseFromMouseEvent);
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(global);
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr200:
                                                                                 §§push(§§newactivation());
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(§§pop()(§§pop().§§slot[8]));
                                                                                    if(_loc4_ || _loc2_)
                                                                                    {
                                                                                       §§pop().§§slot[3] = §§pop();
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§newactivation());
                                                                                          §§push(0);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr225:
                                                                                             §§pop().§§slot[4] = §§pop();
                                                                                             addr291:
                                                                                             §§push(§§newactivation());
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                addr294:
                                                                                                §§push(§§pop().§§slot[2].x < this.mViewPort.left);
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(!(_loc3_ && _loc2_))
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr331:
                                                                                                            §§push(position.x >= this.mViewPort.right);
                                                                                                            §§push(position.x >= this.mViewPort.right);
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr343:
                                                                                                                     §§push(position.y < this.mViewPort.top);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        addr352:
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           addr355:
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr358:
                                                                                                                                 §§pop();
                                                                                                                                 addr366:
                                                                                                                                 if(position.y >= this.mViewPort.bottom && phase == §_-5K§.§_-RF§)
                                                                                                                                 {
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 this.§_-qe§.§_-W5§(touchID,phase,position.x,position.y);
                                                                                                                                 return;
                                                                                                                                 addr376:
                                                                                                                              }
                                                                                                                              §§goto(addr368);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr366);
                                                                                                                     }
                                                                                                                     §§goto(addr358);
                                                                                                                  }
                                                                                                                  §§goto(addr376);
                                                                                                               }
                                                                                                               §§goto(addr352);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr358);
                                                                                                      }
                                                                                                      §§goto(addr331);
                                                                                                   }
                                                                                                   §§goto(addr355);
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr290:
                                                                                             §§pop().§§slot[4] = §§pop();
                                                                                             §§goto(addr291);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr282:
                                                                                       §§pop().§§slot[3] = §§pop();
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          addr287:
                                                                                          §§goto(addr290);
                                                                                          §§push(§§newactivation());
                                                                                          §§push(int(touchEvent.touchPointID));
                                                                                       }
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr282);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr278:
                                                                                 §§push(§§newactivation());
                                                                              }
                                                                              §§goto(addr282);
                                                                              §§push(§§pop()(§§pop().§§slot[9]));
                                                                           }
                                                                           else
                                                                           {
                                                                              addr255:
                                                                              §§push(global);
                                                                              if(!(_loc3_ && _loc2_))
                                                                              {
                                                                                 §§pop().§§slot[2] = §§pop()(new Point(touchEvent.stageX,touchEvent.stageY));
                                                                                 addr276:
                                                                                 §§push(§§newactivation());
                                                                                 §§push(getPhaseFromTouchEvent);
                                                                                 §§push(global);
                                                                              }
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr343);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr255);
                                                            }
                                                            §§goto(addr291);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr152);
                                                   }
                                                   else
                                                   {
                                                      §§push(§§newactivation());
                                                      §§push(§§newactivation());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         §§pop().§§slot[9] = §§pop().§§slot[1] as TouchEvent;
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            §§push(§§newactivation());
                                                            §§push(§§newactivation());
                                                            if(_loc4_)
                                                            {
                                                               addr252:
                                                               §§push(§§pop().§§slot[5]);
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr255);
                                                               }
                                                               §§goto(addr276);
                                                            }
                                                            §§goto(addr287);
                                                         }
                                                         §§goto(addr368);
                                                      }
                                                      §§goto(addr252);
                                                   }
                                                }
                                                §§goto(addr368);
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr368);
                                       }
                                       §§goto(addr343);
                                    }
                                    §§goto(addr294);
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr225);
                        }
                        §§goto(addr282);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr152);
               }
               §§goto(addr276);
            }
            §§goto(addr74);
         }
         §§goto(addr104);
      }
      
      public function §_-fm§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(this.§_-EV§.hasOwnProperty(param1))
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr35);
               }
            }
            var _loc4_:Program3D;
            (_loc4_ = this.§_-Dt§.createProgram()).upload(param2,param3);
            if(!(_loc5_ && param2))
            {
               this.§_-EV§[param1] = _loc4_;
            }
            return;
         }
         addr35:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §_-bt§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§_-qm§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  addr31:
                  _loc2_.dispose();
                  if(_loc3_ || this)
                  {
                  }
                  §§goto(addr52);
               }
               delete this.§_-EV§[param1];
            }
            addr52:
            return;
         }
         §§goto(addr31);
      }
      
      public function §_-qm§(param1:String) : Program3D
      {
         return this.§_-EV§[param1] as Program3D;
      }
      
      public function get §_-hQ§() : Boolean
      {
         return this.§_-ow§;
      }
      
      public function get §_-jT§() : §_-WL§
      {
         return this.§_-Wo§;
      }
      
      public function get §_-ez§() : Context3D
      {
         return this.§_-Dt§;
      }
      
      public function get include() : Boolean
      {
         return this.§_-cM§;
      }
      
      public function set include(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-cM§ = param1;
            if(!_loc2_)
            {
               §§goto(addr28);
            }
            §§goto(addr33);
         }
         addr28:
         if(this.§_-Dt§)
         {
            if(!_loc2_)
            {
               addr33:
               this.§_-qe§.include = param1;
            }
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-E9§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-E9§ = param1;
            if(!_loc3_)
            {
               §§goto(addr27);
            }
            §§goto(addr44);
         }
         addr27:
         if(this.§_-Dt§)
         {
            if(_loc2_ || _loc3_)
            {
               addr44:
               this.§_-Dt§.enableErrorChecking = param1;
            }
         }
      }
      
      public function get §_-IN§() : int
      {
         return this.§_-Am§;
      }
      
      public function set §_-IN§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-Am§ = param1;
            if(_loc3_ || this)
            {
               this.§_-EP§();
            }
         }
      }
      
      public function get §_-cU§() : Rectangle
      {
         return this.mViewPort.clone();
      }
      
      public function set §_-cU§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.mViewPort = param1.clone();
            if(!(_loc3_ && this))
            {
               addr45:
               this.§_-EP§();
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function get §_-5t§() : Sprite
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-q4§ == null)
            {
               if(_loc1_ || _loc2_)
               {
                  this.§_-q4§ = new Sprite();
                  if(_loc1_ || _loc1_)
                  {
                     this.§_-97§.addChild(this.§_-q4§);
                     §§goto(addr44);
                  }
                  this.§_-6u§();
               }
            }
            §§goto(addr44);
         }
         addr44:
         if(_loc2_)
         {
         }
         return this.§_-q4§;
      }
   }
}
