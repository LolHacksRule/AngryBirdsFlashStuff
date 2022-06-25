package §_-0Ea§
{
   import §_-Nq§.§_-RO§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Stage;
   import §_-z4§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.Stage3D;
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.errors.IllegalOperationError;
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
   import flash.ui.ContextMenu;
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§_-5E§;
   import starling.events.§_-HA§;
   import starling.events.§_-tW§;
   
   public class §_-AY§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §_-AO§:§_-AY§;
      
      private static var §_-mW§:Boolean;
      
      private static var §_-Q7§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §_-qN§:§_-uY§.Stage;
      
      private var §_-02e§:Class;
      
      private var §_-00B§:§_-uY§.DisplayObject;
      
      private var §_-mY§:§_-RO§;
      
      private var §_-Le§:Boolean;
      
      private var §_-u2§:Boolean;
      
      private var §_-xD§:§_-zM§;
      
      private var §_-WY§:§_-5E§;
      
      private var §_-4M§:int;
      
      private var §_-Sg§:Boolean;
      
      private var §_-05i§:Boolean;
      
      private var §_-tZ§:Number;
      
      private var §_-1s§:Rectangle;
      
      private var §else§:Boolean;
      
      private var §_-07F§:flash.display.Stage;
      
      private var §_-02N§:Sprite;
      
      private var §_-pr§:Context3D;
      
      private var §_-00j§:Dictionary;
      
      private var §_-zY§:int;
      
      private var §_-nL§:Boolean;
      
      private var §_-09§:Number;
      
      private var §_-Cx§:Number;
      
      private var §_-ka§:Number;
      
      private var §_-Aa§:Number;
      
      private var §_-vq§:Number;
      
      private var §_-1Z§:Number;
      
      private var §_-7s§:Function;
      
      private var §_-Un§:uint;
      
      private var §_-Kc§:String;
      
      private var §_-NI§:Bitmap;
      
      private var §_-VR§:Boolean = false;
      
      private var §_-03r§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §_-W4§:Boolean = false;
      
      public function §_-AY§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_ || param3)
         {
            super();
            if(_loc9_ || param2)
            {
               if(param2 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop11:
                  while(true)
                  {
                     this.§_-07F§ = param2;
                     loop2:
                     while(true)
                     {
                        this.§_-WY§ = new §_-5E§(this.§_-qN§);
                        loop3:
                        while(true)
                        {
                           if(!_loc10_)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_ || this)
                                 {
                                    this.§_-mY§ = new §_-RO§();
                                    addr315:
                                    loop4:
                                    while(!_loc10_)
                                    {
                                       this.§_-4M§ = 0;
                                       loop5:
                                       while(_loc9_ || param3)
                                       {
                                          this.§_-Sg§ = false;
                                          loop6:
                                          while(!_loc10_)
                                          {
                                             this.§_-05i§ = false;
                                             loop7:
                                             while(!(_loc10_ && param1))
                                             {
                                                while(true)
                                                {
                                                   this.§_-tZ§ = getTimer() / 1000;
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            this.§_-00j§ = new Dictionary();
                                                            if(_loc9_ || param3)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                   addr288:
                                                   while(true)
                                                   {
                                                      this.§_-1s§ = param3;
                                                      break loop3;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             while(!(_loc10_ && this))
                                             {
                                                while(true)
                                                {
                                                   this.§_-qN§ = new §_-uY§.Stage(param3.width,param3.height,param2.color);
                                                   break loop4;
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§_-02e§ = param1;
                                                §§goto(addr288);
                                                §§goto(addr262);
                                             }
                                             addr262:
                                          }
                                          while(true)
                                          {
                                             §_-B4§ = true;
                                             addr297:
                                             while(true)
                                             {
                                                this.§_-0D§();
                                                §§goto(addr292);
                                             }
                                          }
                                       }
                                    }
                                    while(!(_loc10_ && param2))
                                    {
                                       continue loop11;
                                    }
                                    loop12:
                                    while(true)
                                    {
                                       this.§_-vq§ = param2.stageWidth;
                                       addr321:
                                       while(true)
                                       {
                                          this.§_-Aa§ = this.§_-Cx§;
                                          continue loop12;
                                       }
                                    }
                                    addr315:
                                 }
                                 while(true)
                                 {
                                    this.§_-1Z§ = param2.stageHeight;
                                    §§goto(addr303);
                                 }
                              }
                              break;
                           }
                           continue loop2;
                        }
                        loop18:
                        while(!(_loc10_ && param2))
                        {
                           if(!_loc10_)
                           {
                              while(true)
                              {
                                 this.mStage3D = param4;
                                 §§goto(addr262);
                              }
                              addr283:
                           }
                           else
                           {
                              addr326:
                              while(true)
                              {
                                 this.§_-ka§ = this.§_-09§;
                                 break loop18;
                              }
                              addr326:
                           }
                        }
                        §§goto(addr321);
                     }
                  }
               }
               else if(param1 == null)
               {
                  if(!(_loc10_ && param3))
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr326);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_ || param1)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                     }
                     §§goto(addr315);
                  }
                  if(param4 == null)
                  {
                     if(_loc9_)
                     {
                        param4 = param2.stage3Ds[0];
                        addr110:
                        this.§_-09§ = param3.width;
                        if(!(_loc10_ && param2))
                        {
                           this.§_-Cx§ = param3.height;
                           §§goto(addr326);
                        }
                        §§goto(addr315);
                     }
                     §§goto(addr269);
                  }
                  §§goto(addr110);
               }
               §§goto(addr315);
            }
            §§goto(addr283);
         }
         §§goto(addr321);
      }
      
      public static function get §_-H3§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§_-un§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr40:
                     §§push(§_-un§.§_-nL§);
                     if(!_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr44:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr44);
            }
         }
         §§goto(addr40);
      }
      
      public static function §_-Ow§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§_-AO§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr147:
               while(true)
               {
                  §§push(§§pop());
                  addr148:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        addr56:
                        return §§pop();
                     }
                     while(true)
                     {
                        §§pop();
                        addr150:
                        while(true)
                        {
                           §§push(§_-AO§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      public static function get §_-un§() : §_-AY§
      {
         return §_-AO§;
      }
      
      public static function get §_-CK§() : §_-RO§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §_-AY§)
         {
            §§push(§_-AO§);
            if(!(_loc2_ && _loc1_))
            {
               return !!§§pop() ? §_-AO§.§_-CK§ : null;
            }
         }
         §§goto(addr43);
      }
      
      public static function get §_-re§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §_-re§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §_-AY§))
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §_-B4§() : Boolean
      {
         return §_-mW§;
      }
      
      public static function set §_-B4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§_-AO§ == null)
            {
               do
               {
                  §_-mW§ = param1;
               }
               while(_loc3_ && §_-AY§);
               
               if(_loc2_ || §_-AY§)
               {
                  return;
               }
            }
         }
         throw new IllegalOperationError("Setting must be changed before Starling instance is created");
      }
      
      public static function §_-0-D§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(§_-un§)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr38);
               }
            }
            return null;
         }
         addr38:
         return Texture.§_-06W§(§_-un§.§_-pr§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!(_loc4_ && §_-AY§))
         {
            §§push(§_-AO§);
            if(!(_loc4_ && §_-AY§))
            {
               if(§§pop().§_-pr§)
               {
                  if(_loc3_)
                  {
                     §§push(§_-AO§);
                     if(!_loc4_)
                     {
                        §§pop().§_-pr§.drawToBitmapData(param1);
                        if(_loc4_ && param1)
                        {
                           addr92:
                           _loc2_ = §_-AO§.§_-xD§.canvas;
                           addr90:
                           if(!(_loc4_ && _loc3_))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr90);
               }
               else
               {
                  §§push(§_-AO§);
                  if(!(_loc4_ && §_-AY§))
                  {
                     addr70:
                     §§push(§§pop().§_-xD§);
                     if(_loc3_ || §_-AY§)
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr90);
                        }
                        addr114:
                        return;
                     }
                     §§goto(addr92);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr70);
         }
         §§goto(addr92);
      }
      
      public function get §_-Uz§() : §_-uY§.DisplayObject
      {
         return this.§_-00B§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§_-Un§ = param1;
         }
      }
      
      public function get §_-0-8§() : Number
      {
         return this.§_-09§;
      }
      
      public function get §_-03j§() : Number
      {
         return this.§_-Cx§;
      }
      
      public function §_-uN§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§_-Kc§);
         }
         catch(e:Error)
         {
            §_-c7§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc5_ || _loc1_)
         {
            this.§_-W4§ = true;
         }
         while(true)
         {
            this.§_-07F§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§_-00r§,false);
            loop1:
            while(!_loc6_)
            {
               this.§_-07F§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§_-00r§,false);
               loop2:
               while(true)
               {
                  addr50:
                  while(true)
                  {
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§_-Hs§,false);
                     while(_loc5_)
                     {
                        this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§_-Pf§,false);
                        if(_loc5_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §_-1r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-pr§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§_-00j§ = new Dictionary();
               while(true)
               {
                  if(!this.§_-pr§)
                  {
                     this.§_-nL§ = true;
                     loop2:
                     while(_loc1_)
                     {
                        if(_loc1_)
                        {
                           loop3:
                           while(true)
                           {
                              this.§_-Rm§();
                              if(!(_loc2_ && this))
                              {
                                 if(_loc1_ || this)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       addr104:
                                       while(true)
                                       {
                                          this.§_-pr§.enableErrorChecking = this.§_-05i§;
                                          addr109:
                                          while(true)
                                          {
                                             if(this.§_-pr§.driverInfo.indexOf("Software") < 0)
                                             {
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§_-nL§ = true;
                                       §§goto(addr109);
                                    }
                                    addr94:
                                 }
                                 while(_loc2_)
                                 {
                                    §§goto(addr109);
                                    §§goto(addr94);
                                 }
                                 continue;
                              }
                              continue loop2;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                     continue;
                  }
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §_-5f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-qN§);
            loop0:
            for(; §§pop().numChildren <= 0; do
            {
               §§push(this.§_-qN§);
               if(_loc1_ && this)
               {
                  continue loop0;
               }
               §§pop().addChild(this.§_-00B§);
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               if(_loc2_ || _loc2_)
               {
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
                  §§goto(addr122);
               }
               §§goto(addr83);
            }
            while(!(_loc1_ && this));
            ,§§goto(addr126))
            {
               loop1:
               while(true)
               {
                  §§push(this.§_-00B§);
                  loop2:
                  while(true)
                  {
                     §§push(null);
                     loop3:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           while(true)
                           {
                              this.§_-00B§ = new this.§_-02e§();
                              addr126:
                              while(true)
                              {
                              }
                           }
                           addr122:
                        }
                        while(true)
                        {
                           §§push(this.§_-00B§);
                           if(!(_loc1_ && _loc2_))
                           {
                              §§push(null);
                              if(_loc2_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        addr83:
                        if(!_loc1_)
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              throw new Error("Invalid root class: " + this.§_-02e§);
                              addr92:
                           }
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr92);
      }
      
      private function §_-Rm§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§_-03r§ = true;
            do
            {
               this.mStage3D.x = this.§_-1s§.x;
               do
               {
                  this.mStage3D.y = this.§_-1s§.y;
               }
               while(!(_loc1_ || _loc1_));
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(§_-Ow§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr81);
               }
               loop1:
               while(true)
               {
                  §§push(this.§_-03r§);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        while(!(_loc3_ && this))
                        {
                           if(this.§_-pr§)
                           {
                              if(_loc4_)
                              {
                                 this.§_-pr§.configureBackBuffer(this.§_-1s§.width,this.§_-1s§.height,this.§_-4M§,false);
                              }
                              while(_loc4_ || _loc2_)
                              {
                              }
                              addr81:
                              return;
                              addr70:
                           }
                           while(true)
                           {
                              this.§_-03r§ = false;
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr70);
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              if(true)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        while(true)
                        {
                           continue loop1;
                        }
                        addr82:
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(getTimer() / 1000);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc1_:* = §§pop();
               §§push(_loc1_);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() - this.§_-tZ§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || this)
               {
                  this.§_-tZ§ = _loc1_;
                  loop5:
                  while(true)
                  {
                     §§push(this.§_-qN§);
                     while(true)
                     {
                        §§pop().advanceTime(_loc2_);
                        loop7:
                        while(true)
                        {
                           this.§_-mY§.advanceTime(_loc2_);
                           addr305:
                           while(true)
                           {
                              this.§_-WY§.advanceTime(_loc2_);
                              addr292:
                              while(_loc4_ || _loc2_)
                              {
                              }
                              continue loop7;
                              addr140:
                              if(_loc4_ || _loc1_)
                              {
                                 return;
                              }
                           }
                        }
                        loop16:
                        while(true)
                        {
                           §§push(this.§_-qN§);
                           if(_loc3_)
                           {
                              break;
                           }
                           §§pop().render(this.§_-xD§,1);
                           loop17:
                           while(true)
                           {
                              §§push(this.§_-xD§);
                              loop18:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop().§_-oR§();
                                          loop19:
                                          while(true)
                                          {
                                             if(this.§_-7s§ != null)
                                             {
                                                addr263:
                                                loop20:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   continue loop19;
                                                   addr171:
                                                   while(true)
                                                   {
                                                      if(!(_loc4_ || _loc1_))
                                                      {
                                                         continue loop20;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         §§push(this.§_-xD§);
                                                         if(_loc3_)
                                                         {
                                                            continue loop18;
                                                         }
                                                         §§pop().§_-zz§();
                                                         if(!_loc4_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               addr158:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-xD§);
                                                                  continue loop18;
                                                               }
                                                            }
                                                            addr185:
                                                         }
                                                         §§goto(addr140);
                                                         addr180:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§_-xD§);
                                                         break loop18;
                                                      }
                                                   }
                                                   continue loop5;
                                                }
                                                while(!_loc3_)
                                                {
                                                   §§push(this.§_-xD§);
                                                   while(true)
                                                   {
                                                      §§pop().§_-l7§(this.§_-pr§,this.§_-zY§);
                                                      continue loop16;
                                                   }
                                                }
                                                §§goto(addr292);
                                                addr263:
                                             }
                                             else
                                             {
                                                §§goto(addr158);
                                             }
                                             §§goto(addr305);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr269:
                                       }
                                       §§pop().§_-hh§(§§pop(),§§pop().stageHeight);
                                       §§goto(addr286);
                                    }
                                    break;
                                 }
                                 §§goto(addr248);
                              }
                              while(true)
                              {
                                 §§pop().clear(this.§_-pr§,this.§_-Un§,1);
                                 §§goto(addr263);
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr269);
               }
            }
         }
         §§goto(addr82);
      }
      
      public function set §_-NL§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-7s§ = param1;
         }
      }
      
      private function §_-ui§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(_loc4_ || _loc3_)
         {
            this.§_-02N§.x = this.§_-1s§.x;
            if(_loc4_)
            {
               this.§_-02N§.y = this.§_-1s§.y;
            }
         }
         var _loc1_:int = this.§_-02N§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§_-02N§.parent;
         if(!_loc5_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                    while(!(_loc5_ && _loc1_))
                                    {
                                       addr81:
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(!_loc5_)
                                             {
                                                loop22:
                                                while(§§pop())
                                                {
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      if(_loc4_ || _loc1_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(this.§_-xD§);
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               §§pop().setCanvasSize(this.§_-ka§,this.§_-Aa§,this.§_-1s§.width / this.§_-qN§.stageWidth,this.§_-1s§.height / this.§_-qN§.stageHeight);
                                                               addr145:
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-xD§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr172:
                                                                                 if(!(_loc4_ || _loc3_))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr232:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(_loc2_));
                                                                                             }
                                                                                          }
                                                                                          addr231:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   this.§_-07F§.removeChild(this.§_-02N§);
                                                                                                   while(!_loc5_)
                                                                                                   {
                                                                                                      if(_loc4_ || _loc3_)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      addr246:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§_-07F§.addChild(this.§_-02N§);
                                                                                                      }
                                                                                                      §§goto(addr145);
                                                                                                   }
                                                                                                   §§goto(addr232);
                                                                                                   addr202:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                             addr74:
                                                                                             if(!(_loc4_ || _loc1_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr81);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop4;
                                                                                    addr223:
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr184:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§_-xD§);
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§push(Boolean(§§pop().canvas));
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       addr262:
                                                                                       addr262:
                                                                                       _loc3_ = §§pop().canvas;
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(this.§_-NI§.bitmapData != _loc3_)
                                                                                          {
                                                                                             addr324:
                                                                                             this.§_-NI§.bitmapData = _loc3_;
                                                                                             addr328:
                                                                                          }
                                                                                          addr286:
                                                                                          if(this.§_-07F§.getChildIndex(this.§_-02N§) > 0)
                                                                                          {
                                                                                             addr304:
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                this.§_-07F§.removeChild(this.§_-02N§);
                                                                                                addr316:
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   this.§_-07F§.addChildAt(this.§_-02N§,0);
                                                                                                   if(!(_loc5_ && this))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr286);
                                                                                                         }
                                                                                                         break loop22;
                                                                                                      }
                                                                                                      §§goto(addr304);
                                                                                                   }
                                                                                                   §§goto(addr316);
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          break loop22;
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    continue loop19;
                                                                                 }
                                                                              }
                                                                              §§goto(addr231);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr223);
                                                                              §§goto(addr172);
                                                                           }
                                                                           addr222:
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr262);
                                                                     §§push(this.§_-xD§);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr202);
                                                            }
                                                            §§goto(addr262);
                                                         }
                                                         §§goto(addr190);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                return;
                                             }
                                             continue loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc1_);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§push(0);
                                 if(_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr222);
                                 §§push(§§pop() == §§pop());
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr246);
      }
      
      private function §_-c7§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!(_loc5_ && param1))
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(!(_loc5_ && this))
               {
                  _loc2_.wordWrap = true;
                  loop2:
                  while(true)
                  {
                     _loc2_.width = this.§_-qN§.stageWidth * 0.75;
                     while(true)
                     {
                        _loc2_.autoSize = TextFieldAutoSize.CENTER;
                        continue loop2;
                        loop9:
                        while(!(_loc5_ && this))
                        {
                           _loc2_.backgroundColor = 4456448;
                           while(true)
                           {
                              if(!(_loc5_ && this))
                              {
                                 addr58:
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr65:
                                    if(_loc5_ && _loc3_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 while(_loc4_)
                                 {
                                    _loc2_.background = true;
                                    continue loop9;
                                    §§goto(addr58);
                                 }
                                 while(!_loc5_)
                                 {
                                    _loc2_.y = (this.§_-qN§.stageHeight - _loc2_.height) / 2;
                                    §§goto(addr106);
                                 }
                                 addr106:
                                 continue loop2;
                                 addr120:
                              }
                              continue loop9;
                           }
                           while(true)
                           {
                              _loc2_.x = (this.§_-qN§.stageWidth - _loc2_.width) / 2;
                              §§goto(addr120);
                              §§goto(addr65);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      public function §_-0D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §_-AO§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-Le§ = true;
         }
         do
         {
            this.mStage3D.visible = this.mStage3DEnabled;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§_-Le§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc1_);
         
      }
      
      public function §_-fQ§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§_-u2§ = param1;
         }
      }
      
      private function §_-Bh§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§_-VR§ = true;
            loop0:
            while(this.§_-NI§ == null)
            {
               if(!_loc1_)
               {
                  this.§_-NI§ = new Bitmap();
               }
               while(!(_loc1_ && _loc2_))
               {
                  this.§_-gX§.addChild(this.§_-NI§);
                  if(_loc2_ || _loc1_)
                  {
                     addr62:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      private function §_-Pf§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-Bh§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(_loc3_ && this);
         
      }
      
      private function §_-Hs§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§_-W4§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
                  loop12:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§_-AY§.§_-B4§);
                        if(_loc5_)
                        {
                           §§push(!§§pop());
                        }
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr348:
                                 while(true)
                                 {
                                    §§pop();
                                    addr349:
                                    while(true)
                                    {
                                       §§push(Boolean(this.§_-pr§));
                                    }
                                 }
                                 addr348:
                              }
                              while(true)
                              {
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          this.§_-0D§();
                                          loop8:
                                          while(true)
                                          {
                                             this.§_-1r§();
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc5_ || this)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      this.§_-5f§();
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§_-pr§));
                                                               while(!(_loc4_ && param1))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr280:
                                                                        do
                                                                        {
                                                                           §§push(this.§_-nL§);
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           addr247:
                                                                        }
                                                                        while(!(_loc4_ && _loc2_));
                                                                        
                                                                        §§goto(addr348);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop18:
                                                                        while(!_loc4_)
                                                                        {
                                                                           this.mStage3DEnabled = false;
                                                                           loop19:
                                                                           for(; _loc5_; if(_loc5_ || this)
                                                                           {
                                                                              continue loop9;
                                                                           })
                                                                           {
                                                                              this.§_-pr§ = null;
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 this.§_-Bh§();
                                                                                 addr212:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       §§goto(addr280);
                                                                                    }
                                                                                 }
                                                                                 addr107:
                                                                                 if(_loc4_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                                 if(_loc5_ || this)
                                                                                 {
                                                                                    addr80:
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          loop32:
                                                                                          while(true)
                                                                                          {
                                                                                             addr99:
                                                                                             addr124:
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                this.§_-WY§.§_-0J§ = this.§_-Sg§;
                                                                                                addr105:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr107);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop25:
                                                                                                      while(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr163:
                                                                                                            §§push(this.§_-xD§);
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               §§pop().clear(null,this.§_-Un§);
                                                                                                               break loop27;
                                                                                                            }
                                                                                                            addr128:
                                                                                                            while(!(_loc4_ && param1))
                                                                                                            {
                                                                                                               §§pop().setCanvasSize(this.§_-ka§,this.§_-Aa§,this.§_-1s§.width / this.§_-qN§.stageWidth,this.§_-1s§.height / this.§_-qN§.stageHeight);
                                                                                                               continue loop25;
                                                                                                               §§goto(addr163);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§_-xD§ = new §_-zM§();
                                                                                                               continue loop32;
                                                                                                            }
                                                                                                            addr204:
                                                                                                         }
                                                                                                      }
                                                                                                      while(_loc5_)
                                                                                                      {
                                                                                                         continue loop19;
                                                                                                         §§goto(addr154);
                                                                                                      }
                                                                                                      addr154:
                                                                                                      §§goto(addr212);
                                                                                                      addr181:
                                                                                                   }
                                                                                                   addr365:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().dispose();
                                                                                                      continue loop12;
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr99);
                                                                                                §§goto(addr80);
                                                                                             }
                                                                                          }
                                                                                          addr208:
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       addr91:
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          return;
                                                                                       }
                                                                                       addr370:
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          §§goto(addr365);
                                                                                          §§push(this.§_-xD§);
                                                                                          §§goto(addr91);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§_-xD§);
                                                                                          if(_loc5_ || _loc3_)
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr361);
                                                                                          }
                                                                                          §§goto(addr365);
                                                                                       }
                                                                                       addr361:
                                                                                    }
                                                                                    §§goto(addr124);
                                                                                 }
                                                                                 §§goto(addr105);
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        this.stop();
                                                                        break loop9;
                                                                        addr329:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(this.§_-pr§)
                                                                        {
                                                                           §§goto(addr204);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.§_-xD§ = new §_-rZ§();
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr286:
                                                         }
                                                         else
                                                         {
                                                            addr324:
                                                            if(_loc4_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            this.§_-c7§("Fatal error: The application lost the device context!");
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      continue loop12;
                                                   }
                                                   if(!_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop8;
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr128);
                                                   §§push(this.§_-xD§);
                                                }
                                                §§goto(addr349);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr324);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§_-Q7§)).§_-Q7§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§_-Q7§ = _loc3_;
                  }
                  if(!_loc4_)
                  {
                     this.§_-zY§ = §_-Q7§;
                     §§goto(addr370);
                  }
               }
               §§goto(addr286);
            }
            §§goto(addr348);
         }
         §§goto(addr208);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            this.§_-0D§();
         }
         §§push(getTimer() / 1000);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_ || param1)
         {
            §§push(§§pop() - this.§_-tZ§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§_-Le§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(_loc5_ || _loc3_)
                           {
                              this.render();
                              while(true)
                              {
                              }
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_ > 1);
                              if(_loc5_)
                              {
                                 break;
                              }
                              addr136:
                              while(true)
                              {
                                 §§pop();
                                 continue loop4;
                              }
                           }
                           continue;
                           addr119:
                        }
                        loop5:
                        for(; this.§_-02N§; §§goto(addr128))
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 this.§_-ui§();
                              }
                              addr82:
                           }
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 continue loop5;
                              }
                              if(!(_loc4_ && _loc2_))
                              {
                                 break loop5;
                              }
                              §§goto(addr119);
                           }
                        }
                        return;
                     }
                     continue;
                     addr117:
                  }
               }
               §§goto(addr136);
            }
         }
         §§goto(addr82);
      }
      
      private function §_-00r§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-0D§();
         }
         do
         {
            this.§_-qN§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc3_ && _loc3_);
         
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() / this.§_-09§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(param2);
         if(!_loc7_)
         {
            §§push(§§pop() / this.§_-Cx§);
            if(!_loc7_)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc6_ || param3)
            {
               if(param3)
               {
                  §§push(this.§_-qN§);
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-09§);
                     loop1:
                     while(true)
                     {
                        if(_loc6_ || param2)
                        {
                           if(_loc6_ || this)
                           {
                              §§pop().stageWidth = §§pop();
                              loop2:
                              while(true)
                              {
                                 §§push(this.§_-qN§);
                                 while(true)
                                 {
                                    if(_loc6_ || param2)
                                    {
                                       §§push(this.§_-Cx§);
                                       if(_loc6_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc6_)
                                                {
                                                   addr149:
                                                   if(!(_loc6_ || this))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      addr159:
                                                      §§push(_loc4_);
                                                      if(!_loc7_)
                                                      {
                                                         addr162:
                                                         §§pop().stageHeight = §§pop() / §§pop();
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  this.§_-ka§ = param1;
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     this.§_-Aa§ = param2;
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        continue loop6;
                                                                        addr62:
                                                                        §§pop().dispatchEvent(new §_-HA§(flash.events.Event.RESIZE,param1,param2));
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-qN§);
                                                                  addr202:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-Cx§);
                                                                     addr204:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_ || this)
                                                                        {
                                                                           §§pop().stageHeight = §§pop();
                                                                           §§goto(addr212);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                           }
                                                                           addr219:
                                                                        }
                                                                     }
                                                                     continue loop10;
                                                                  }
                                                               }
                                                               addr224:
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr221:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            addr222:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().stageWidth = §§pop();
                                                      §§goto(addr224);
                                                   }
                                                }
                                                §§goto(addr162);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr149);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                       }
                                       addr217:
                                    }
                                    §§goto(addr219);
                                    addr116:
                                    §§push(this.§_-qN§);
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr204);
                     }
                  }
               }
               §§goto(addr215);
            }
            §§goto(addr212);
         }
         §§goto(addr34);
      }
      
      public function §_-P7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.setCanvasSize(this.§_-09§,this.§_-Cx§);
         }
      }
      
      private function §_-04d§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!(_loc9_ && _loc3_))
         {
            §§push(this.§_-Le§);
            if(_loc10_ || param1)
            {
               §§push(!§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        §§pop();
                        if(_loc10_ || _loc3_)
                        {
                           §§push(this.§_-u2§);
                           if(!(_loc9_ && _loc3_))
                           {
                              §§push(!§§pop());
                              if(!(_loc9_ && _loc3_))
                              {
                                 addr85:
                                 if(§§pop())
                                 {
                                    if(_loc10_ || this)
                                    {
                                       §§goto(addr93);
                                    }
                                 }
                                 else
                                 {
                                    addr104:
                                    if(param1 is MouseEvent)
                                    {
                                       addr105:
                                       §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                       if(_loc10_ || param1)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc10_)
                                          {
                                             addr174:
                                             _loc3_ = Number(_loc6_.stageY);
                                             loop4:
                                             while(true)
                                             {
                                                _loc4_ = 0;
                                                loop2:
                                                do
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(param1.type != MouseEvent.MOUSE_DOWN)
                                                      {
                                                         if(param1.type == MouseEvent.MOUSE_UP)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               this.§else§ = false;
                                                            }
                                                            if(_loc10_ || param1)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               continue loop2;
                                                            }
                                                            addr159:
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  break loop3;
                                                                  addr166:
                                                               }
                                                               continue loop4;
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr205:
                                                   var _loc8_:* = param1.type;
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§push(0);
                                                            if(_loc9_ && _loc2_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr460:
                                                            §§push(4);
                                                            if(!_loc9_)
                                                            {
                                                               addr463:
                                                            }
                                                            else
                                                            {
                                                               addr476:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(1);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  addr481:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(§_-tW§.§_-h4§);
                                                                        if(_loc10_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              addr584:
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop() - this.§_-1s§.y);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr518:
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr528:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   addr535:
                                                                                                   _loc3_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(_loc10_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               loop8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() < this.§_-1s§.top);
                                                                                                                  loop9:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        if(!(_loc10_ || _loc3_))
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr711:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop22:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr713:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          addr692:
                                                                                                                                          do
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() >= this.§_-1s§.right);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(!_loc9_);
                                                                                                                                          
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr701:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr702:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr710:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           loop11:
                                                                                                                           while(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 loop12:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    addr689:
                                                                                                                                    addr635:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       addr607:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() >= this.§_-1s§.bottom);
                                                                                                                                          addr611:
                                                                                                                                          while(!(_loc9_ && _loc3_))
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          continue loop9;
                                                                                                                                          §§goto(addr528);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    loop17:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ && _loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop12;
                                                                                                                                       }
                                                                                                                                       §§pop();
                                                                                                                                       loop18:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             break loop17;
                                                                                                                                          }
                                                                                                                                          if(_loc10_ || param1)
                                                                                                                                          {
                                                                                                                                             addr587:
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §_-tW§.§_-h4§);
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr611);
                                                                                                                                                   }
                                                                                                                                                   loop19:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               break loop19;
                                                                                                                                                            }
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         addr601:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            if(!(_loc9_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - this.§_-1s§.x);
                                                                                                                                                               if(_loc9_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  continue loop8;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            continue loop8;
                                                                                                                                                         }
                                                                                                                                                         addr548:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   return;
                                                                                                                                                   addr599:
                                                                                                                                                }
                                                                                                                                                continue loop17;
                                                                                                                                             }
                                                                                                                                             addr587:
                                                                                                                                          }
                                                                                                                                          §§goto(addr713);
                                                                                                                                       }
                                                                                                                                       §§goto(addr607);
                                                                                                                                    }
                                                                                                                                    §§goto(addr689);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc10_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ && param1)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr635);
                                                                                                                                 }
                                                                                                                                 §§goto(addr599);
                                                                                                                              }
                                                                                                                              §§goto(addr711);
                                                                                                                           }
                                                                                                                           §§goto(addr702);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr604:
                                                                                                         }
                                                                                                         §§goto(addr548);
                                                                                                      }
                                                                                                      §§goto(addr577);
                                                                                                      §§goto(addr535);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§_-WY§.§_-f1§(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr536);
                                                                                                   }
                                                                                                   addr536:
                                                                                                   return;
                                                                                                   addr547:
                                                                                                   addr500:
                                                                                                }
                                                                                                §§goto(addr607);
                                                                                             }
                                                                                             §§goto(addr692);
                                                                                          }
                                                                                          §§goto(addr569);
                                                                                       }
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr706:
                                                                                    }
                                                                                    §§goto(addr710);
                                                                                 }
                                                                                 §§goto(addr528);
                                                                              }
                                                                              addr584:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr283:
                                                                              §§push(§§pop());
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr286:
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       addr296:
                                                                                       break;
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr547);
                                                                              }
                                                                              addr268:
                                                                           }
                                                                           §§goto(addr587);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr367:
                                                                           _loc5_ = §§pop();
                                                                           addr366:
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr500);
                                                                     case 1:
                                                                        §§goto(addr366);
                                                                     case 2:
                                                                        addr358:
                                                                        _loc5_ = §_-tW§.§_-0Cc§;
                                                                        §§push(§_-tW§.§_-Ua§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr584);
                                                                     case 3:
                                                                        addr350:
                                                                        _loc5_ = §_-tW§.§_-h4§;
                                                                        §§goto(addr296);
                                                                        addr349:
                                                                     case 4:
                                                                        §§push(§_-tW§.§_-0Cc§);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 addr318:
                                                                                 §§push(§§pop());
                                                                                 if(_loc10_ || this)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr604);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr350);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr367);
                                                                              }
                                                                              §§goto(addr547);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr358);
                                                                           }
                                                                        }
                                                                        §§goto(addr318);
                                                                     case 5:
                                                                        §§push(this.§else§);
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(§_-tW§.§_-Ua§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr367);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             §§goto(addr584);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr318);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr587);
                                                                                    }
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 §§goto(addr350);
                                                                              }
                                                                              §§goto(addr713);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§_-tW§.§for §);
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§goto(addr283);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr349);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr587);
                                                                              }
                                                                           }
                                                                           §§goto(addr286);
                                                                        }
                                                                        §§goto(addr701);
                                                                  }
                                                                  §§goto(addr706);
                                                                  §§push(_loc2_);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr463);
                                                               }
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_END === _loc8_)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(2);
                                                               if(_loc10_)
                                                               {
                                                                  §§goto(addr481);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr476);
                                                               }
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(3);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§goto(addr481);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr476);
                                                               }
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_UP === _loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr460);
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                         {
                                                            §§goto(addr481);
                                                            §§push(6);
                                                         }
                                                         §§goto(addr481);
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            §§goto(addr476);
                                                         }
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                   §§goto(addr460);
                                                }
                                                while(!_loc10_);
                                                
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§else§ = true;
                                             §§goto(addr159);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr174);
                                    }
                                    else
                                    {
                                       §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                       if(!_loc9_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc10_)
                                          {
                                             addr193:
                                             _loc3_ = Number(_loc7_.stageY);
                                             if(_loc9_ && this)
                                             {
                                             }
                                             §§goto(addr205);
                                          }
                                          _loc4_ = _loc7_.touchPointID;
                                          §§goto(addr205);
                                       }
                                       §§goto(addr193);
                                    }
                                 }
                                 §§goto(addr105);
                              }
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr93);
                     }
                  }
                  §§goto(addr85);
               }
               §§goto(addr104);
            }
            §§goto(addr85);
         }
         addr93:
      }
      
      private function get §_-ig§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §_-XF§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_)
         {
            if(param1 in this.§_-00j§)
            {
               if(!_loc6_)
               {
                  throw new Error("Another program with this name is already registered");
                  addr38:
               }
            }
            if(this.§_-pr§ != null)
            {
               (_loc4_ = this.§_-pr§.createProgram()).upload(param2,param3);
               if(!_loc6_)
               {
                  this.§_-00j§[param1] = _loc4_;
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      public function §_-wI§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§_-NB§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               do
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§_-00j§[param1];
                  }
                  while(!_loc4_);
                  
               }
               while(!(_loc4_ || _loc3_));
               
               addr57:
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §_-NB§(param1:String) : Program3D
      {
         return this.§_-00j§[param1] as Program3D;
      }
      
      public function §_-TJ§(param1:String) : Boolean
      {
         return param1 in this.§_-00j§;
      }
      
      public function get §_-lx§() : Boolean
      {
         return this.§_-Le§;
      }
      
      public function get §_-CK§() : §_-RO§
      {
         return this.§_-mY§;
      }
      
      public function get §_-0J§() : Boolean
      {
         return this.§_-Sg§;
      }
      
      public function set §_-0J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Sg§ = param1;
            while(this.§_-pr§)
            {
               if(!_loc2_)
               {
                  break;
               }
               addr50:
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               addr46:
               this.§_-WY§.§_-0J§ = param1;
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§_-05i§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-05i§ = param1;
            while(this.§_-pr§)
            {
               if(!(_loc3_ && this))
               {
                  if(_loc2_)
                  {
                     this.§_-pr§.enableErrorChecking = param1;
                     addr55:
                     break;
                  }
                  continue;
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function get §_-SU§() : int
      {
         return this.§_-4M§;
      }
      
      public function set §_-SU§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-4M§ = param1;
         }
         do
         {
            this.§_-Rm§();
         }
         while(!_loc2_);
         
      }
      
      public function get §_-Lj§() : Rectangle
      {
         return this.§_-1s§.clone();
      }
      
      public function set §_-Lj§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-1s§ = param1.clone();
         }
         do
         {
            this.§_-Rm§();
         }
         while(!(_loc3_ || this));
         
      }
      
      public function get §_-gX§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§_-02N§ == null)
            {
               if(_loc3_)
               {
                  this.§_-02N§ = new Sprite();
                  addr57:
                  _loc1_ = new ContextMenu();
                  if(!_loc2_)
                  {
                     _loc1_.hideBuiltInItems();
                     loop0:
                     while(true)
                     {
                        addr71:
                        while(true)
                        {
                           this.§_-02N§.contextMenu = _loc1_;
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 this.§_-ui§();
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  while(false)
                  {
                     §§goto(addr71);
                  }
               }
               §§goto(addr57);
            }
            return this.§_-02N§;
         }
         §§goto(addr57);
      }
      
      public function get stage() : §_-uY§.Stage
      {
         return this.§_-qN§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §_-005§() : flash.display.Stage
      {
         return this.§_-07F§;
      }
      
      public function get §_-M7§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-VR§);
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
