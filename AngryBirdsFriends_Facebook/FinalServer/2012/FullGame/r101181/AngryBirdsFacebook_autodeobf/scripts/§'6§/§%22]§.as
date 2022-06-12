package §'6§
{
   import §#x§.§%"'§;
   import §0!R§.Texture;
   import §1!$§.DisplayObject;
   import §1!$§.Stage;
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
   import starling.events.§"U§;
   import starling.events.§,"E§;
   import starling.events.§4=§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §"]§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §0!=§:§"]§;
      
      private static var §3!#§:Boolean;
      
      private static var §7"+§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §^!w§:§1!$§.Stage;
      
      private var §#U§:Class;
      
      private var §!!]§:§1!$§.DisplayObject;
      
      private var §9!h§:§%"'§;
      
      private var §=z§:Boolean;
      
      private var §3!c§:Boolean;
      
      private var §!"A§:§'"3§;
      
      private var §-!Z§:§,"E§;
      
      private var §&Z§:int;
      
      private var §-!O§:Boolean;
      
      private var §+"6§:Boolean;
      
      private var §&"2§:Number;
      
      private var §@"E§:Rectangle;
      
      private var §^"-§:Boolean;
      
      private var §"!U§:flash.display.Stage;
      
      private var §=f§:Sprite;
      
      private var §="!§:Context3D;
      
      private var §@@§:Dictionary;
      
      private var §=E§:int;
      
      private var §'H§:Boolean;
      
      private var §#!+§:Number;
      
      private var §0!k§:Number;
      
      private var §8!G§:Number;
      
      private var §1!M§:Number;
      
      private var §&"8§:Number;
      
      private var §^"+§:Number;
      
      private var § !$§:Function;
      
      private var §%!6§:uint;
      
      private var §41§:String;
      
      private var §%X§:Bitmap;
      
      private var §^!W§:Boolean = false;
      
      private var §!!h§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §4@§:Boolean = false;
      
      public function §"]§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_)
         {
            super();
            if(!(_loc10_ && param1))
            {
               if(param2 == null)
               {
                  if(_loc9_)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop6:
                  while(true)
                  {
                     this.§-!O§ = false;
                     loop7:
                     for(; !_loc10_; while(!(_loc10_ && this))
                     {
                        this.§@@§ = new Dictionary();
                        if(_loc10_)
                        {
                           continue;
                        }
                        if(!_loc10_)
                        {
                           if(!_loc10_)
                           {
                              if(_loc9_)
                              {
                                 if(_loc9_)
                                 {
                                    if(false)
                                    {
                                       §§goto(addr124);
                                    }
                                    else
                                    {
                                       var _loc7_:int = 0;
                                       var _loc8_:* = this.§8!U§;
                                       addr330:
                                       for each(_loc6_ in _loc8_)
                                       {
                                          if(!_loc10_)
                                          {
                                             param2.addEventListener(_loc6_,this.§]!p§,false,0,true);
                                          }
                                          §§goto(addr330);
                                       }
                                       if(!(_loc10_ && param3))
                                       {
                                          param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!-§,false,0,true);
                                          param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!-§,false,0,true);
                                          addr461:
                                       }
                                       this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-""§,false,1,true);
                                       this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§&C§,false,1,true);
                                       this.mStage3D.visible = false;
                                       this.§@!f§(true);
                                       addr406:
                                       addr451:
                                       addr440:
                                       if(!(_loc10_ && param2))
                                       {
                                          this.§%!6§ = param2.color;
                                          addr372:
                                          if(_loc9_ || param3)
                                          {
                                             if(_loc9_)
                                             {
                                                if(_loc9_ || param3)
                                                {
                                                   this.§41§ = param5;
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            §§goto(addr461);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr406);
                                                   }
                                                   §§goto(addr372);
                                                }
                                                §§goto(addr451);
                                             }
                                             §§goto(addr440);
                                          }
                                          §§goto(addr406);
                                       }
                                       addr418:
                                       §§goto(addr418);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr254);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr169);
                        }
                        else
                        {
                           §§goto(addr143);
                        }
                     })
                     {
                        this.§+"6§ = false;
                        while(!(_loc10_ && param2))
                        {
                           addr150:
                           if(!(_loc10_ && param3))
                           {
                              addr169:
                              while(true)
                              {
                                 this.§&"2§ = getTimer() / 1000;
                                 continue loop7;
                              }
                              while(_loc10_)
                              {
                                 while(true)
                                 {
                                    this.§8!G§ = this.§#!+§;
                                    addr301:
                                    while(true)
                                    {
                                       §§goto(addr150);
                                    }
                                 }
                              }
                              continue loop6;
                              addr169:
                              addr124:
                           }
                           else
                           {
                              §§goto(addr301);
                           }
                           this.§1!M§ = this.§0!k§;
                           while(true)
                           {
                              this.§&"8§ = param2.stageWidth;
                              while(!(_loc10_ && this))
                              {
                                 while(true)
                                 {
                                    this.§^"+§ = param2.stageHeight;
                                    loop4:
                                    while(true)
                                    {
                                       §^!E§ = true;
                                       addr270:
                                       while(true)
                                       {
                                          this.§'!§();
                                          addr265:
                                          while(true)
                                          {
                                             this.§#U§ = param1;
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 if(_loc10_ && param1)
                                 {
                                    continue;
                                 }
                                 this.§&Z§ = 0;
                                 §§goto(addr169);
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc9_)
                           {
                              §§goto(addr196);
                           }
                           §§goto(addr247);
                        }
                     }
                     while(true)
                     {
                        if(!(_loc10_ && this))
                        {
                           §§goto(addr237);
                        }
                        §§goto(addr270);
                     }
                  }
               }
               else if(param1 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr289);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_ || param3)
                     {
                        addr74:
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr84:
                        if(param4 == null)
                        {
                           if(_loc9_)
                           {
                              param4 = param2.stage3Ds[0];
                           }
                           this.§0!k§ = param3.height;
                           §§goto(addr306);
                           addr106:
                        }
                        this.§#!+§ = param3.width;
                        if(_loc9_ || param3)
                        {
                        }
                        §§goto(addr249);
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr84);
               }
               §§goto(addr249);
            }
            §§goto(addr270);
         }
         §§goto(addr74);
      }
      
      public static function get §4"!§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§!X§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr46:
                     §§push(§!X§.§'H§);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr55:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr55);
            }
         }
         §§goto(addr46);
      }
      
      public static function §+"E§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§0!=§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§0!=§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§^!W§);
                                 addr146:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(!§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             addr150:
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§0!=§);
                                                loop11:
                                                while(!_loc1_)
                                                {
                                                   continue loop0;
                                                   addr142:
                                                   §§push(§0!=§);
                                                   if(_loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   §§push(§§pop().§="!§.driverInfo == "Disposed");
                                                   if(!(_loc1_ && §"]§))
                                                   {
                                                      addr35:
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         addr43:
                                                         §§push(!§§pop());
                                                         if(_loc1_)
                                                         {
                                                            while(!_loc1_)
                                                            {
                                                               if(!(_loc1_ && _loc1_))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc1_ && _loc2_))
                                                                  {
                                                                     if(!(_loc1_ && §"]§))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           addr130:
                                                                           break loop8;
                                                                           addr130:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           §§pop();
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc1_ && _loc2_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           §§goto(addr142);
                                                                           §§goto(addr35);
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop7;
                                                            addr95:
                                                         }
                                                         if(_loc2_ || §"]§)
                                                         {
                                                            break loop8;
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                   §§goto(addr43);
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr150);
      }
      
      public static function get §!X§() : §"]§
      {
         return §0!=§;
      }
      
      public static function get §^!v§() : §%"'§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§0!=§);
            if(!_loc2_)
            {
               return !!§§pop() ? §0!=§.§^!v§ : null;
            }
         }
         §§goto(addr23);
      }
      
      public static function get §;!5§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;!5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §^!E§() : Boolean
      {
         return §3!#§;
      }
      
      public static function set §^!E§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §"]§))
         {
            if(§0!=§ != null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
               while(true)
               {
               }
               addr59:
            }
            while(true)
            {
               §3!#§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr59);
            }
         }
      }
      
      public static function §3`§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(§!X§)
            {
               if(!_loc4_)
               {
                  §§goto(addr23);
               }
            }
            return null;
         }
         addr23:
         return Texture.§ ![§(§!X§.§="!§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_ || _loc3_)
         {
            §§push(§0!=§);
            if(_loc4_ || _loc3_)
            {
               if(§§pop().§="!§)
               {
                  if(_loc4_)
                  {
                     §§push(§0!=§);
                     if(!_loc3_)
                     {
                        §§pop().§="!§.drawToBitmapData(param1);
                        if(!(_loc4_ || _loc2_))
                        {
                           addr93:
                           _loc2_ = §0!=§.§!"A§.canvas;
                           addr91:
                           if(!(_loc3_ && _loc2_))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr91);
               }
               else
               {
                  §§push(§0!=§);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop().§!"A§);
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr91);
                        }
                        addr115:
                        return;
                     }
                     §§goto(addr93);
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function get §8!j§() : §1!$§.DisplayObject
      {
         return this.§!!]§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§%!6§ = param1;
         }
      }
      
      public function get §!"5§() : Number
      {
         return this.§#!+§;
      }
      
      public function get §0!w§() : Number
      {
         return this.§0!k§;
      }
      
      public function §5!y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§41§);
         }
         catch(e:Error)
         {
            §"!D§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!_loc6_)
         {
            this.§4@§ = true;
            loop0:
            while(true)
            {
               this.§"!U§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§!-§,false);
               loop1:
               while(true)
               {
                  this.§"!U§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§!-§,false);
                  addr66:
                  while(!_loc6_)
                  {
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-""§,false);
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§&C§,false);
            if(_loc5_)
            {
               if(!_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr40);
               }
               §§goto(addr66);
            }
            §§goto(addr49);
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§8!U§;
         loop6:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc6_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc5_)
                  {
                     this.§"!U§.removeEventListener(_loc1_,this.§]!p§,false);
                  }
                  continue;
               }
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     if(!_loc6_)
                     {
                        _loc3_ = 0;
                        if(_loc5_)
                        {
                           _loc4_ = this.§@@§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop6;
                           }
                           addr154:
                           if(_loc5_)
                           {
                              if(this.§="!§)
                              {
                                 while(true)
                                 {
                                    this.§="!§.dispose();
                                    addr288:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr285:
                              }
                              while(true)
                              {
                                 §§push(this.§-!Z§);
                                 if(!(_loc6_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       addr271:
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§-!Z§);
                                             addr280:
                                             while(true)
                                             {
                                                §§pop().dispose();
                                                addr281:
                                                while(true)
                                                {
                                                }
                                             }
                                             §§goto(addr271);
                                          }
                                          addr278:
                                       }
                                       §§goto(addr281);
                                    }
                                    while(true)
                                    {
                                       §§push(this.§!"A§);
                                       if(!_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             loop12:
                                             while(_loc5_)
                                             {
                                                §§push(this.§!"A§);
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   loop24:
                                                   while(true)
                                                   {
                                                      addr223:
                                                      while(true)
                                                      {
                                                         if(§0!=§ == this)
                                                         {
                                                            while(!(_loc6_ && _loc1_))
                                                            {
                                                               §0!=§ = null;
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr281);
                                                            addr227:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Boolean(this.§%X§));
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr215:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(Boolean(this.§%X§.bitmapData));
                                                                           if(!(_loc5_ || this))
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr285);
                                                                        }
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                               }
                                                               loop20:
                                                               while(§§pop())
                                                               {
                                                                  while(!_loc6_)
                                                                  {
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           this.§%X§.bitmapData.dispose();
                                                                           do
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 continue loop12;
                                                                              }
                                                                              §§goto(addr215);
                                                                           }
                                                                           while(this.§%X§.bitmapData = null, _loc6_);
                                                                           
                                                                           if(!_loc6_)
                                                                           {
                                                                              break loop20;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop24;
                                                                     }
                                                                     §§goto(addr227);
                                                                  }
                                                                  §§goto(addr237);
                                                               }
                                                               return;
                                                            }
                                                         }
                                                         continue loop24;
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr288);
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr248);
                                    }
                                 }
                                 §§goto(addr280);
                              }
                           }
                           §§goto(addr281);
                           addr153:
                           addr151:
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr278);
                  }
                  §§goto(addr154);
               }
               §§goto(addr153);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc2_ = §§nextvalue(_loc3_,_loc4_);
               if(!(_loc6_ && _loc3_))
               {
                  _loc2_.dispose();
               }
               continue;
            }
            §§goto(addr154);
         }
      }
      
      private function §[!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§="!§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§@@§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§="!§)
                  {
                     this.§'H§ = true;
                     do
                     {
                        if(!(_loc1_ && this))
                        {
                           if(!_loc1_)
                           {
                              if(_loc1_)
                              {
                                 loop3:
                                 while(this.§="!§.driverInfo.indexOf("Software") >= 0)
                                 {
                                    while(true)
                                    {
                                       this.§="!§.enableErrorChecking = this.§+"6§;
                                       continue loop3;
                                    }
                                 }
                                 addr30:
                              }
                              continue;
                           }
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr100);
                           }
                        }
                        else
                        {
                           addr93:
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr30);
                     }
                     while(this.§&!U§(), _loc1_);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      private function §7o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§^!w§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§!!]§);
                     loop2:
                     while(true)
                     {
                        §§push(null);
                        loop3:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 this.§!!]§ = new this.§#U§();
                              }
                              while(true)
                              {
                                 addr90:
                                 while(!(_loc1_ && this))
                                 {
                                    continue loop0;
                                    §§pop().addChild(this.§!!]§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       return;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§!!]§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(_loc1_ && this)
                              {
                                 continue loop3;
                              }
                              if(§§pop() != §§pop())
                              {
                                 continue loop0;
                              }
                              if(!_loc1_)
                              {
                                 if(_loc2_ || this)
                                 {
                                    throw new Error("Invalid root class: " + this.§#U§);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr90);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §&!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!h§ = true;
            do
            {
               this.mStage3D.x = this.§@"E§.x;
               do
               {
                  this.mStage3D.y = this.§@"E§.y;
               }
               while(_loc2_ && _loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            §§push(§+"E§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(_loc3_ || _loc2_)
               {
                  break;
               }
               addr81:
               while(true)
               {
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function set § "0§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§ !$§ = param1;
         }
      }
      
      private function §!J§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_)
         {
            this.§=f§.x = this.§@"E§.x;
            if(!(_loc4_ && _loc1_))
            {
               addr35:
               this.§=f§.y = this.§@"E§.y;
            }
            var _loc1_:int = this.§=f§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§=f§.parent;
            if(!_loc4_)
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
                                       while(_loc5_)
                                       {
                                          addr150:
                                          if(!(_loc5_ || _loc1_))
                                          {
                                             continue;
                                          }
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             if(§§pop())
                                             {
                                                loop18:
                                                while(_loc5_ || _loc3_)
                                                {
                                                   addr172:
                                                   §§pop();
                                                   loop17:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         §§push(this.§!"A§);
                                                         if(_loc5_ || _loc1_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(Boolean(§§pop().canvas));
                                                               if(!(_loc5_ || _loc2_))
                                                               {
                                                                  continue loop18;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  while(§§pop())
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        addr88:
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(this.§!"A§);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              addr104:
                                                                              §§pop().setCanvasSize(this.§8!G§,this.§1!M§,this.§@"E§.width / this.§^!w§.stageWidth,this.§@"E§.height / this.§^!w§.stageHeight);
                                                                              addr123:
                                                                              if(!(_loc4_ && _loc1_))
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§!"A§);
                                                                                       addr135:
                                                                                       addr181:
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr150);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break loop15;
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             this.§"!U§.removeChild(this.§=f§);
                                                                                             break loop17;
                                                                                          }
                                                                                          addr211:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(Boolean(_loc2_));
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr180);
                                                                                                }
                                                                                                addr179:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§"!U§.addChild(this.§=f§);
                                                                                                   addr227:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop14;
                                                                                                      §§goto(addr88);
                                                                                                   }
                                                                                                }
                                                                                                addr222:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop6;
                                                                                    addr132:
                                                                                 }
                                                                                 addr238:
                                                                                 _loc3_ = this.§!"A§.canvas;
                                                                                 if(!(_loc4_ && this))
                                                                                 {
                                                                                    if(this.§%X§.bitmapData != _loc3_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          this.§%X§.bitmapData = _loc3_;
                                                                                       }
                                                                                       addr304:
                                                                                    }
                                                                                    addr262:
                                                                                    if(this.§"!U§.getChildIndex(this.§=f§) > 0)
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          addr287:
                                                                                          this.§"!U§.removeChild(this.§=f§);
                                                                                       }
                                                                                       this.§"!U§.addChildAt(this.§=f§,0);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr262);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr304);
                                                                                       }
                                                                                       addr292:
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                              break loop17;
                                                                           }
                                                                           §§goto(addr238);
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr123);
                                                                  }
                                                                  return;
                                                                  addr77:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§goto(addr211);
                                                               }
                                                            }
                                                            §§goto(addr135);
                                                         }
                                                         §§goto(addr104);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr132);
                                                      }
                                                   }
                                                }
                                                while(_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                addr165:
                                                continue loop2;
                                                addr206:
                                             }
                                             §§goto(addr77);
                                          }
                                          §§goto(addr209);
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
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(!(_loc5_ || this))
                                    {
                                       continue loop1;
                                    }
                                    §§goto(addr206);
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr222);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr190);
         }
         §§goto(addr35);
      }
      
      private function §"!D§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_ || _loc3_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               loop1:
               for(; _loc4_; loop3:
               while(!(_loc5_ && this))
               {
                  _loc2_.autoSize = TextFieldAutoSize.CENTER;
                  loop4:
                  while(true)
                  {
                     _loc2_.text = param1;
                     loop5:
                     for(; _loc4_; if(!_loc4_)
                     {
                        continue;
                     },if(_loc5_)
                     {
                        continue loop3;
                     },_loc2_.backgroundColor = 4456448,§§goto(addr51))
                     {
                        _loc2_.x = (this.§^!w§.stageWidth - _loc2_.width) / 2;
                        while(_loc4_)
                        {
                           loop8:
                           while(_loc4_ || _loc2_)
                           {
                              _loc2_.background = true;
                              while(true)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    continue loop5;
                                 }
                                 continue loop8;
                                 addr51:
                                 while(_loc4_ || _loc2_)
                                 {
                                    this.§&&§.addChild(_loc2_);
                                    if(!_loc5_)
                                    {
                                       return;
                                    }
                                 }
                              }
                              continue loop5;
                           }
                        }
                        continue loop4;
                     }
                     §§goto(addr161);
                  }
               })
               {
                  _loc2_.wordWrap = true;
                  while(true)
                  {
                     _loc2_.width = this.§^!w§.stageWidth * 0.75;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.y = (this.§^!w§.stageHeight - _loc2_.height) / 2;
            §§goto(addr96);
         }
      }
      
      public function §'!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0!=§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§=z§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=z§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function §@!f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§3!c§ = param1;
         }
      }
      
      private function §7!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!W§ = true;
         }
         loop0:
         while(this.§%X§ == null)
         {
            do
            {
               this.§%X§ = new Bitmap();
               while(_loc2_ || this)
               {
                  this.§&&§.addChild(this.§%X§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr52);
               }
               continue loop0;
            }
            while(_loc1_ && _loc2_);
            
            break;
         }
      }
      
      private function §&C§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7!'§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      private function §-""§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§4@§);
            if(!(_loc5_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  addr43:
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§7"+§)).§7"+§);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_)
                  {
                     _loc2_.§7"+§ = _loc3_;
                  }
                  if(_loc4_)
                  {
                     this.§=E§ = §7"+§;
                     while(true)
                     {
                        §§push(this.§!"A§);
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              while(!_loc5_)
                              {
                                 §§push(this.§!"A§);
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr370:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              continue;
                              addr365:
                           }
                           while(true)
                           {
                              §§push(§"]§.§^!E§);
                              loop23:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop24:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop25:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr358:
                                             while(true)
                                             {
                                                §§push(Boolean(this.§="!§));
                                             }
                                          }
                                          addr357:
                                       }
                                       while(true)
                                       {
                                          addr346:
                                          loop0:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   this.§'!§();
                                                   while(true)
                                                   {
                                                      this.§[!P§();
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            this.§7o§();
                                                            loop4:
                                                            while(_loc4_ || _loc3_)
                                                            {
                                                               §§push(Boolean(this.§="!§));
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop24;
                                                                     }
                                                                     if(!(_loc4_ || _loc3_))
                                                                     {
                                                                        continue loop23;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop25;
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr297:
                                                                           do
                                                                           {
                                                                              §§push(this.§'H§);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                           }
                                                                           while(!_loc5_);
                                                                           
                                                                           continue loop0;
                                                                        }
                                                                        addr296:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              this.mStage3DEnabled = false;
                                                                           }
                                                                           loop6:
                                                                           while(true)
                                                                           {
                                                                              this.§="!§ = null;
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    this.stop();
                                                                                    break loop4;
                                                                                    addr350:
                                                                                 }
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    this.§7!'§();
                                                                                    loop8:
                                                                                    while(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       §§goto(addr370);
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr365);
                                                                                 loop12:
                                                                                 while(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       addr164:
                                                                                       §§push(this.§!"A§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          §§pop().clear(null,this.§%!6§);
                                                                                          loop13:
                                                                                          do
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§-!Z§.§5">§ = this.§-!O§;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc4_ || param1)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§goto(addr297);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               this.§!"A§ = new §'"3§();
                                                                                                               §§goto(addr207);
                                                                                                            }
                                                                                                            §§goto(addr370);
                                                                                                         }
                                                                                                         addr196:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr221:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr207);
                                                                                          }
                                                                                          while(!_loc4_);
                                                                                          
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             return;
                                                                                             addr88:
                                                                                          }
                                                                                          continue loop3;
                                                                                       }
                                                                                       addr124:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ && _loc2_)
                                                                                          {
                                                                                             break loop7;
                                                                                          }
                                                                                          §§pop().setCanvasSize(this.§8!G§,this.§1!M§,this.§@"E§.width / this.§^!w§.stageWidth,this.§@"E§.height / this.§^!w§.stageHeight);
                                                                                          continue loop12;
                                                                                          §§goto(addr164);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr358);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr369);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!this.§="!§)
                                                                           {
                                                                              this.§!"A§ = new §#"C§();
                                                                              continue loop3;
                                                                           }
                                                                           §§goto(addr196);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr357);
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            return;
                                                         }
                                                         addr347:
                                                         addr347:
                                                         this.§"!D§("Fatal error: The application lost the device context!");
                                                         §§goto(addr350);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr347);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr369);
                     }
                  }
                  §§goto(addr347);
               }
               §§goto(addr88);
            }
            §§goto(addr346);
         }
         §§goto(addr43);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§'!§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.§&"2§);
            if(!_loc5_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!_loc5_)
            {
               §§push(this.§=z§);
               if(_loc4_ || this)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr126:
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_ > 1);
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       this.render();
                                    }
                                    while(true)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop4;
                                       }
                                       addr64:
                                       if(!_loc5_)
                                       {
                                          this.§!J§();
                                       }
                                       if(_loc4_)
                                       {
                                          §§goto(addr46);
                                       }
                                    }
                                    continue loop4;
                                 }
                                 while(this.§=f§)
                                 {
                                    §§goto(addr64);
                                 }
                                 addr46:
                                 return;
                                 continue loop4;
                              }
                           }
                        }
                        addr125:
                     }
                     §§goto(addr82);
                  }
               }
               §§goto(addr125);
            }
            §§goto(addr126);
         }
         §§goto(addr41);
      }
      
      private function §!-§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!§();
            do
            {
               this.§^!w§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§#!+§);
            if(_loc7_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_ || param1)
            {
               §§push(§§pop() / this.§0!k§);
               if(_loc7_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               if(param3)
               {
                  §§push(this.§^!w§);
                  while(true)
                  {
                     if(_loc7_)
                     {
                        §§push(this.§#!+§);
                        loop1:
                        while(true)
                        {
                           if(_loc7_ || param1)
                           {
                              if(!_loc6_)
                              {
                                 §§pop().stageWidth = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc7_)
                                    {
                                       §§push(this.§^!w§);
                                       loop3:
                                       while(true)
                                       {
                                          §§push(this.§0!k§);
                                          if(_loc7_ || param3)
                                          {
                                             §§push(_loc5_);
                                             if(_loc7_ || param2)
                                             {
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr158:
                                                   §§pop().stageHeight = §§pop();
                                                   loop7:
                                                   do
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§^!w§);
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§#!+§);
                                                                  addr218:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           addr223:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stageWidth = §§pop();
                                                                                 addr225:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§^!w§);
                                                                                    addr199:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc7_ || param1))
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§push(this.§0!k§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§pop().stageHeight = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr222:
                                                                     }
                                                                     §§goto(addr223);
                                                                     continue loop16;
                                                                  }
                                                               }
                                                            }
                                                            addr214:
                                                         }
                                                         while(true)
                                                         {
                                                            this.§8!G§ = param1;
                                                            do
                                                            {
                                                               this.§1!M§ = param2;
                                                               continue loop3;
                                                            }
                                                            while(!(_loc7_ || param1));
                                                            
                                                            continue loop7;
                                                         }
                                                      }
                                                      §§goto(addr225);
                                                   }
                                                   while(_loc6_);
                                                   
                                                   if(_loc7_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr223);
                                             }
                                             else
                                             {
                                                addr157:
                                                §§push(§§pop() / §§pop());
                                             }
                                          }
                                          §§goto(addr158);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr211);
                                 }
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr208);
                        }
                     }
                     §§goto(addr199);
                  }
               }
               §§goto(addr214);
            }
            §§goto(addr225);
         }
         §§goto(addr25);
      }
      
      public function §2!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.setCanvasSize(this.§#!+§,this.§0!k§);
         }
      }
      
      private function §]!p§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!_loc9_)
         {
            §§push(this.§=z§);
            if(_loc10_)
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  if(!§§pop())
                  {
                     if(_loc10_)
                     {
                        addr45:
                        §§pop();
                        if(!(_loc9_ && this))
                        {
                           addr53:
                           §§push(this.§3!c§);
                           if(_loc10_ || _loc2_)
                           {
                              §§push(!§§pop());
                              if(_loc10_ || this)
                              {
                                 addr70:
                                 if(§§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    addr79:
                                    if(param1 is MouseEvent)
                                    {
                                       addr80:
                                       §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                       if(!_loc9_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc10_)
                                          {
                                             addr154:
                                             _loc3_ = Number(_loc6_.stageY);
                                             loop33:
                                             while(true)
                                             {
                                                _loc4_ = 0;
                                                loop31:
                                                while(true)
                                                {
                                                   addr123:
                                                   loop32:
                                                   while(param1.type != MouseEvent.MOUSE_DOWN)
                                                   {
                                                      if(param1.type == MouseEvent.MOUSE_UP)
                                                      {
                                                         if(!(_loc10_ || param1))
                                                         {
                                                            continue loop31;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            this.§^"-§ = false;
                                                            continue loop31;
                                                         }
                                                         addr136:
                                                         addr136:
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ || this))
                                                            {
                                                               continue loop33;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            this.§^"-§ = true;
                                                            §§goto(addr139);
                                                            break loop32;
                                                         }
                                                         addr139:
                                                      }
                                                      var _loc8_:* = param1.type;
                                                      if(_loc10_)
                                                      {
                                                         if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                         {
                                                            if(_loc10_ || param1)
                                                            {
                                                               §§push(0);
                                                               if(!_loc10_)
                                                               {
                                                                  addr433:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr395:
                                                               §§push(2);
                                                               if(_loc10_ || this)
                                                               {
                                                                  addr403:
                                                               }
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                         {
                                                            if(!(_loc9_ && _loc3_))
                                                            {
                                                               §§push(1);
                                                               if(_loc9_ && param1)
                                                               {
                                                                  §§goto(addr403);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr410:
                                                               §§push(3);
                                                               if(_loc9_ && this)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_END === _loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr395);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr410);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  §§goto(addr410);
                                                               }
                                                               addr446:
                                                               loop34:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     §§push(§"U§.§&a§);
                                                                     if(!(_loc10_ || this))
                                                                     {
                                                                        addr296:
                                                                        _loc5_ = §§pop();
                                                                        if(_loc9_ && _loc3_)
                                                                        {
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§push(§§pop());
                                                                     if(!_loc9_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!(_loc10_ || param1))
                                                                        {
                                                                           addr345:
                                                                        }
                                                                        addr645:
                                                                        §§push(_loc2_);
                                                                        loop0:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() < this.§@"E§.left);
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop2:
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr653:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          addr634:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() >= this.§@"E§.right);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr652:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop10:
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   loop11:
                                                                                                   while(!_loc9_)
                                                                                                   {
                                                                                                      §§push(§§pop() < this.§@"E§.top);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     if(_loc9_ && param1)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           return;
                                                                                                                        }
                                                                                                                        addr553:
                                                                                                                        loop21:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc2_);
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           loop23:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       break loop34;
                                                                                                                                    }
                                                                                                                                    addr522:
                                                                                                                                    if(_loc9_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       while(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          §§goto(addr522);
                                                                                                                                       }
                                                                                                                                       continue loop10;
                                                                                                                                       addr629:
                                                                                                                                    }
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          continue loop23;
                                                                                                                                       }
                                                                                                                                       addr477:
                                                                                                                                       if(!(_loc9_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - this.§@"E§.y);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() >= this.§@"E§.bottom);
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop19;
                                                                                                                                             }
                                                                                                                                             continue loop13;
                                                                                                                                             §§goto(addr477);
                                                                                                                                          }
                                                                                                                                          continue loop7;
                                                                                                                                          addr557:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       while(!_loc9_)
                                                                                                                                       {
                                                                                                                                          this.§-!Z§.§#u§(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             return;
                                                                                                                                             addr470:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr514:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    §§goto(addr557);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break loop34;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr544:
                                                                                                                        continue loop0;
                                                                                                                        if(!(_loc9_ && this))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue;
                                                                                                               }
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr634);
                                                                                                }
                                                                                                §§goto(addr653);
                                                                                             }
                                                                                             addr641:
                                                                                          }
                                                                                          §§goto(addr599);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr273:
                                                                        _loc5_ = §§pop();
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              addr278:
                                                                           }
                                                                           §§goto(addr645);
                                                                        }
                                                                     }
                                                                     §§goto(addr653);
                                                                     §§goto(addr278);
                                                                  case 1:
                                                                     addr342:
                                                                     _loc5_ = §"U§.§#1§;
                                                                     addr341:
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr345);
                                                                     }
                                                                     §§goto(addr553);
                                                                  case 2:
                                                                     addr320:
                                                                     §§push(§"U§.§&!I§);
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        addr328:
                                                                        _loc5_ = §§pop();
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           §§goto(addr645);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr341);
                                                                     §§goto(addr553);
                                                                  case 3:
                                                                     addr295:
                                                                     §§goto(addr296);
                                                                  case 4:
                                                                     addr283:
                                                                     §§push(§"U§.§&a§);
                                                                     §§push(§"U§.§&!I§);
                                                                     if(_loc10_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(_loc10_)
                                                                        {
                                                                           §§goto(addr645);
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr296);
                                                                     }
                                                                  case 5:
                                                                     §§push(this.§^"-§);
                                                                     if(_loc10_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§"U§.§#1§);
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             addr263:
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr266:
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   §§goto(addr273);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr328);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §"U§.§&a§);
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§goto(addr544);
                                                                                                   }
                                                                                                   §§goto(addr641);
                                                                                                }
                                                                                                §§goto(addr575);
                                                                                             }
                                                                                             addr532:
                                                                                          }
                                                                                          §§goto(addr266);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr320);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr283);
                                                                                 }
                                                                              }
                                                                              §§goto(addr266);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(§"U§.§<$§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr342);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr283);
                                                                              }
                                                                              §§goto(addr278);
                                                                           }
                                                                           §§goto(addr266);
                                                                        }
                                                                        §§goto(addr532);
                                                                     }
                                                                     §§goto(addr589);
                                                                  default:
                                                                     §§goto(addr645);
                                                               }
                                                               continue loop28;
                                                            }
                                                            if(MouseEvent.MOUSE_UP === _loc8_)
                                                            {
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr430:
                                                                  §§push(4);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§goto(addr433);
                                                                  }
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                            {
                                                               §§goto(addr446);
                                                               §§push(6);
                                                            }
                                                            §§goto(addr446);
                                                            if(!_loc10_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr430);
                                                   }
                                                   if(_loc9_ && _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr136);
                                                }
                                             }
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr154);
                                    }
                                    else
                                    {
                                       §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                       if(_loc10_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc10_ || _loc3_)
                                          {
                                             addr178:
                                             _loc3_ = Number(_loc7_.stageY);
                                             if(!_loc10_)
                                             {
                                             }
                                             §§goto(addr185);
                                          }
                                          _loc4_ = _loc7_.touchPointID;
                                          §§goto(addr156);
                                       }
                                       §§goto(addr178);
                                    }
                                 }
                                 §§goto(addr80);
                              }
                              §§goto(addr79);
                           }
                           §§goto(addr70);
                        }
                        §§goto(addr79);
                     }
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr45);
         }
         §§goto(addr53);
      }
      
      private function get §8!U§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §null§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!_loc6_)
         {
            if(param1 in this.§@@§)
            {
               if(!(_loc6_ && param2))
               {
                  throw new Error("Another program with this name is already registered");
                  addr43:
               }
               else
               {
                  addr63:
                  (_loc4_ = this.§="!§.createProgram()).upload(param2,param3);
                  if(!(_loc6_ && param2))
                  {
                     this.§@@§[param1] = _loc4_;
                  }
               }
            }
            else if(this.§="!§ != null)
            {
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §@2§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§&2§(param1);
         if(_loc4_ || param1)
         {
            if(_loc2_)
            {
               if(_loc4_ || param1)
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§@@§[param1];
                  }
                  while(_loc3_ && param1);
                  
                  addr79:
               }
               §§goto(addr79);
            }
            return;
         }
         §§goto(addr79);
      }
      
      public function §&2§(param1:String) : Program3D
      {
         return this.§@@§[param1] as Program3D;
      }
      
      public function §6!g§(param1:String) : Boolean
      {
         return param1 in this.§@@§;
      }
      
      public function get §=7§() : Boolean
      {
         return this.§=z§;
      }
      
      public function get §^!v§() : §%"'§
      {
         return this.§9!h§;
      }
      
      public function get §5">§() : Boolean
      {
         return this.§-!O§;
      }
      
      public function set §5">§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§-!O§ = param1;
            loop0:
            for(; this.§="!§; while(true)
            {
               if(_loc3_ || _loc2_)
               {
                  break loop0;
               }
               continue loop0;
            })
            {
               if(!(_loc3_ || _loc2_))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§-!Z§.§5">§ = param1;
            §§goto(addr64);
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§+"6§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§+"6§ = param1;
         }
         while(this.§="!§)
         {
            if(!(_loc2_ && this))
            {
               this.§="!§.enableErrorChecking = param1;
            }
            if(_loc3_)
            {
               break;
            }
         }
      }
      
      public function get §][§() : int
      {
         return this.§&Z§;
      }
      
      public function set §][§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&Z§ = param1;
         }
         do
         {
            this.§&!U§();
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function get §?!;§() : Rectangle
      {
         return this.§@"E§.clone();
      }
      
      public function set §?!;§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§@"E§ = param1.clone();
            do
            {
               this.§&!U§();
            }
            while(_loc3_);
            
         }
      }
      
      public function get §&&§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(_loc3_)
         {
            if(this.§=f§ == null)
            {
               if(_loc3_)
               {
                  this.§=f§ = new Sprite();
                  addr28:
               }
               _loc1_ = new ContextMenu();
               if(_loc3_ || _loc3_)
               {
                  _loc1_.hideBuiltInItems();
                  loop0:
                  while(true)
                  {
                     addr78:
                     while(true)
                     {
                        this.§=f§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
                  addr86:
               }
               while(true)
               {
                  this.§!J§();
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr86);
                  }
                  §§goto(addr78);
               }
            }
            return this.§=f§;
         }
         §§goto(addr28);
      }
      
      public function get stage() : §1!$§.Stage
      {
         return this.§^!w§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §@B§() : flash.display.Stage
      {
         return this.§"!U§;
      }
      
      public function get §<Z§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^!W§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
