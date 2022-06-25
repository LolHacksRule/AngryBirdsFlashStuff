package §&p§
{
   import §9N§.§+E§;
   import §?^§.DisplayObject;
   import §?^§.Stage;
   import each.Texture;
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
   import starling.events.§"!#§;
   import starling.events.§,R§;
   import starling.events.§9Q§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §'_§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §5<§:§'_§;
      
      private static var §7f§:Boolean;
      
      private static var §`z§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'_§)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §<!1§:§?^§.Stage;
      
      private var §9K§:Class;
      
      private var §8E§:§?^§.DisplayObject;
      
      private var §-N§:§+E§;
      
      private var §45§:Boolean;
      
      private var §+b§:Boolean;
      
      private var §4h§:§`G§;
      
      private var §[Q§:§"!#§;
      
      private var §do §:int;
      
      private var §?T§:Boolean;
      
      private var §`l§:Boolean;
      
      private var §`[§:Number;
      
      private var §@O§:Rectangle;
      
      private var §`!D§:Boolean;
      
      private var §!'§:flash.display.Stage;
      
      private var §^!§:Sprite;
      
      private var §%!-§:Context3D;
      
      private var §<U§:Dictionary;
      
      private var §@S§:int;
      
      private var §`!B§:Boolean;
      
      private var § "§:Number;
      
      private var §<$§:Number;
      
      private var §!`§:Number;
      
      private var §!I§:Number;
      
      private var §3J§:Number;
      
      private var §6P§:Number;
      
      private var §"4§:Function;
      
      private var §#!A§:uint;
      
      private var §0!E§:String;
      
      private var §?I§:Bitmap;
      
      private var §"G§:Boolean = false;
      
      private var §@;§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §1!§:Boolean = false;
      
      public function §'_§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(_loc10_ || param2)
         {
            super();
            if(_loc10_)
            {
               if(param2 == null)
               {
                  if(_loc10_ || param2)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  addr59:
                  if(param3 == null)
                  {
                     if(!_loc9_)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr74:
                        if(param4 == null)
                        {
                           addr77:
                           param4 = param2.stage3Ds[0];
                        }
                        this.§ "§ = param3.width;
                        this.§<$§ = param3.height;
                        this.§!`§ = this.§ "§;
                        this.§!I§ = this.§<$§;
                        this.§3J§ = param2.stageWidth;
                        if(!_loc9_)
                        {
                           this.§6P§ = param2.stageHeight;
                           if(_loc10_)
                           {
                              §3R§ = true;
                              this.§=!;§();
                              if(!(_loc9_ && param2))
                              {
                                 this.§9K§ = param1;
                                 this.§@O§ = param3;
                                 this.mStage3D = param4;
                                 this.§<!1§ = new §?^§.Stage(param3.width,param3.height,param2.color);
                                 if(_loc10_)
                                 {
                                    this.§!'§ = param2;
                                    if(!(_loc9_ && this))
                                    {
                                       this.§[Q§ = new §"!#§(this.§<!1§);
                                       if(_loc10_)
                                       {
                                          addr172:
                                          this.§-N§ = new §+E§();
                                          addr176:
                                          this.§do § = 0;
                                          if(!_loc9_)
                                          {
                                             §§goto(addr181);
                                          }
                                       }
                                       addr181:
                                       this.§?T§ = false;
                                       if(_loc9_)
                                       {
                                       }
                                       §§goto(addr199);
                                    }
                                    this.§`l§ = false;
                                 }
                                 this.§`[§ = getTimer() / 1000;
                                 this.§<U§ = new Dictionary();
                                 addr199:
                                 for each(_loc6_ in this.§-$§)
                                 {
                                    if(!_loc9_)
                                    {
                                       param2.addEventListener(_loc6_,this.§'k§,false,0,true);
                                    }
                                 }
                                 param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
                                 param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
                                 this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-%§,false,1,true);
                                 if(_loc10_)
                                 {
                                    this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§7!C§,false,1,true);
                                 }
                                 this.mStage3D.visible = false;
                                 this.§%z§(true);
                                 if(_loc10_ || param1)
                                 {
                                    this.§#!A§ = param2.color;
                                 }
                                 this.§0!E§ = param5;
                                 return;
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr181);
                  }
                  §§goto(addr74);
               }
               §§goto(addr74);
            }
            §§goto(addr59);
         }
         §§goto(addr77);
      }
      
      public static function get §;'§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§17§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr36:
                     §§push(§17§.§`!B§);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr45:
                     §§push(true);
                  }
                  return §§pop();
               }
               §§goto(addr45);
            }
         }
         §§goto(addr36);
      }
      
      public static function §+! §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§5<§);
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc2_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc1_)
                     {
                        §§push(§5<§);
                        if(!(_loc2_ && _loc1_))
                        {
                           addr57:
                           §§push(Boolean(§§pop().§"G§));
                           if(_loc1_)
                           {
                              §§push(§§pop());
                              if(_loc1_)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(!_loc2_)
                                    {
                                       addr78:
                                       §§push(§5<§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(§§pop().§%!-§ == null);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             §§goto(addr106);
                                          }
                                       }
                                    }
                                    §§goto(addr101);
                                 }
                              }
                              §§goto(addr106);
                           }
                           addr106:
                           return !§§pop() && §5<§.§%!-§.driverInfo == "Disposed";
                           §§push(!§§pop());
                        }
                     }
                     §§goto(addr101);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr57);
         }
         §§goto(addr78);
      }
      
      public static function get §17§() : §'_§
      {
         return §5<§;
      }
      
      public static function get §6!"§() : §+E§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§5<§);
            if(_loc2_)
            {
               return !!§§pop() ? §5<§.§6!"§ : null;
            }
         }
         §§goto(addr29);
      }
      
      public static function get §0?§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §0?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §'_§))
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §3R§() : Boolean
      {
         return §7f§;
      }
      
      public static function set §3R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(§5<§ != null)
            {
               if(_loc2_ || _loc3_)
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
            }
            §7f§ = param1;
         }
      }
      
      public static function §]e§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            if(§17§)
            {
               if(_loc4_)
               {
                  return Texture.§7w§(§17§.§%!-§,param1,param2,param3);
               }
            }
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_)
         {
            §§push(§5<§);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop().§%!-§)
               {
                  if(_loc3_)
                  {
                     addr33:
                     §§push(§5<§);
                     if(_loc3_ || param1)
                     {
                        §§pop().§%!-§.drawToBitmapData(param1);
                        if(_loc4_)
                        {
                           addr82:
                           _loc2_ = §5<§.§4h§.canvas;
                           addr81:
                           if(!(_loc4_ && _loc3_))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr104);
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(§5<§);
                  if(!_loc4_)
                  {
                     §§push(§§pop().§4h§);
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr81);
                        }
                        addr104:
                        return;
                     }
                     §§goto(addr82);
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr33);
      }
      
      public function get §8!B§() : §?^§.DisplayObject
      {
         return this.§8E§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!A§ = param1;
         }
      }
      
      public function get §8$§() : Number
      {
         return this.§ "§;
      }
      
      public function get §3A§() : Number
      {
         return this.§<$§;
      }
      
      public function §"v§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§0!E§);
         }
         catch(e:Error)
         {
            §5!A§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!_loc5_)
         {
            this.§1!§ = true;
            if(_loc6_ || _loc3_)
            {
               this.§!'§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
               if(_loc6_)
               {
                  this.§!'§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
                  if(_loc5_)
                  {
                  }
                  addr73:
                  var _loc3_:int = 0;
                  var _loc4_:* = this.§-$§;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc4_,_loc3_));
                     if(_loc6_ || _loc3_)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc3_,_loc4_);
                           if(_loc6_ || this)
                           {
                              this.§!'§.removeEventListener(_loc1_,this.§'k§,false);
                           }
                           continue;
                        }
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc3_ = 0;
                                 if(_loc6_ || _loc2_)
                                 {
                                    addr141:
                                    _loc4_ = this.§<U§;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       break loop0;
                                    }
                                    addr156:
                                 }
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(this.§%!-§)
                                    {
                                       addr170:
                                       this.§%!-§.dispose();
                                    }
                                    §§push(this.§[Q§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          addr180:
                                          this.§[Q§.dispose();
                                       }
                                       §§push(this.§4h§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                addr200:
                                                this.§4h§.dispose();
                                                if(!_loc5_)
                                                {
                                                   addr203:
                                                   if(§5<§ == this)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         §5<§ = null;
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§push(Boolean(this.§?I§));
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            §§pop();
                                                            addr246:
                                                            §§push(Boolean(this.§?I§.bitmapData));
                                                         }
                                                      }
                                                   }
                                                   if(§§pop())
                                                   {
                                                      this.§?I§.bitmapData.dispose();
                                                      addr255:
                                                      this.§?I§.bitmapData = null;
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr246);
                                             }
                                             addr259:
                                             return;
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr200);
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr170);
                           }
                        }
                        §§goto(addr141);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        _loc2_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc5_)
                        {
                           _loc2_.dispose();
                        }
                        continue;
                     }
                     §§goto(addr141);
                  }
               }
               this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§-%§,false);
               if(_loc6_)
               {
                  addr65:
                  this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§7!C§,false);
               }
            }
            §§goto(addr73);
         }
         §§goto(addr65);
      }
      
      private function §#x§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§%!-§ = this.mStage3D.context3D;
            this.§<U§ = new Dictionary();
            if(!(_loc1_ && _loc1_))
            {
               if(this.§%!-§)
               {
                  if(!(_loc1_ && this))
                  {
                     this.§%!-§.enableErrorChecking = this.§`l§;
                     addr60:
                     if(!(_loc1_ && _loc1_))
                     {
                        if(this.§%!-§.driverInfo.indexOf("Software") >= 0)
                        {
                           this.§`!B§ = true;
                           if(_loc2_)
                           {
                              addr94:
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr94);
                     }
                  }
                  addr100:
                  this.§1y§();
               }
               else
               {
                  this.§`!B§ = true;
                  if(_loc2_)
                  {
                     §§goto(addr100);
                  }
               }
               addr102:
               return;
            }
            §§goto(addr60);
         }
         §§goto(addr94);
      }
      
      private function §?#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§<!1§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().numChildren > 0)
               {
                  return;
               }
               §§push(this.§8E§);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(null);
                  if(_loc1_ || _loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        this.§8E§ = new this.§9K§();
                     }
                     addr80:
                     §§push(this.§8E§);
                     §§push(null);
                  }
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc2_ && this))
                     {
                        throw new Error("Invalid root class: " + this.§9K§);
                     }
                     addr100:
                     this.§<!1§.addChild(this.§8E§);
                     return;
                     addr98:
                  }
                  §§goto(addr98);
               }
               §§goto(addr80);
            }
         }
         §§goto(addr100);
      }
      
      private function §1y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@;§ = true;
            if(_loc2_)
            {
               this.mStage3D.x = this.§@O§.x;
               if(_loc2_)
               {
                  this.mStage3D.y = this.§@O§.y;
               }
            }
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            §§push(§+! §());
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  return;
               }
               §§push(this.§@;§);
            }
            if(§§pop())
            {
               addr33:
               if(this.§%!-§)
               {
                  this.§%!-§.configureBackBuffer(this.§@O§.width,this.§@O§.height,this.§do §,false);
                  if(!_loc4_)
                  {
                  }
                  addr53:
                  §§push(getTimer() / 1000);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  §§push(_loc1_);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - this.§`[§);
                     if(_loc4_ || _loc3_)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     if(!_loc3_)
                     {
                        this.§`[§ = _loc1_;
                        §§push(this.§<!1§);
                        if(_loc4_ || _loc1_)
                        {
                           §§pop().advanceTime(_loc2_);
                           this.§-N§.advanceTime(_loc2_);
                           if(!(_loc3_ && _loc3_))
                           {
                              this.§[Q§.advanceTime(_loc2_);
                              §§push(this.§4h§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §§pop().§=%§(this.§<!1§.stageWidth,this.§<!1§.stageHeight);
                                 §§goto(addr138);
                              }
                           }
                           §§goto(addr219);
                        }
                        §§goto(addr166);
                     }
                     addr138:
                     §§push(this.§4h§);
                     if(!_loc3_)
                     {
                        §§pop().clear(this.§%!-§,this.§#!A§,1);
                        if(_loc4_ || this)
                        {
                           §§push(this.§4h§);
                           if(!_loc3_)
                           {
                              §§pop().§!n§(this.§%!-§,this.§@S§);
                              addr166:
                              this.§<!1§.render(this.§4h§,1);
                              if(_loc4_)
                              {
                                 §§push(this.§4h§);
                                 if(_loc4_)
                                 {
                                    §§pop().§#E§();
                                    if(_loc4_)
                                    {
                                       if(this.§"4§ != null)
                                       {
                                       }
                                       addr198:
                                       §§push(this.§4h§);
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          §§goto(addr207);
                                       }
                                       §§goto(addr219);
                                    }
                                    this.§"4§();
                                    this.§"4§ = null;
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr198);
                           }
                        }
                        §§goto(addr219);
                     }
                     addr207:
                     §§pop().finishRendering(this.§%!-§);
                     if(!(_loc3_ && _loc2_))
                     {
                        addr219:
                        this.§4h§.§!t§();
                        §§goto(addr220);
                     }
                     addr220:
                     return;
                  }
                  §§goto(addr79);
               }
               this.§@;§ = false;
            }
            §§goto(addr53);
         }
         §§goto(addr33);
      }
      
      public function set §"i§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"4§ = param1;
         }
      }
      
      private function §0x§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc1_))
         {
            this.§^!§.x = this.§@O§.x;
            if(!_loc4_)
            {
               addr35:
               this.§^!§.y = this.§@O§.y;
            }
            var _loc1_:int = this.§^!§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§^!§.parent;
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() != §§pop());
                  if(!(_loc4_ && _loc1_))
                  {
                     §§push(§§pop());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              addr77:
                              §§pop();
                              if(_loc5_)
                              {
                                 §§push(_loc2_ == null);
                                 if(_loc5_)
                                 {
                                    addr85:
                                    if(§§pop())
                                    {
                                       this.§!'§.addChild(this.§^!§);
                                       if(_loc4_)
                                       {
                                       }
                                       §§goto(addr126);
                                    }
                                    else
                                    {
                                       addr96:
                                       §§push(_loc1_ == 0);
                                       §§push(_loc1_ == 0);
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc5_)
                                             {
                                                addr103:
                                                §§pop();
                                                addr116:
                                                if(_loc2_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      this.§!'§.removeChild(this.§^!§);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr126);
                                                      }
                                                      §§goto(addr159);
                                                   }
                                                   §§goto(addr143);
                                                }
                                                addr126:
                                                §§push(this.§4h§);
                                                if(_loc5_ || _loc1_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc5_)
                                                   {
                                                      addr139:
                                                      if(§§pop())
                                                      {
                                                         addr140:
                                                         §§pop();
                                                         if(_loc5_)
                                                         {
                                                            addr143:
                                                            §§push(this.§4h§);
                                                            if(!(_loc4_ && this))
                                                            {
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         §§goto(addr155);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   §§goto(addr140);
                                                }
                                                §§goto(addr154);
                                             }
                                             addr154:
                                             if(§§pop().canvas)
                                             {
                                                addr155:
                                                §§push(this.§4h§);
                                                if(_loc5_)
                                                {
                                                   addr159:
                                                   §§pop().setCanvasSize(this.§!`§,this.§!I§,this.§@O§.width / this.§<!1§.stageWidth,this.§@O§.height / this.§<!1§.stageHeight);
                                                   §§push(this.§4h§);
                                                }
                                                _loc3_ = §§pop().canvas;
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(this.§?I§.bitmapData != _loc3_)
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         this.§?I§.bitmapData = _loc3_;
                                                         if(_loc5_)
                                                         {
                                                            addr218:
                                                            if(this.§!'§.getChildIndex(this.§^!§) > 0)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  this.§!'§.removeChild(this.§^!§);
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                                  §§goto(addr240);
                                                               }
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                      }
                                                      this.§!'§.addChildAt(this.§^!§,0);
                                                      §§goto(addr240);
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             addr240:
                                             return;
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr139);
                                    }
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr96);
         }
         §§goto(addr35);
      }
      
      private function §5!A§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.defaultTextFormat = _loc3_;
               _loc2_.wordWrap = true;
               _loc2_.width = this.§<!1§.stageWidth * 0.75;
               addr63:
               _loc2_.autoSize = TextFieldAutoSize.CENTER;
               _loc2_.text = param1;
               if(!(_loc5_ && this))
               {
                  _loc2_.x = (this.§<!1§.stageWidth - _loc2_.width) / 2;
                  _loc2_.y = (this.§<!1§.stageHeight - _loc2_.height) / 2;
                  if(_loc4_ || _loc2_)
                  {
                     _loc2_.background = true;
                     if(_loc4_)
                     {
                        addr119:
                        _loc2_.backgroundColor = 4456448;
                     }
                     this.§'?§.addChild(_loc2_);
                  }
                  §§goto(addr126);
               }
               §§goto(addr119);
            }
            addr126:
            return;
         }
         §§goto(addr63);
      }
      
      public function §=!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §5<§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§45§ = true;
            if(_loc2_)
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§45§ = false;
            if(_loc1_ || _loc2_)
            {
               addr28:
               this.mStage3D.visible = false;
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §%z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+b§ = param1;
         }
      }
      
      private function §4!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§"G§ = true;
            if(_loc1_ || this)
            {
               if(this.§?I§ == null)
               {
                  if(!_loc1_)
                  {
                  }
               }
               §§goto(addr75);
            }
            this.§?I§ = new Bitmap();
            if(!(_loc2_ && _loc1_))
            {
               this.§'?§.addChild(this.§?I§);
            }
         }
         addr75:
      }
      
      private function §7!C§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!§();
            if(!(_loc3_ && _loc2_))
            {
               addr27:
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            return;
         }
         §§goto(addr27);
      }
      
      private function §-%§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            §§push(this.§1!§);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
                  §§goto(addr165);
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§`z§)).§`z§);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.§`z§ = _loc3_;
                  }
                  this.§@S§ = §`z§;
                  §§push(this.§4h§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§push(this.§4h§);
                           if(_loc5_)
                           {
                              addr83:
                              §§pop().dispose();
                              if(!_loc4_)
                              {
                                 addr86:
                                 §§push(§'_§.§3R§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(!§§pop());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ || this)
                                       {
                                          if(§§pop())
                                          {
                                             addr112:
                                             §§pop();
                                             §§push(Boolean(this.§%!-§));
                                          }
                                          if(§§pop())
                                          {
                                             addr127:
                                             this.§5!A§("Fatal error: The application lost the device context!");
                                             addr130:
                                             this.stop();
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                             §§goto(addr200);
                                          }
                                          else
                                          {
                                             this.§=!;§();
                                             this.§#x§();
                                             if(_loc5_)
                                             {
                                                this.§?#§();
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr189);
                                             }
                                          }
                                          §§goto(addr250);
                                       }
                                       addr149:
                                       §§push(Boolean(this.§%!-§));
                                       if(Boolean(this.§%!-§))
                                       {
                                          if(_loc5_ || this)
                                          {
                                             §§pop();
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§goto(addr165);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr165);
                                    }
                                    addr165:
                                    §§push(this.§`!B§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr174:
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       this.mStage3DEnabled = false;
                                       this.§%!-§ = null;
                                       if(_loc5_)
                                       {
                                          this.§4!§();
                                          §§goto(addr186);
                                       }
                                       §§goto(addr207);
                                    }
                                    addr186:
                                    if(this.§%!-§)
                                    {
                                       addr189:
                                       this.§4h§ = new §`G§();
                                       if(_loc5_ || this)
                                       {
                                          addr250:
                                          this.§[Q§.§^e§ = this.§?T§;
                                          dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                          addr200:
                                       }
                                       else
                                       {
                                          addr207:
                                          §§push(this.§4h§);
                                          if(_loc5_)
                                          {
                                             §§pop().setCanvasSize(this.§!`§,this.§!I§,this.§@O§.width / this.§<!1§.stageWidth,this.§@O§.height / this.§<!1§.stageHeight);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr244);
                                             }
                                             §§goto(addr250);
                                          }
                                          §§goto(addr244);
                                       }
                                       addr244:
                                       this.§4h§.clear(null,this.§#!A§);
                                       §§goto(addr242);
                                    }
                                    else
                                    {
                                       this.§4h§ = new §,l§();
                                       if(_loc5_)
                                       {
                                          §§goto(addr207);
                                       }
                                    }
                                    addr242:
                                    if(_loc5_)
                                    {
                                       §§goto(addr250);
                                    }
                                    return;
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr130);
                           }
                           §§goto(addr244);
                        }
                        §§goto(addr149);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr83);
               }
               §§goto(addr250);
            }
            §§goto(addr112);
         }
         §§goto(addr127);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§=!;§();
         }
         §§push(getTimer() / 1000);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§`[§);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(this.§45§);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || _loc3_)
               {
                  addr73:
                  if(!§§pop())
                  {
                     if(_loc5_ || _loc3_)
                     {
                        §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           addr103:
                           addr100:
                           if(_loc3_ > 1)
                           {
                              if(_loc5_ || param1)
                              {
                                 this.render();
                                 if(_loc4_ && this)
                                 {
                                 }
                                 §§goto(addr125);
                              }
                           }
                           if(this.§^!§)
                           {
                              if(!_loc4_)
                              {
                                 §§goto(addr125);
                              }
                           }
                           §§goto(addr125);
                        }
                        addr125:
                        this.§0x§();
                        return;
                     }
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr73);
         }
         §§goto(addr100);
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=!;§();
            if(_loc2_)
            {
               addr32:
               this.§<!1§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() / this.§ "§);
            if(!(_loc7_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(param2);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() / this.§<$§);
            if(!(_loc7_ && this))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!param3)
            {
               if(!_loc7_)
               {
                  §§push(this.§<!1§);
                  if(!_loc7_)
                  {
                     §§push(this.§ "§);
                     if(!_loc7_)
                     {
                        §§push(_loc4_);
                        if(!(_loc7_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              addr75:
                              §§push(§§pop() / §§pop());
                              if(!(_loc7_ && param2))
                              {
                                 §§pop().stageWidth = §§pop();
                                 §§push(this.§<!1§);
                                 if(_loc6_ || param3)
                                 {
                                    addr103:
                                    §§push(this.§<$§);
                                    if(_loc6_)
                                    {
                                       §§pop().stageHeight = §§pop();
                                       if(!_loc7_)
                                       {
                                          addr162:
                                          this.§!`§ = param1;
                                          this.§!I§ = param2;
                                          if(_loc6_ || param1)
                                          {
                                             addr177:
                                             this.§<!1§.dispatchEvent(new §9Q§(flash.events.Event.RESIZE,param1,param2));
                                          }
                                       }
                                       return;
                                    }
                                    addr129:
                                    §§pop().stageWidth = §§pop();
                                    if(!_loc7_)
                                    {
                                       §§push(this.§<!1§);
                                       if(!_loc7_)
                                       {
                                          addr138:
                                          §§push(this.§<$§);
                                          §§push(_loc5_);
                                          if(_loc6_ || param3)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc6_)
                                             {
                                                addr161:
                                                §§pop().stageHeight = §§pop() / _loc4_;
                                                §§goto(addr162);
                                             }
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr177);
                                 }
                                 else
                                 {
                                    addr120:
                                    §§push(this.§ "§);
                                    if(_loc6_ || param1)
                                    {
                                       §§goto(addr129);
                                    }
                                 }
                                 §§goto(addr138);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr161);
                  }
                  §§goto(addr103);
               }
               §§goto(addr162);
            }
            else
            {
               §§push(this.§<!1§);
               if(_loc6_ || param3)
               {
                  §§goto(addr120);
               }
            }
            §§goto(addr177);
         }
         §§goto(addr49);
      }
      
      public function §#n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.setCanvasSize(this.§ "§,this.§<$§);
         }
      }
      
      private function §'k§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_ || this)
         {
            §§push(this.§45§);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!_loc10_)
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(this.§+b§);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                              if(_loc9_ || param1)
                              {
                              }
                              addr78:
                              if(§§pop())
                              {
                                 addr79:
                                 §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                 if(!_loc10_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_ || this)
                                    {
                                       addr100:
                                       _loc3_ = _loc6_.stageY;
                                       _loc4_ = 0;
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          if(param1.type == MouseEvent.MOUSE_DOWN)
                                          {
                                             if(!_loc10_)
                                             {
                                                this.§`!D§ = true;
                                             }
                                          }
                                          else if(param1.type == MouseEvent.MOUSE_UP)
                                          {
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr133:
                                                this.§`!D§ = false;
                                             }
                                          }
                                          var _loc8_:* = param1.type;
                                          addr165:
                                          if(_loc9_ || param1)
                                          {
                                             if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                             {
                                                §§push(0);
                                                if(!(_loc9_ || param1))
                                                {
                                                   addr336:
                                                }
                                             }
                                             else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                             {
                                                addr308:
                                                §§push(1);
                                             }
                                             else if(TouchEvent.TOUCH_END === _loc8_)
                                             {
                                                §§push(2);
                                             }
                                             else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(3);
                                                }
                                                else
                                                {
                                                   addr335:
                                                   §§goto(addr336);
                                                   §§push(4);
                                                }
                                             }
                                             else if(MouseEvent.MOUSE_UP === _loc8_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§goto(addr335);
                                                }
                                                addr347:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §§push(§,R§.§99§);
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      addr212:
                                                      _loc5_ = §§pop();
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         break;
                                                      }
                                                      addr226:
                                                      break;
                                                   case 1:
                                                      §§push(§,R§.§&5§);
                                                      if(!(_loc10_ && _loc3_))
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            break;
                                                         }
                                                         addr433:
                                                         §§push(_loc5_);
                                                      }
                                                      else
                                                      {
                                                         addr260:
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                         }
                                                         addr274:
                                                         §§push(§§pop());
                                                         if(_loc9_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            break;
                                                         }
                                                      }
                                                      addr437:
                                                      if(§§pop() == §,R§.§99§)
                                                      {
                                                         return;
                                                      }
                                                      §§push(_loc2_);
                                                      if(_loc9_ || this)
                                                      {
                                                         addr447:
                                                         §§push(§§pop() - this.§@O§.x);
                                                         if(!_loc10_)
                                                         {
                                                            addr463:
                                                            §§push(Number(§§pop()));
                                                            if(!_loc10_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               §§push(_loc3_);
                                                            }
                                                            §§push(§§pop() - this.§@O§.y);
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(_loc9_ || this)
                                                         {
                                                            addr481:
                                                            this.§[Q§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
                                                         }
                                                         §§goto(addr488);
                                                      }
                                                      §§goto(addr463);
                                                      break;
                                                   case 2:
                                                      §§push(§,R§.§?!>§);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§goto(addr212);
                                                         §§push(§§pop());
                                                      }
                                                      else
                                                      {
                                                         addr273:
                                                         §§goto(addr274);
                                                         §§push(§§pop());
                                                      }
                                                      break;
                                                   case 3:
                                                      _loc5_ = §,R§.§99§;
                                                      §§goto(addr226);
                                                   case 4:
                                                      _loc5_ = §,R§.§?!>§;
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr409);
                                                   case 5:
                                                      if(this.§`!D§)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(§,R§.§&5§);
                                                            if(!_loc9_)
                                                            {
                                                            }
                                                            §§goto(addr260);
                                                         }
                                                         §§goto(addr433);
                                                      }
                                                      else
                                                      {
                                                         §§push(§,R§.§+!8§);
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§goto(addr273);
                                                         }
                                                      }
                                                      §§goto(addr260);
                                                }
                                                §§push(_loc2_ < this.§@O§.left);
                                                §§push(_loc2_ < this.§@O§.left);
                                                if(!_loc10_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§pop();
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc9_)
                                                            {
                                                               addr375:
                                                               §§push(§§pop() >= this.§@O§.right);
                                                               §§push(§§pop() >= this.§@O§.right);
                                                               if(_loc9_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc10_ && param1))
                                                                     {
                                                                        §§pop();
                                                                        addr392:
                                                                        §§push(_loc3_ < this.§@O§.top);
                                                                        §§push(_loc3_ < this.§@O§.top);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           addr400:
                                                                           if(!§§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(!(_loc10_ && param1))
                                                                              {
                                                                                 addr409:
                                                                                 §§push(_loc3_ >= this.§@O§.bottom);
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    addr421:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr425);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr437);
                                                                                 }
                                                                                 addr425:
                                                                                 §§pop();
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    §§goto(addr433);
                                                                                 }
                                                                                 §§goto(addr488);
                                                                              }
                                                                              addr488:
                                                                              return;
                                                                           }
                                                                        }
                                                                        §§goto(addr421);
                                                                     }
                                                                     §§goto(addr437);
                                                                  }
                                                                  §§goto(addr392);
                                                               }
                                                               §§goto(addr400);
                                                            }
                                                            §§goto(addr447);
                                                         }
                                                         §§goto(addr481);
                                                      }
                                                      §§goto(addr421);
                                                   }
                                                   §§goto(addr375);
                                                }
                                                §§goto(addr421);
                                             }
                                             else
                                             {
                                                if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                {
                                                   §§goto(addr347);
                                                   §§push(6);
                                                }
                                                §§goto(addr347);
                                             }
                                             §§goto(addr347);
                                          }
                                          §§goto(addr308);
                                          addr165:
                                       }
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr100);
                              }
                              else
                              {
                                 §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                 if(_loc9_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc10_ && this))
                                    {
                                       addr158:
                                       _loc3_ = _loc7_.stageY;
                                       if(_loc10_)
                                       {
                                       }
                                       §§goto(addr165);
                                    }
                                    _loc4_ = _loc7_.touchPointID;
                                    §§goto(addr165);
                                 }
                                 §§goto(addr158);
                              }
                           }
                        }
                        addr75:
                        §§goto(addr78);
                        §§push(param1 is MouseEvent);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     §§goto(addr75);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr78);
         }
         §§goto(addr75);
      }
      
      private function get §-$§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §6O§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(_loc6_ || param3)
         {
            if(param1 in this.§<U§)
            {
               if(!(_loc5_ && param3))
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
         }
         if(this.§%!-§ != null)
         {
            (_loc4_ = this.§%!-§.createProgram()).upload(param2,param3);
            if(_loc6_ || this)
            {
               this.§<U§[param1] = _loc4_;
            }
         }
      }
      
      public function §2#§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§>m§(param1);
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  _loc2_.dispose();
                  if(_loc4_ || _loc3_)
                  {
                     addr52:
                     delete this.§<U§[param1];
                  }
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §>m§(param1:String) : Program3D
      {
         return this.§<U§[param1] as Program3D;
      }
      
      public function §"!?§(param1:String) : Boolean
      {
         return param1 in this.§<U§;
      }
      
      public function get §&R§() : Boolean
      {
         return this.§45§;
      }
      
      public function get §6!"§() : §+E§
      {
         return this.§-N§;
      }
      
      public function get §^e§() : Boolean
      {
         return this.§?T§;
      }
      
      public function set §^e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§?T§ = param1;
            if(_loc3_ || param1)
            {
               addr44:
               if(this.§%!-§)
               {
                  if(!_loc2_)
                  {
                     this.§[Q§.§^e§ = param1;
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§`l§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§`l§ = param1;
            if(!_loc2_)
            {
               if(this.§%!-§)
               {
                  if(_loc3_ || this)
                  {
                     this.§%!-§.enableErrorChecking = param1;
                  }
               }
            }
         }
      }
      
      public function get §switch§() : int
      {
         return this.§do §;
      }
      
      public function set §switch§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§do § = param1;
            if(_loc3_)
            {
               addr29:
               this.§1y§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function get §^w§() : Rectangle
      {
         return this.§@O§.clone();
      }
      
      public function set §^w§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@O§ = param1.clone();
            if(!_loc3_)
            {
               addr24:
               this.§1y§();
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function get §'?§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(_loc3_ || _loc2_)
         {
            if(this.§^!§ == null)
            {
               if(_loc3_)
               {
                  addr53:
                  this.§^!§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!_loc2_)
               {
                  _loc1_.hideBuiltInItems();
                  if(!(_loc2_ && this))
                  {
                     this.§^!§.contextMenu = _loc1_;
                     if(_loc2_)
                     {
                     }
                  }
                  §§goto(addr80);
               }
               this.§0x§();
            }
            addr80:
            return this.§^!§;
         }
         §§goto(addr53);
      }
      
      public function get stage() : §?^§.Stage
      {
         return this.§<!1§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §0!G§() : flash.display.Stage
      {
         return this.§!'§;
      }
      
      public function get §+y§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§"G§);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
