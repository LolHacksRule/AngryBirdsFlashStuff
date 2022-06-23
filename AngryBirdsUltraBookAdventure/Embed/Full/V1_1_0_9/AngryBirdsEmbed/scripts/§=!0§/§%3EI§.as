package §=!0§
{
   import §&o§.DisplayObject;
   import §&o§.Stage;
   import §0! §.Texture;
   import §[!+§.§2^§;
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
   import starling.events.§3g§;
   import starling.events.§>;§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§`^§;
   
   public class §>I§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §%!5§:Rectangle;
      
      private static var §1A§:Boolean = true;
      
      private static var §+I§:Boolean;
      
      private static var § r§:§>I§;
      
      private static var §#T§:Boolean;
      
      private static var §2!L§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            VERSION = "1.0";
            if(_loc2_)
            {
               addr24:
               §1A§ = true;
            }
            return;
         }
         §§goto(addr24);
      }
      
      private var mStage3D:Stage3D;
      
      private var §]!M§:§&o§.Stage;
      
      private var § z§:Class;
      
      private var §#3§:§&o§.DisplayObject;
      
      private var §?S§:§2^§;
      
      private var §'J§:Boolean;
      
      private var §+P§:Boolean;
      
      private var §4!'§:§2N§;
      
      private var §8S§:§3g§;
      
      private var §&J§:int;
      
      private var §"U§:Boolean;
      
      private var §!k§:Boolean;
      
      private var §<I§:Number;
      
      private var §7!L§:Boolean;
      
      private var §,3§:flash.display.Stage;
      
      private var §;!J§:Sprite;
      
      private var §3!K§:Context3D;
      
      private var §;F§:Dictionary;
      
      private var §+c§:int;
      
      private var §5!>§:Boolean;
      
      private var §]!G§:Number;
      
      private var §85§:Number;
      
      private var §9,§:Number;
      
      private var §-2§:Number;
      
      private var §;+§:Number;
      
      private var §71§:Number;
      
      private var §84§:Function;
      
      private var §2!;§:uint;
      
      private var §#g§:String;
      
      private var §`!G§:Bitmap;
      
      private var §3p§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §'!M§:Boolean = false;
      
      public function §>I§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!(_loc10_ && this))
         {
            super();
            if(param2 == null)
            {
               throw new ArgumentError("Stage must not be null");
            }
            if(param1 == null)
            {
               if(_loc9_ || this)
               {
                  throw new ArgumentError("Root class must not be null");
               }
            }
            else
            {
               if(param3 == null)
               {
                  if(!(_loc10_ && this))
                  {
                     param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                     addr71:
                     if(param4 == null)
                     {
                        param4 = param2.stage3Ds[0];
                     }
                     this.§]!G§ = param3.width;
                     this.§85§ = param3.height;
                     this.§9,§ = this.§]!G§;
                     this.§-2§ = this.§85§;
                     if(!(_loc10_ && param3))
                     {
                        this.§;+§ = param2.stageWidth;
                        this.§71§ = param2.stageHeight;
                        §8$§ = true;
                        if(_loc9_ || param2)
                        {
                           this.§@!N§();
                           if(_loc9_ || param3)
                           {
                              addr130:
                              this.§ z§ = param1;
                              if(_loc9_ || param2)
                              {
                                 §%!5§ = param3;
                                 addr143:
                                 this.mStage3D = param4;
                                 if(!(_loc10_ && this))
                                 {
                                    this.§]!M§ = new §&o§.Stage(param3.width,param3.height,param2.color);
                                    addr173:
                                    this.§,3§ = param2;
                                    if(_loc9_)
                                    {
                                       this.§8S§ = new §3g§(this.§]!M§);
                                       addr184:
                                       this.§?S§ = new §2^§();
                                       this.§&J§ = 0;
                                       if(_loc9_ || this)
                                       {
                                          addr198:
                                          this.§"U§ = false;
                                          addr201:
                                          this.§!k§ = false;
                                          if(!_loc10_)
                                          {
                                             this.§<I§ = getTimer() / 1000;
                                             if(!_loc10_)
                                             {
                                                addr214:
                                                this.§;F§ = new Dictionary();
                                             }
                                          }
                                          for each(_loc6_ in this.§^O§)
                                          {
                                             if(!(_loc10_ && param1))
                                             {
                                                param2.addEventListener(_loc6_,this.§2h§,false,0,true);
                                             }
                                          }
                                          param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
                                          param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
                                          this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§@!C§,false,1,true);
                                          this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§<!3§,false,1,true);
                                          this.mStage3D.visible = false;
                                          this.§ !I§(true);
                                          if(!(_loc10_ && param3))
                                          {
                                             this.§2!;§ = param2.color;
                                             if(!_loc10_)
                                             {
                                                addr318:
                                                this.§#g§ = param5;
                                             }
                                             return;
                                          }
                                          §§goto(addr318);
                                       }
                                       §§goto(addr214);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr184);
               }
               §§goto(addr71);
            }
            §§goto(addr130);
         }
         §§goto(addr173);
      }
      
      public static function get §0P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§`S§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || §>I§)
                  {
                     addr41:
                     §§push(§`S§.§5!>§);
                     if(!_loc1_)
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
         §§goto(addr41);
      }
      
      public static function §]u§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§ r§);
            if(_loc1_ || §>I§)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc1_ || _loc1_)
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr49:
                        §§push(§ r§);
                        if(_loc1_ || _loc1_)
                        {
                           addr57:
                           §§push(Boolean(§§pop().§3p§));
                           §§push(Boolean(§§pop().§3p§));
                           if(_loc1_)
                           {
                              if(!§§pop())
                              {
                                 §§pop();
                                 if(!(_loc2_ && §>I§))
                                 {
                                    addr81:
                                    §§push(§ r§);
                                    if(_loc1_)
                                    {
                                       §§push(§§pop().§3!K§ != null);
                                       if(_loc1_)
                                       {
                                          addr91:
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                §§pop();
                                             }
                                          }
                                       }
                                       §§goto(addr101);
                                    }
                                    addr96:
                                    addr101:
                                    return §§pop();
                                    §§push(§§pop().§3!K§.driverInfo != "Disposed");
                                 }
                                 §§push(§ r§);
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr101);
               }
               §§goto(addr91);
            }
            §§goto(addr57);
         }
         §§goto(addr49);
      }
      
      private static function §=l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §+I§ = true;
         }
      }
      
      public static function get §+2§() : Rectangle
      {
         return §%!5§.clone();
      }
      
      public static function set §+2§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §>I§))
         {
            §%!5§ = param1.clone();
            if(_loc3_)
            {
               addr30:
               §=l§();
            }
            return;
         }
         §§goto(addr30);
      }
      
      public static function set §6+§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && §>I§))
         {
            §1A§ = param1;
         }
      }
      
      public static function get §6+§() : Boolean
      {
         return §1A§;
      }
      
      public static function get §`S§() : §>I§
      {
         return § r§;
      }
      
      public static function get §2!@§() : §2^§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§ r§);
            if(!(_loc2_ && §>I§))
            {
               return !!§§pop() ? § r§.§2!@§ : null;
            }
         }
         §§goto(addr43);
      }
      
      public static function get §]!;§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §8$§() : Boolean
      {
         return §#T§;
      }
      
      public static function set §8$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§ r§ != null)
            {
               if(!_loc3_)
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
            }
            §#T§ = param1;
         }
      }
      
      public static function § G§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            if(§`S§)
            {
               if(!_loc4_)
               {
                  return Texture.§+!>§(§`S§.§3!K§,param1,param2,param3);
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
         if(_loc3_ || §>I§)
         {
            §§push(§ r§);
            if(!(_loc4_ && §>I§))
            {
               if(§§pop().§3!K§)
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§ r§);
                     if(!(_loc4_ && _loc3_))
                     {
                        addr61:
                        §§pop().§3!K§.drawToBitmapData(param1);
                        if(_loc4_ && param1)
                        {
                           addr92:
                           _loc2_ = § r§.§4!'§.canvas;
                           addr90:
                           if(!(_loc4_ && _loc2_))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr71:
                        }
                        §§goto(addr114);
                     }
                     else
                     {
                        addr85:
                        §§push(§§pop().§4!'§);
                        if(_loc3_)
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr90);
                           }
                           addr114:
                           return;
                        }
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(§ r§);
                  if(!_loc4_)
                  {
                     §§goto(addr85);
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr61);
         }
         §§goto(addr92);
      }
      
      public function get §0o§() : §&o§.DisplayObject
      {
         return this.§#3§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§2!;§ = param1;
         }
      }
      
      public function get §5_§() : Number
      {
         return this.§]!G§;
      }
      
      public function get §]T§() : Number
      {
         return this.§85§;
      }
      
      public function §?l§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         if(_loc4_ || _loc1_)
         {
            §§push(null);
            if(!_loc3_)
            {
               §§push(§§pop());
               if(_loc4_)
               {
                  §§pop().§§slot[1] = §§pop();
                  if(!_loc3_)
                  {
                     §§push(§§newactivation());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(null);
                        if(_loc4_ || _loc1_)
                        {
                           §§pop().§§slot[2] = §§pop();
                           if(!_loc3_)
                           {
                              addr58:
                              §§push(§§newactivation());
                              if(!_loc3_)
                              {
                                 §§pop().§§slot[3] = false;
                                 if(_loc4_ || _loc2_)
                                 {
                                    addr73:
                                    var profile:String = null;
                                    addr71:
                                 }
                              }
                              §§goto(addr71);
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc4_)
                              {
                                 §§push("flash.display3D.Context3DProfile");
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§pop().§§slot[1] = §§pop();
                                    if(!_loc3_)
                                    {
                                       §§push(§§newactivation());
                                       if(!_loc3_)
                                       {
                                          §§pop().§§slot[2] = this.mStage3D.requestContext3D;
                                          if(_loc4_ || this)
                                          {
                                             §§push(§§newactivation());
                                             if(!(_loc3_ && this))
                                             {
                                                §§pop().§§slot[3] = requestContext3D.length > 1;
                                                §§push(§§newactivation());
                                                if(_loc4_ || _loc3_)
                                                {
                                                   addr135:
                                                   if(§§pop().§§slot[3])
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(§§newactivation());
                                                         if(!_loc3_)
                                                         {
                                                            addr143:
                                                            §§pop().§§slot[4] = "baselineConstrained";
                                                            if(!_loc4_)
                                                            {
                                                            }
                                                            return;
                                                            addr171:
                                                            addr189:
                                                         }
                                                         addr147:
                                                         §§push(§§pop().§§slot[2]);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(global);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               §§push(this.§#g§);
                                                               if(_loc4_ || _loc1_)
                                                               {
                                                                  §§pop()(§§pop(),profile);
                                                                  §§goto(addr171);
                                                               }
                                                               §§goto(addr189);
                                                            }
                                                            else
                                                            {
                                                               addr185:
                                                               §§push(this.§#g§);
                                                            }
                                                            §§pop()(§§pop());
                                                            §§goto(addr171);
                                                         }
                                                         else
                                                         {
                                                            addr184:
                                                            §§push(global);
                                                         }
                                                         §§goto(addr185);
                                                      }
                                                      §§goto(addr147);
                                                      §§push(§§newactivation());
                                                   }
                                                   else
                                                   {
                                                      addr173:
                                                      §§push(requestContext3D);
                                                   }
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr171);
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr135);
                           }
                           catch(e:Error)
                           {
                              §27§("Context3D error: " + e.message);
                              throw e;
                           }
                           §§goto(addr143);
                        }
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr58);
               }
            }
         }
         §§goto(addr73);
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!(_loc5_ && this))
         {
            this.§'!M§ = true;
            if(!_loc5_)
            {
               this.§,3§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
               if(_loc6_)
               {
                  this.§,3§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
                  if(!(_loc5_ && _loc1_))
                  {
                     addr60:
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§@!C§,false);
                     if(!_loc6_)
                     {
                     }
                     addr78:
                     var _loc3_:int = 0;
                     var _loc4_:* = this.§^O§;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc4_,_loc3_));
                        if(!(_loc5_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              _loc1_ = §§nextvalue(_loc3_,_loc4_);
                              if(_loc6_ || this)
                              {
                                 this.§,3§.removeEventListener(_loc1_,this.§2h§,false);
                              }
                              continue;
                           }
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 _loc3_ = 0;
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    _loc4_ = this.§;F§;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       break loop0;
                                    }
                                    addr156:
                                    addr154:
                                 }
                              }
                              if(this.§3!K§)
                              {
                                 if(_loc6_)
                                 {
                                    this.§3!K§.dispose();
                                    if(_loc6_)
                                    {
                                       addr168:
                                       §§push(this.§8S§);
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr182:
                                                this.§8S§.dispose();
                                                addr183:
                                                §§push(this.§4!'§);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         addr192:
                                                         this.§4!'§.dispose();
                                                         if(_loc6_)
                                                         {
                                                            addr195:
                                                            if(§ r§ == this)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  § r§ = null;
                                                                  if(_loc5_ && _loc1_)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§push(Boolean(this.§`!G§));
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr229:
                                                                     §§pop();
                                                                     if(_loc6_)
                                                                     {
                                                                        addr232:
                                                                        §§push(Boolean(this.§`!G§.bitmapData));
                                                                     }
                                                                     §§goto(addr243);
                                                                  }
                                                               }
                                                               if(!§§pop())
                                                               {
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         §§goto(addr232);
                                                      }
                                                   }
                                                   §§goto(addr195);
                                                }
                                             }
                                             §§goto(addr192);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr182);
                                    }
                                    §§goto(addr243);
                                 }
                                 addr237:
                                 this.§`!G§.bitmapData.dispose();
                                 if(_loc6_)
                                 {
                                    addr243:
                                    this.§`!G§.bitmapData = null;
                                 }
                                 return;
                              }
                              §§goto(addr168);
                           }
                           §§goto(addr156);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc2_ = §§nextvalue(_loc3_,_loc4_);
                           if(_loc6_)
                           {
                              _loc2_.dispose();
                           }
                           continue;
                        }
                        §§goto(addr156);
                     }
                  }
                  this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§<!3§,false);
                  §§goto(addr78);
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3!K§ = this.mStage3D.context3D;
            if(_loc2_)
            {
               this.§;F§ = new Dictionary();
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr47);
               }
            }
            §§goto(addr81);
         }
         addr47:
         if(this.§3!K§)
         {
            if(_loc2_)
            {
               this.§3!K§.enableErrorChecking = this.§!k§;
               if(_loc2_ || _loc1_)
               {
                  if(this.§3!K§.driverInfo.indexOf("Software") >= 0)
                  {
                     addr81:
                     this.§5!>§ = true;
                     addr84:
                  }
               }
               §§goto(addr84);
            }
            addr90:
            §=l§();
         }
         else
         {
            this.§5!>§ = true;
            if(!_loc1_)
            {
               §§goto(addr90);
            }
         }
      }
      
      private function §>!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§]!M§);
            if(_loc1_)
            {
               if(§§pop().numChildren > 0)
               {
                  §§goto(addr30);
               }
               else
               {
                  §§push(this.§#3§);
                  if(!_loc2_)
                  {
                     §§push(null);
                     if(_loc1_ || _loc2_)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§#3§ = new this.§ z§();
                           if(!(_loc2_ && this))
                           {
                              addr75:
                              if(this.§#3§ != null)
                              {
                                 §§goto(addr95);
                              }
                           }
                           throw new Error("Invalid root class: " + this.§ z§);
                        }
                     }
                  }
                  §§goto(addr75);
               }
            }
            addr95:
            this.§]!M§.addChild(this.§#3§);
            return;
         }
         addr30:
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         try
         {
            this.§3!K§.configureBackBuffer(§%!5§.width,§%!5§.height,this.§&J§,false);
            if(_loc3_)
            {
               §+I§ = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§]u§());
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(§+I§);
                  if(_loc3_)
                  {
                     addr29:
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           if(this.§3!K§)
                           {
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr42:
                                 this.mStage3D.x = §%!5§.x;
                                 this.mStage3D.y = §%!5§.y;
                              }
                              this.configureBackBuffer();
                              if(_loc3_ || _loc2_)
                              {
                                 addr62:
                                 if(§+I§)
                                 {
                                    return;
                                 }
                                 addr66:
                                 this.setCanvasSize(§%!5§.width,§%!5§.height);
                                 if(!_loc4_)
                                 {
                                    addr101:
                                    §§push(getTimer() / 1000);
                                    if(!_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc1_:* = §§pop();
                                    §§push(_loc1_);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() - this.§<I§);
                                       if(!_loc4_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc2_:* = §§pop();
                                    if(_loc3_)
                                    {
                                       this.§<I§ = _loc1_;
                                       §§push(this.§]!M§);
                                       if(_loc3_)
                                       {
                                          §§pop().advanceTime(_loc2_);
                                          this.§?S§.advanceTime(_loc2_);
                                          this.§8S§.advanceTime(_loc2_);
                                          if(_loc3_)
                                          {
                                             §§push(this.§4!'§);
                                             if(_loc3_)
                                             {
                                                §§pop().§"! §(this.§]!M§.stageWidth,this.§]!M§.stageHeight);
                                                §§push(this.§4!'§);
                                                if(!_loc4_)
                                                {
                                                   §§pop().clear(this.§3!K§,this.§2!;§,1);
                                                   §§push(this.§4!'§);
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                   }
                                                   addr237:
                                                   §§pop().finishRendering(this.§3!K§);
                                                   addr242:
                                                   this.§4!'§.§7!§();
                                                   return;
                                                   addr240:
                                                }
                                                §§pop().§7t§(this.§3!K§,this.§+c§);
                                                if(!_loc4_)
                                                {
                                                   addr194:
                                                   this.§]!M§.render(this.§4!'§,1);
                                                   if(_loc3_)
                                                   {
                                                      §§push(this.§4!'§);
                                                      if(!_loc4_)
                                                      {
                                                         §§pop().§6J§();
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(this.§84§ != null)
                                                            {
                                                               addr226:
                                                               this.§84§();
                                                               this.§84§ = null;
                                                               if(_loc4_)
                                                               {
                                                               }
                                                               §§goto(addr240);
                                                            }
                                                            §§push(this.§4!'§);
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr226);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr101);
                              }
                           }
                           else if(this.§`!G§)
                           {
                              if(_loc4_ && _loc3_)
                              {
                              }
                           }
                           §§goto(addr101);
                        }
                        §+I§ = false;
                        if(_loc3_ || this)
                        {
                           this.setCanvasSize(§%!5§.width,§%!5§.height);
                        }
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr62);
               }
               §§goto(addr66);
            }
            §§goto(addr29);
         }
         §§goto(addr42);
      }
      
      public function set §?D§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§84§ = param1;
         }
      }
      
      private function §&h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_ || _loc2_)
         {
            this.§;!J§.x = §%!5§.x;
            if(!(_loc4_ && _loc3_))
            {
               addr39:
               this.§;!J§.y = §%!5§.y;
            }
            var _loc1_:int = this.§;!J§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§;!J§.parent;
            if(!_loc4_)
            {
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(0);
                  if(!_loc4_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc5_ || _loc1_)
                     {
                        §§push(!§§pop());
                        §§push(!§§pop());
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc5_ || this)
                              {
                                 addr86:
                                 if(_loc2_ == null)
                                 {
                                    if(_loc5_ || _loc3_)
                                    {
                                       this.§,3§.addChild(this.§;!J§);
                                    }
                                    addr146:
                                    §§push(this.§4!'§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          addr163:
                                          if(§§pop())
                                          {
                                             if(_loc5_ || _loc1_)
                                             {
                                                addr172:
                                                §§pop();
                                                §§push(this.§4!'§);
                                                if(_loc5_)
                                                {
                                                   addr179:
                                                   if(§§pop().canvas)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         §§push(this.§4!'§);
                                                         if(_loc5_ || this)
                                                         {
                                                            addr196:
                                                            §§pop().setCanvasSize(this.§9,§,this.§-2§,§%!5§.width / this.§]!M§.stageWidth,§%!5§.height / this.§]!M§.stageHeight);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      addr213:
                                                      addr215:
                                                      _loc3_ = §§pop().canvas;
                                                      if(_loc5_ || this)
                                                      {
                                                         if(this.§`!G§.bitmapData != _loc3_)
                                                         {
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      addr237:
                                                      this.§`!G§.bitmapData = _loc3_;
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         addr258:
                                                         if(this.§,3§.getChildIndex(this.§;!J§) > 0)
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               addr272:
                                                               this.§,3§.removeChild(this.§;!J§);
                                                               if(_loc4_)
                                                               {
                                                               }
                                                               §§goto(addr285);
                                                            }
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      this.§,3§.addChildAt(this.§;!J§,0);
                                                      addr285:
                                                      return;
                                                      §§push(this.§4!'§);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr196);
                                             }
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr215);
                                 }
                                 else
                                 {
                                    addr102:
                                    §§push(_loc1_ == 0);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr113:
                                          if(§§pop())
                                          {
                                             §§pop();
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§push(Boolean(_loc2_));
                                                if(!_loc4_)
                                                {
                                                   addr126:
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§,3§.removeChild(this.§;!J§);
                                                         if(!_loc4_)
                                                         {
                                                            §§goto(addr146);
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                   §§goto(addr146);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr172);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr172);
                  }
               }
               §§goto(addr102);
            }
            §§goto(addr146);
         }
         §§goto(addr39);
      }
      
      private function §27§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         _loc3_.align = TextFormatAlign.CENTER;
         _loc2_.defaultTextFormat = _loc3_;
         if(!_loc5_)
         {
            _loc2_.wordWrap = true;
            if(!_loc5_)
            {
               _loc2_.width = this.§]!M§.stageWidth * 0.75;
               _loc2_.autoSize = TextFieldAutoSize.CENTER;
               _loc2_.text = param1;
               if(_loc4_ || param1)
               {
                  _loc2_.x = (this.§]!M§.stageWidth - _loc2_.width) / 2;
                  _loc2_.y = (this.§]!M§.stageHeight - _loc2_.height) / 2;
                  if(!_loc5_)
                  {
                     addr104:
                     _loc2_.background = true;
                     _loc2_.backgroundColor = 4456448;
                     this.§0?§.addChild(_loc2_);
                  }
                  return;
               }
            }
         }
         §§goto(addr104);
      }
      
      public function §@!N§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            § r§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'J§ = true;
            if(_loc2_ || _loc1_)
            {
               addr29:
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§'J§ = false;
            if(_loc1_)
            {
               this.mStage3D.visible = false;
            }
         }
      }
      
      public function § !I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§+P§ = param1;
         }
      }
      
      private function §97§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§3p§ = true;
            if(_loc2_ || this)
            {
               if(this.§`!G§ == null)
               {
                  if(_loc2_ || this)
                  {
                     this.§`!G§ = new Bitmap();
                     if(!(_loc1_ && _loc2_))
                     {
                        addr71:
                        this.§0?§.addChild(this.§`!G§);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr71);
      }
      
      private function §<!3§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§97§();
            if(_loc3_ || _loc3_)
            {
               addr38:
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §@!C§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            if(this.§'!M§)
            {
               return;
            }
         }
         var _loc2_:*;
         §§push((_loc2_ = §§findproperty(§2!L§)).§2!L§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() + 1);
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            _loc2_.§2!L§ = _loc3_;
         }
         if(_loc4_ || _loc3_)
         {
            this.§+c§ = §2!L§;
            if(!_loc5_)
            {
               §§push(this.§4!'§);
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(this.§4!'§);
                        if(_loc4_ || this)
                        {
                           §§pop().dispose();
                        }
                        addr249:
                        §§pop().clear(null,this.§2!;§);
                        §§goto(addr253);
                     }
                     addr195:
                     this.§4!'§ = new §2N§();
                     addr253:
                     this.§8S§.§?I§ = this.§"U§;
                     §§goto(addr258);
                  }
                  §§push(!§>I§.§8$§);
                  §§push(!§>I§.§8$§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           addr101:
                           if(this.§3!K§)
                           {
                              if(_loc4_ || this)
                              {
                                 this.§27§("Fatal error: The application lost the device context!");
                                 this.stop();
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    return;
                                 }
                                 addr204:
                                 §§push(this.§4!'§);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§pop().setCanvasSize(this.§9,§,this.§-2§,§%!5§.width / this.§]!M§.stageWidth,§%!5§.height / this.§]!M§.stageHeight);
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr249);
                                       §§push(this.§4!'§);
                                    }
                                 }
                                 §§goto(addr249);
                              }
                              addr258:
                              dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                              return;
                           }
                           this.§@!N§();
                           this.§!8§();
                           if(!(_loc5_ && _loc3_))
                           {
                              this.§>!C§();
                              addr147:
                              §§push(Boolean(this.§3!K§));
                              if(_loc4_)
                              {
                                 addr153:
                                 if(§§pop())
                                 {
                                    if(!_loc5_)
                                    {
                                       §§pop();
                                       §§push(this.§5!>§);
                                       if(_loc5_ && param1)
                                       {
                                       }
                                       addr167:
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             this.mStage3DEnabled = false;
                                             addr178:
                                             this.§3!K§ = null;
                                             this.§97§();
                                             if(_loc4_)
                                             {
                                                addr185:
                                                if(this.§3!K§)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      §§goto(addr195);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr204);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§4!'§ = new §]8§();
                                                   §§goto(addr204);
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr249);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr185);
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr185);
                           §§goto(addr204);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr101);
                  }
                  §§goto(addr153);
               }
               §§goto(addr249);
            }
            §§goto(addr178);
         }
         §§goto(addr195);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc3_)
         {
            this.§@!N§();
         }
         §§push(getTimer() / 1000);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc5_)
         {
            §§push(§§pop() - this.§<I§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§'J§);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Boolean(§§pop()));
               if(_loc5_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        addr77:
                        §§pop();
                        §§goto(addr115);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.render();
                     if(_loc5_)
                     {
                        addr105:
                        if(this.§;!J§)
                        {
                           if(!(_loc4_ && this))
                           {
                              §§goto(addr115);
                           }
                        }
                     }
                     §§goto(addr115);
                  }
                  addr115:
                  if(_loc5_)
                  {
                     §§push(_loc3_ > 1);
                  }
                  this.§&h§();
                  return;
               }
               §§goto(addr105);
            }
         }
         §§goto(addr77);
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§@!N§();
            if(!_loc2_)
            {
               addr38:
               this.§]!M§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(_loc6_ || this)
         {
            §§push(§§pop() / this.§]!G§);
            if(_loc6_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(param2);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() / this.§85§);
            if(!(_loc5_ && param1))
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               if(!§6+§)
               {
                  §§push(this.§]!M§);
                  if(_loc6_ || param2)
                  {
                     §§push(this.§]!G§);
                     §§push(_loc3_);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              §§pop().stageWidth = §§pop() / §§pop();
                              if(_loc6_ || param2)
                              {
                                 §§push(this.§]!M§);
                                 if(_loc6_)
                                 {
                                    §§pop().stageHeight = this.§85§;
                                 }
                                 §§goto(addr161);
                              }
                           }
                           else
                           {
                              addr152:
                              §§pop().stageHeight = §§pop() / §§pop();
                           }
                           this.§9,§ = param1;
                           addr156:
                           this.§-2§ = param2;
                           addr161:
                           §§pop().dispatchEvent(new §`^§(flash.events.Event.RESIZE,param1,param2));
                           return;
                           §§push(this.§]!M§);
                        }
                        §§goto(addr152);
                     }
                  }
                  else
                  {
                     addr139:
                     §§push(this.§85§);
                     §§push(_loc4_);
                     if(!(_loc5_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        §§push(_loc3_);
                     }
                  }
                  §§goto(addr152);
               }
               else
               {
                  §§push(this.§]!M§);
                  if(_loc6_ || param1)
                  {
                     §§pop().stageWidth = this.§]!G§;
                     §§push(this.§]!M§);
                     if(!_loc5_)
                     {
                        §§goto(addr139);
                     }
                  }
               }
               §§goto(addr161);
            }
            §§goto(addr156);
         }
         §§goto(addr55);
      }
      
      public function §<C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.setCanvasSize(this.§]!G§,this.§85§);
         }
      }
      
      private function §2h§(param1:flash.events.Event) : void
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
            §§push(this.§'J§);
            if(_loc10_ || _loc2_)
            {
               §§push(!§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_ && this)
                     {
                     }
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
                              §§push(Number(_loc6_.stageY));
                           }
                           _loc3_ = §§pop();
                           if(_loc10_ || _loc2_)
                           {
                              _loc4_ = 0;
                              if(_loc10_ || _loc3_)
                              {
                                 if(param1.type == MouseEvent.MOUSE_DOWN)
                                 {
                                    this.§7!L§ = true;
                                    if(_loc9_ && param1)
                                    {
                                       addr134:
                                       this.§7!L§ = false;
                                       var _loc8_:* = param1.type;
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                          {
                                             §§push(!_loc9_ ? 0 : 2);
                                          }
                                          else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                          {
                                             §§push(1);
                                          }
                                          else
                                          {
                                             if(TouchEvent.TOUCH_END === _loc8_)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr292);
                                                }
                                                addr330:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §§push(§>;§.§7!=§);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc9_)
                                                         {
                                                            _loc5_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            addr193:
                                                            _loc5_ = §§pop();
                                                            if(_loc9_)
                                                            {
                                                               addr256:
                                                               _loc5_ = §>;§.§"%§;
                                                               addr243:
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               break;
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr178:
                                                         _loc5_ = §§pop();
                                                      }
                                                      addr332:
                                                      §§push(_loc2_);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() < §%!5§.left);
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc10_ || _loc2_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§pop();
                                                                  §§push(_loc2_);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr361:
                                                                     §§push(§§pop() >= §%!5§.right);
                                                                     §§push(§§pop() >= §%!5§.right);
                                                                     if(_loc10_ || this)
                                                                     {
                                                                        addr369:
                                                                        if(!§§pop())
                                                                        {
                                                                           §§pop();
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr382:
                                                                              §§push(_loc3_ < §%!5§.top);
                                                                              §§push(_loc3_ < §%!5§.top);
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr389:
                                                                                       §§push(_loc3_);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr392:
                                                                                          §§push(§§pop() >= §%!5§.bottom);
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             addr402:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                }
                                                                                                addr413:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(_loc2_ - §%!5§.x));
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         addr447:
                                                                                                         §§push(_loc3_);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr450:
                                                                                                            §§push(§§pop() - §%!5§.y);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                            }
                                                                                                            §§goto(addr456);
                                                                                                         }
                                                                                                         addr456:
                                                                                                         _loc3_ = §§pop();
                                                                                                         this.§8S§.enqueue(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                                         return;
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr413);
                                                                                          }
                                                                                          §§pop();
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr447);
                                                                                       }
                                                                                       §§goto(addr456);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr402);
                                                                           }
                                                                           addr414:
                                                                           return;
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     §§goto(addr402);
                                                                  }
                                                                  §§goto(addr450);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr369);
                                                         }
                                                         §§goto(addr413);
                                                      }
                                                      §§goto(addr392);
                                                   case 1:
                                                      §§push(§>;§.§"%§);
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr178);
                                                         §§push(§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr243);
                                                      }
                                                      §§goto(addr332);
                                                   case 2:
                                                      §§push(§>;§.§1!@§);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc10_ || this)
                                                         {
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                      §§goto(addr243);
                                                   case 3:
                                                      §§push(§>;§.§7!=§);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc10_)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(!(_loc10_ || _loc3_))
                                                            {
                                                               §§goto(addr243);
                                                            }
                                                            §§goto(addr332);
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      else
                                                      {
                                                         addr232:
                                                         _loc5_ = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            §§goto(addr332);
                                                         }
                                                      }
                                                      §§goto(addr389);
                                                   case 4:
                                                      §§goto(addr232);
                                                   case 5:
                                                      §§push(§>;§.§1!@§);
                                                      if(this.§7!L§)
                                                      {
                                                         §§goto(addr256);
                                                      }
                                                      else
                                                      {
                                                         §§push(§>;§.§+S§);
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            §§goto(addr256);
                                                         }
                                                      }
                                                      §§goto(addr256);
                                                   default:
                                                      §§goto(addr332);
                                                }
                                                §§goto(addr413);
                                                §§push(_loc5_ == §>;§.§7!=§);
                                             }
                                             else
                                             {
                                                if(MouseEvent.MOUSE_DOWN !== _loc8_)
                                                {
                                                   if(MouseEvent.MOUSE_UP === _loc8_)
                                                   {
                                                      addr304:
                                                      §§push(4);
                                                      if(!(_loc10_ || this))
                                                      {
                                                         addr325:
                                                      }
                                                   }
                                                   else if(MouseEvent.MOUSE_MOVE === _loc8_)
                                                   {
                                                      §§push(5);
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         §§goto(addr325);
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr330);
                                                      §§push(6);
                                                   }
                                                }
                                                §§goto(addr330);
                                             }
                                             §§push(3);
                                          }
                                          §§goto(addr330);
                                       }
                                       §§goto(addr304);
                                       addr137:
                                       addr161:
                                    }
                                    §§goto(addr137);
                                 }
                                 else
                                 {
                                    if(param1.type == MouseEvent.MOUSE_UP)
                                    {
                                       if(!_loc10_)
                                       {
                                       }
                                    }
                                    §§goto(addr134);
                                 }
                              }
                           }
                           §§goto(addr134);
                        }
                        else
                        {
                           §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                           if(!_loc9_)
                           {
                              _loc2_ = §§pop();
                              if(_loc10_)
                              {
                                 §§push(Number(_loc7_.stageY));
                              }
                              §§goto(addr161);
                           }
                           _loc3_ = §§pop();
                           if(!_loc9_)
                           {
                              _loc4_ = _loc7_.touchPointID;
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr70);
               }
               §§pop();
               if(!_loc9_)
               {
                  §§push(this.§+P§);
                  if(!_loc9_)
                  {
                     §§push(!§§pop());
                     if(_loc10_ || param1)
                     {
                        §§goto(addr70);
                     }
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr70);
         }
         §§goto(addr79);
      }
      
      private function get §^O§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8!5§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(!_loc5_)
         {
            if(param1 in this.§;F§)
            {
               if(_loc6_ || this)
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
            if(this.§3!K§ != null)
            {
               addr64:
               (_loc4_ = this.§3!K§.createProgram()).upload(param2,param3);
               if(!(_loc5_ && this))
               {
                  this.§;F§[param1] = _loc4_;
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §;h§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§&!L§(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_.dispose();
                  if(_loc4_ || param1)
                  {
                     delete this.§;F§[param1];
                  }
               }
            }
         }
      }
      
      public function §&!L§(param1:String) : Program3D
      {
         return this.§;F§[param1] as Program3D;
      }
      
      public function §=!8§(param1:String) : Boolean
      {
         return param1 in this.§;F§;
      }
      
      public function get §2b§() : Boolean
      {
         return this.§'J§;
      }
      
      public function get §2!@§() : §2^§
      {
         return this.§?S§;
      }
      
      public function get §?I§() : Boolean
      {
         return this.§"U§;
      }
      
      public function set §?I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§"U§ = param1;
            if(!(_loc3_ && param1))
            {
               if(this.§3!K§)
               {
                  if(!_loc3_)
                  {
                     addr48:
                     this.§8S§.§?I§ = param1;
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§!k§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§!k§ = param1;
            if(_loc2_ || _loc2_)
            {
               §§goto(addr43);
            }
            §§goto(addr48);
         }
         addr43:
         if(this.§3!K§)
         {
            if(!_loc3_)
            {
               addr48:
               this.§3!K§.enableErrorChecking = param1;
            }
         }
      }
      
      public function get §"?§() : int
      {
         return this.§&J§;
      }
      
      public function set §"?§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&J§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               §=l§();
            }
         }
      }
      
      public function get §0?§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_)
         {
            if(this.§;!J§ == null)
            {
               if(!(_loc3_ && this))
               {
                  this.§;!J§ = new Sprite();
                  addr56:
                  _loc1_ = new ContextMenu();
                  if(_loc2_ || _loc1_)
                  {
                     _loc1_.hideBuiltInItems();
                     if(!_loc3_)
                     {
                        this.§;!J§.contextMenu = _loc1_;
                        if(_loc3_)
                        {
                        }
                        §§goto(addr79);
                     }
                  }
                  this.§&h§();
               }
               §§goto(addr56);
            }
            addr79:
            return this.§;!J§;
         }
         §§goto(addr56);
      }
      
      public function get stage() : §&o§.Stage
      {
         return this.§]!M§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §2F§() : flash.display.Stage
      {
         return this.§,3§;
      }
      
      public function get §09§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§3p§);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
   }
}
