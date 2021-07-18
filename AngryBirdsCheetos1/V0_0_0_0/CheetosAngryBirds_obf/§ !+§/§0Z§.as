package § !+§
{
   import §&! §.§0!V§;
   import §0j§.§=!,§;
   import §2!-§.Texture;
   import §`a§.DisplayObject;
   import §`a§.Stage;
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
   import flash.ui.Multitouch;
   import flash.ui.MultitouchInputMode;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import starling.events.§!q§;
   import starling.events.§,d§;
   import starling.events.§6!>§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §0Z§ extends EventDispatcher implements §0!V§
   {
      
      public static const VERSION:String = "1.0";
      
      private static var § n§:§0Z§;
      
      private static var §[<§:Boolean;
      
      private static var §?t§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §-?§:§`a§.Stage;
      
      private var § !-§:Class;
      
      private var §#`§:§`a§.DisplayObject;
      
      private var §6a§:§=!,§;
      
      private var §@H§:Boolean;
      
      private var §@I§:Boolean;
      
      private var §%!S§:§%L§;
      
      private var §0y§:§,d§;
      
      private var §&R§:int;
      
      private var §1u§:Boolean;
      
      private var §%e§:Boolean;
      
      private var §&[§:Number;
      
      private var §!W§:Rectangle;
      
      private var §`H§:Boolean;
      
      private var §3!2§:flash.display.Stage;
      
      private var §&^§:Sprite;
      
      private var §@n§:Context3D;
      
      private var §?!2§:Dictionary;
      
      private var § !C§:int;
      
      private var §'6§:Boolean;
      
      private var §-q§:Number;
      
      private var §=-§:Number;
      
      private var §68§:Number;
      
      private var § ]§:Number;
      
      private var §]!C§:Number;
      
      private var §<-§:Number;
      
      private var §`>§:Function;
      
      private var §^0§:uint;
      
      private var §7!S§:String;
      
      private var §=X§:Bitmap;
      
      private var §+5§:Boolean = false;
      
      private var § y§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §[!2§:Boolean = false;
      
      public function §0Z§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(_loc10_ || param2)
         {
            super();
            if(!_loc9_)
            {
               if(param2 == null)
               {
                  if(_loc10_ || param2)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop3:
                  while(true)
                  {
                     this.§<-§ = param2.stageHeight;
                     addr284:
                     loop18:
                     while(true)
                     {
                        §^$§ = true;
                        addr278:
                        while(true)
                        {
                           this.§%-§();
                           addr273:
                           while(true)
                           {
                              this.§ !-§ = param1;
                              addr269:
                              loop17:
                              while(true)
                              {
                                 this.§!W§ = param3;
                                 addr264:
                                 loop11:
                                 while(true)
                                 {
                                    this.mStage3D = param4;
                                    addr257:
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          continue loop18;
                                       }
                                       this.§-?§ = new §`a§.Stage(param3.width,param3.height,param2.color);
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop17;
                                          }
                                          this.§3!2§ = param2;
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                break loop11;
                                             }
                                             addr296:
                                             while(true)
                                             {
                                                this.§]!C§ = param2.stageWidth;
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    continue loop17;
                                 }
                                 this.§0y§ = new §,d§(this.§-?§);
                              }
                           }
                        }
                     }
                  }
               }
               else if(param1 == null)
               {
                  if(!_loc9_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr296);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(!_loc9_)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                     }
                     §§goto(addr231);
                  }
                  if(param4 == null)
                  {
                     if(_loc10_)
                     {
                        param4 = param2.stage3Ds[0];
                     }
                     §§goto(addr269);
                  }
                  this.§-q§ = param3.width;
                  if(_loc10_ || param2)
                  {
                     this.§=-§ = param3.height;
                     §§goto(addr307);
                  }
               }
               §§goto(addr231);
            }
            §§goto(addr269);
         }
         §§goto(addr284);
      }
      
      public static function get §=2§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§4J§);
            if(!(_loc2_ && §0Z§))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     addr45:
                     §§push(§4J§.§'6§);
                     if(_loc1_ || _loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr64:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr64);
            }
         }
         §§goto(addr45);
      }
      
      public static function § Z§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§ n§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr152:
               while(true)
               {
                  §§push(§§pop());
                  addr153:
                  while(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                     }
                  }
                  §§goto(addr78);
               }
               loop5:
               while(true)
               {
                  if(_loc2_ && §0Z§)
                  {
                     continue loop0;
                  }
                  §§push(§§pop().§+5§);
                  loop6:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop7:
                     while(true)
                     {
                        §§push(§§pop());
                        loop8:
                        while(_loc1_)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              for(; !_loc2_; loop12:
                              while(true)
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(!§§pop());
                                       loop13:
                                       for(; !_loc2_; if(_loc2_ && §0Z§)
                                       {
                                          continue;
                                       },if(!(_loc1_ || _loc2_))
                                       {
                                          continue loop12;
                                       },§§push(!§§pop()))
                                       {
                                          if(_loc2_)
                                          {
                                             break loop12;
                                          }
                                          §§push(§§pop());
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                if(_loc1_)
                                                {
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      §§goto(addr120);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr155:
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr84);
                                                addr40:
                                                §§push(§§pop().§@n§.driverInfo == "Disposed");
                                                if(_loc2_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                if(!_loc2_)
                                                {
                                                   continue loop13;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr78);
                                          }
                                          §§goto(addr78);
                                       }
                                       continue loop6;
                                    }
                                    continue loop7;
                                 }
                                 continue loop9;
                              },§§goto(addr152))
                              {
                                 §§pop();
                                 while(true)
                                 {
                                    §§push(§ n§);
                                    addr84:
                                    while(true)
                                    {
                                       §§push(§§pop().§@n§ == null);
                                       §§push(§ n§);
                                       addr120:
                                       continue loop9;
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr154);
                           }
                           addr78:
                           return §§pop();
                        }
                        §§goto(addr153);
                     }
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      public static function get §4J§() : §0Z§
      {
         return § n§;
      }
      
      public static function get §-m§() : §=!,§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§ n§);
            if(!(_loc2_ && §0Z§))
            {
               return !!§§pop() ? § n§.§-m§ : null;
            }
         }
         §§goto(addr53);
      }
      
      public static function get §+!§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §+!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §^$§() : Boolean
      {
         return §[<§;
      }
      
      public static function set §^$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§ n§ == null)
            {
               do
               {
                  §[<§ = param1;
               }
               while(_loc2_ && param1);
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
         throw new IllegalOperationError("Setting must be changed before Starling instance is created");
      }
      
      public static function §4!8§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            if(§4J§)
            {
               if(_loc5_ || §0Z§)
               {
                  return Texture.§'d§(§4J§.§@n§,param1,param2,param3);
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
         if(!_loc4_)
         {
            §§push(§ n§);
            if(!_loc4_)
            {
               if(§§pop().§@n§)
               {
                  if(!(_loc4_ && §0Z§))
                  {
                     addr33:
                     §§push(§ n§);
                     if(!(_loc4_ && param1))
                     {
                        §§pop().§@n§.drawToBitmapData(param1);
                        if(!(_loc3_ || param1))
                        {
                           addr82:
                           _loc2_ = § n§.§%!S§.canvas;
                           addr81:
                           if(!_loc4_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr81);
               }
               else
               {
                  §§push(§ n§);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(§§pop().§%!S§);
                     if(!(_loc4_ && param1))
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr81);
                        }
                        addr109:
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
      
      public function get §'w§() : §`a§.DisplayObject
      {
         return this.§#`§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^0§ = param1;
         }
      }
      
      public function get §@1§() : Number
      {
         return this.§-q§;
      }
      
      public function get §3"§() : Number
      {
         return this.§=-§;
      }
      
      public function §+!"§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§7!S§);
         }
         catch(e:Error)
         {
            §>!L§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!(_loc5_ && this))
         {
            this.§[!2§ = true;
            loop0:
            while(true)
            {
               this.§3!2§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§>-§,false);
               while(true)
               {
                  this.§3!2§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§>-§,false);
                  addr82:
                  while(!(_loc5_ && this))
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§?J§,false);
            if(_loc5_)
            {
               continue;
            }
            if(_loc6_ || _loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr70);
            }
            §§goto(addr51);
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§4%§;
         loop6:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(_loc6_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc3_,_loc4_);
                  if(!(_loc5_ && _loc1_))
                  {
                     this.§3!2§.removeEventListener(_loc1_,this.§66§,false);
                  }
                  continue;
               }
               if(!_loc5_)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(!_loc5_)
                     {
                        _loc3_ = 0;
                        if(!_loc5_)
                        {
                           addr169:
                           _loc4_ = this.§?!2§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop6;
                           }
                           addr184:
                        }
                        if(!_loc5_)
                        {
                           if(this.§@n§)
                           {
                              loop7:
                              while(true)
                              {
                                 this.§@n§.dispose();
                                 addr336:
                                 while(true)
                                 {
                                 }
                                 loop23:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop7;
                                    }
                                    addr329:
                                    while(true)
                                    {
                                       §§push(this.§%!S§);
                                       if(!_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             loop11:
                                             for(; _loc6_ || _loc1_; if(_loc5_ && _loc3_)
                                             {
                                                continue;
                                             },this.§=X§.bitmapData.dispose(),for(; !(_loc5_ && _loc1_); this.§=X§.bitmapData = null,if(!(_loc5_ && this))
                                             {
                                                if(!(_loc6_ || _loc3_))
                                                {
                                                   §§goto(addr229);
                                                }
                                                addr191:
                                             },continue,return)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr271);
                                             },§§goto(addr283))
                                             {
                                                §§push(this.§%!S§);
                                                while(true)
                                                {
                                                   §§pop().dispose();
                                                   loop21:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         while(true)
                                                         {
                                                            if(§ n§ == this)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ || _loc2_))
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop23;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     § n§ = null;
                                                                     addr283:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               continue loop21;
                                                               addr271:
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§=X§));
                                                               if(!_loc5_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr266:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(this.§=X§.bitmapData));
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                     addr265:
                                                                  }
                                                                  while(§§pop())
                                                                  {
                                                                     while(!_loc5_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                                  §§goto(addr191);
                                                               }
                                                               §§goto(addr265);
                                                               §§goto(addr283);
                                                            }
                                                            continue loop21;
                                                         }
                                                         addr267:
                                                      }
                                                      addr314:
                                                      while(true)
                                                      {
                                                         §§push(this.§0y§);
                                                         break loop21;
                                                      }
                                                   }
                                                   addr316:
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      continue loop23;
                                                   }
                                                }
                                             }
                                             §§goto(addr336);
                                          }
                                          §§goto(addr267);
                                       }
                                       §§goto(addr299);
                                       §§goto(addr329);
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§0y§);
                              if(_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr314);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr316);
                              §§goto(addr336);
                           }
                        }
                        §§goto(addr314);
                     }
                     §§goto(addr280);
                  }
               }
               §§goto(addr169);
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
            §§goto(addr169);
         }
      }
      
      private function §;-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§@n§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§?!2§ = new Dictionary();
               while(true)
               {
                  if(!this.§@n§)
                  {
                     this.§'6§ = true;
                     loop2:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue;
                        }
                        addr110:
                        while(true)
                        {
                           if(this.§@n§.driverInfo.indexOf("Software") >= 0)
                           {
                              if(_loc2_ || this)
                              {
                                 addr83:
                                 if(!(_loc1_ && this))
                                 {
                                    continue loop0;
                                 }
                                 continue;
                              }
                              addr100:
                              addr100:
                              while(true)
                              {
                              }
                           }
                           addr47:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     this.§@n§.enableErrorChecking = this.§%e§;
                     §§goto(addr83);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §0!H§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-?§);
            while(true)
            {
               if(§§pop().numChildren > 0)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr70:
                     if(_loc2_ || _loc1_)
                     {
                        throw new Error("Invalid root class: " + this.§ !-§);
                     }
                  }
               }
               while(true)
               {
                  §§push(this.§#`§);
                  loop3:
                  while(true)
                  {
                     §§push(null);
                     addr89:
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           continue loop3;
                        }
                        while(true)
                        {
                           this.§#`§ = new this.§ !-§();
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr94);
      }
      
      private function §3M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§ y§ = true;
            while(true)
            {
               this.mStage3D.x = this.§!W§.x;
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.mStage3D.y = this.§!W§.y;
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(§ Z§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§ y§);
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc3_)
                           {
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              if(this.§@n§)
                              {
                                 if(_loc4_)
                                 {
                                    addr55:
                                    this.§@n§.configureBackBuffer(this.§!W§.width,this.§!W§.height,this.§&R§,false);
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    addr20:
                                    while(true)
                                    {
                                       this.§ y§ = false;
                                       if(_loc4_ || _loc2_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    if(!_loc4_)
                                    {
                                       §§goto(addr71);
                                    }
                                    while(true)
                                    {
                                       if(true)
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              §§goto(addr20);
                           }
                           §§goto(addr55);
                        }
                        break;
                     }
                     continue loop0;
                  }
                  §§push(getTimer() / 1000);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  §§push(_loc1_);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() - this.§&[§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     this.§&[§ = _loc1_;
                     while(true)
                     {
                        §§push(this.§-?§);
                        while(true)
                        {
                           §§pop().advanceTime(_loc2_);
                           while(true)
                           {
                              this.§6a§.advanceTime(_loc2_);
                              loop8:
                              while(true)
                              {
                                 this.§0y§.advanceTime(_loc2_);
                                 addr274:
                                 while(true)
                                 {
                                    §§push(this.§%!S§);
                                    addr254:
                                    while(true)
                                    {
                                       §§pop().§6!E§(this.§-?§.stageWidth,this.§-?§.stageHeight);
                                       continue loop8;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§-?§);
                              if(_loc3_)
                              {
                                 break;
                              }
                              §§pop().render(this.§%!S§,1);
                              §§goto(addr227);
                           }
                        }
                        while(_loc4_ || _loc2_)
                        {
                           this.§`>§();
                           §§goto(addr208);
                        }
                     }
                  }
                  §§goto(addr186);
               }
               addr71:
               return;
            }
         }
         §§goto(addr33);
      }
      
      public function set §=>§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§`>§ = param1;
         }
      }
      
      private function §'-§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(_loc5_ || this)
         {
            this.§&^§.x = this.§!W§.x;
            if(_loc5_ || _loc2_)
            {
               addr40:
               this.§&^§.y = this.§!W§.y;
            }
            var _loc1_:int = this.§&^§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§&^§.parent;
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
                     if(!_loc4_)
                     {
                        §§push(!§§pop());
                     }
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr260:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                 }
                              }
                              addr259:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || _loc3_)
                                       {
                                          this.§3!2§.addChild(this.§&^§);
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§%!S§);
                                                if(_loc5_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr225:
                                                               while(_loc5_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr229:
                                                                        while(true)
                                                                        {
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     addr228:
                                                                  }
                                                                  §§goto(addr229);
                                                                  continue loop19;
                                                               }
                                                               continue loop3;
                                                            }
                                                            addr224:
                                                         }
                                                         while(§§pop())
                                                         {
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               this.§3!2§.removeChild(this.§&^§);
                                                               addr213:
                                                               break;
                                                            }
                                                            §§goto(addr229);
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr152:
                                                   loop17:
                                                   while(!(_loc4_ && _loc3_))
                                                   {
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         addr176:
                                                         §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!(_loc4_ && this))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  break;
                                                               }
                                                               addr186:
                                                               §§push(this.§%!S§);
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  addr69:
                                                                  §§push(Boolean(§§pop().canvas));
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 §§push(this.§%!S§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr93:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().setCanvasSize(this.§68§,this.§ ]§,this.§!W§.width / this.§-?§.stageWidth,this.§!W§.height / this.§-?§.stageHeight);
                                                                                       §§goto(addr186);
                                                                                    }
                                                                                    addr93:
                                                                                 }
                                                                                 addr263:
                                                                                 _loc3_ = §§pop().canvas;
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(this.§=X§.bitmapData != _loc3_)
                                                                                    {
                                                                                       addr325:
                                                                                       this.§=X§.bitmapData = _loc3_;
                                                                                    }
                                                                                    addr292:
                                                                                    if(this.§3!2§.getChildIndex(this.§&^§) > 0)
                                                                                    {
                                                                                       addr300:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             this.§3!2§.removeChild(this.§&^§);
                                                                                             this.§3!2§.addChildAt(this.§&^§,0);
                                                                                             if(_loc5_ || _loc1_)
                                                                                             {
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   addr290:
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr292);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr300);
                                                                                             }
                                                                                             addr309:
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr325);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr213);
                                                                              }
                                                                           }
                                                                           while(_loc4_ && this)
                                                                           {
                                                                              continue loop13;
                                                                              §§goto(addr93);
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           §§goto(addr263);
                                                                           §§push(this.§%!S§);
                                                                        }
                                                                        break;
                                                                        §§goto(addr69);
                                                                     }
                                                                     return;
                                                                     addr78:
                                                                  }
                                                                  continue loop17;
                                                               }
                                                               §§goto(addr93);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr201);
                                                            }
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr263);
                                             }
                                             continue loop7;
                                          }
                                          addr250:
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr250);
                                 }
                                 else
                                 {
                                    §§push(_loc1_);
                                    if(!_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == §§pop());
                                 }
                                 §§goto(addr224);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr229);
         }
         §§goto(addr40);
      }
      
      private function §>!L§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!_loc4_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               loop1:
               while(true)
               {
                  _loc2_.wordWrap = true;
                  while(true)
                  {
                     _loc2_.width = this.§-?§.stageWidth * 0.75;
                     continue loop0;
                     addr116:
                     if(_loc5_ || _loc2_)
                     {
                        _loc2_.x = (this.§-?§.stageWidth - _loc2_.width) / 2;
                        loop6:
                        while(_loc5_ || param1)
                        {
                           _loc2_.y = (this.§-?§.stageHeight - _loc2_.height) / 2;
                           loop7:
                           do
                           {
                              if(_loc4_)
                              {
                                 continue loop6;
                              }
                              _loc2_.background = true;
                              while(true)
                              {
                                 _loc2_.backgroundColor = 4456448;
                                 while(_loc5_)
                                 {
                                    this.§;>§.addChild(_loc2_);
                                    if(_loc5_)
                                    {
                                       continue loop7;
                                    }
                                 }
                              }
                           }
                           while(_loc4_ && _loc3_);
                           
                           return;
                        }
                        while(true)
                        {
                           if(!(_loc5_ || _loc3_))
                           {
                              while(!_loc4_)
                              {
                                 continue loop1;
                              }
                              continue loop0;
                              addr129:
                           }
                           §§goto(addr116);
                           §§goto(addr97);
                        }
                        addr97:
                        addr109:
                     }
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function §%-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            § n§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@H§ = true;
         }
         do
         {
            this.mStage3D.visible = this.mStage3DEnabled;
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§@H§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §`5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@I§ = param1;
         }
      }
      
      private function §!!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+5§ = true;
            loop0:
            while(this.§=X§ == null)
            {
               while(_loc1_ || _loc1_)
               {
                  this.§=X§ = new Bitmap();
                  do
                  {
                     this.§;>§.addChild(this.§=X§);
                  }
                  while(!_loc1_);
                  
                  if(!(_loc2_ && _loc2_))
                  {
                     addr48:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      private function §?J§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§!!6§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(!_loc2_);
         
      }
      
      private function §3!%§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§[!2§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     return;
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§?t§)).§?t§);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§?t§ = _loc3_;
                  }
                  if(_loc5_)
                  {
                     this.§ !C§ = §?t§;
                     loop0:
                     while(true)
                     {
                        §§push(this.§%!S§);
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§%!S§);
                                 addr365:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr366:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr363:
                           }
                           while(true)
                           {
                              §§push(§0Z§.§^$§);
                              loop6:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§pop();
                                             while(true)
                                             {
                                                §§push(Boolean(this.§@n§));
                                                while(_loc5_ || param1)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   addr233:
                                                   if(_loc4_ && param1)
                                                   {
                                                      continue;
                                                   }
                                                   addr241:
                                                   §§push(Boolean(§§pop()));
                                                   if(!_loc4_)
                                                   {
                                                      addr243:
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue loop7;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         addr251:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  if(this.§@n§)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.§%!S§ = new §%L§();
                                                                           addr204:
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ && param1)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 return;
                                                                                 addr314:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§0y§.§4m§ = this.§1u§;
                                                                                    while(!(_loc4_ && this))
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc5_ || param1)
                                                                                             {
                                                                                                if(_loc5_ || _loc2_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break loop21;
                                                                                                   }
                                                                                                   continue loop23;
                                                                                                }
                                                                                                addr170:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ || param1)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(this.§%!S§);
                                                                                                            while(_loc5_)
                                                                                                            {
                                                                                                               §§pop().setCanvasSize(this.§68§,this.§ ]§,this.§!W§.width / this.§-?§.stageWidth,this.§!W§.height / this.§-?§.stageHeight);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§%!S§);
                                                                                                                  if(_loc4_ && _loc3_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§pop().clear(null,this.§^0§);
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr304:
                                                                                                         addr310:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§%-§();
                                                                                                            addr307:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§;-§();
                                                                                                               addr296:
                                                                                                               while(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  this.§0!H§();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(this.§@n§));
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           addr288:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§'6§);
                                                                                                                              if(_loc5_ || this)
                                                                                                                              {
                                                                                                                                 §§goto(addr233);
                                                                                                                              }
                                                                                                                              §§goto(addr241);
                                                                                                                              break;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr287:
                                                                                                                     }
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr310);
                                                                                                         }
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                      §§goto(addr307);
                                                                                                   }
                                                                                                   §§goto(addr288);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr126);
                                                                                          }
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr292);
                                                                                    }
                                                                                    addr252:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                 }
                                                                                 return;
                                                                              }
                                                                           }
                                                                           addr204:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 break loop25;
                                                                              }
                                                                              this.§@n§ = null;
                                                                           }
                                                                           addr269:
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§%!S§ = new §^!E§();
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               this.stop();
                                                               addr340:
                                                               §§goto(addr314);
                                                               addr340:
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr287);
                                                }
                                                continue loop9;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                this.§>!L§("Fatal error: The application lost the device context!");
                                             }
                                             §§goto(addr340);
                                          }
                                          else
                                          {
                                             §§goto(addr304);
                                          }
                                       }
                                       §§goto(addr314);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr213);
            }
            §§goto(addr251);
         }
         §§goto(addr340);
      }
      
      public function §[x§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc1_))
         {
            this.§%-§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(_loc1_);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - this.§&[§);
            if(!(_loc3_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this.§@H§);
            if(!_loc3_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr122:
                        while(true)
                        {
                           §§push(_loc2_ > 1);
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                        }
                     }
                     addr121:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           this.render();
                           addr103:
                           while(true)
                           {
                           }
                        }
                        addr101:
                     }
                     while(this.§&^§)
                     {
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              this.§'-§();
                           }
                           else
                           {
                              §§goto(addr122);
                           }
                        }
                        if(!_loc3_)
                        {
                           if(_loc4_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr103);
                     }
                     return;
                  }
               }
            }
            §§goto(addr121);
         }
         §§goto(addr122);
      }
      
      private function §>-§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%-§();
         }
         do
         {
            this.§-?§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc2_ && param1);
         
      }
      
      private function §1!Z§(param1:flash.events.Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:flash.display.Stage = param1.target as flash.display.Stage;
         if(!(_loc3_ && _loc3_))
         {
            this.§-?§.dispatchEvent(new §6!>§(flash.events.Event.RESIZE,_loc2_.stageWidth,_loc2_.stageHeight));
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§-q§);
            if(_loc7_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_ || param2)
            {
               §§push(§§pop() / this.§=-§);
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
                  §§push(this.§-?§);
                  while(true)
                  {
                     §§push(this.§-q§);
                     loop1:
                     while(true)
                     {
                        §§pop().stageWidth = §§pop();
                        loop2:
                        while(true)
                        {
                           if(_loc7_)
                           {
                              §§push(this.§-?§);
                              loop3:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this.§=-§);
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc6_)
                                          {
                                             if(_loc7_ || param3)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!(_loc7_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      addr154:
                                                      §§push(§§pop() / _loc4_);
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_ || param3)
                                                         {
                                                            §§pop().stageHeight = §§pop();
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  addr166:
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     this.§68§ = param1;
                                                                     addr94:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr96:
                                                                           if(!(_loc7_ || param3))
                                                                           {
                                                                              break;
                                                                           }
                                                                           this.§ ]§ = param2;
                                                                           continue loop3;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-?§);
                                                                        addr181:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(this.§=-§);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && param3))
                                                                                 {
                                                                                    §§pop().stageHeight = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr198:
                                                                                 }
                                                                              }
                                                                              addr190:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§-q§);
                                                                              }
                                                                              addr213:
                                                                           }
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              addr216:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr217:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    addr218:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr219:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().stageWidth = §§pop();
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                            addr164:
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr219);
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr216);
                                             }
                                             §§goto(addr218);
                                          }
                                          §§goto(addr154);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr154);
                                 }
                                 §§goto(addr181);
                              }
                              continue loop1;
                           }
                           addr201:
                           while(true)
                           {
                           }
                           §§goto(addr213);
                        }
                     }
                  }
               }
               §§goto(addr201);
            }
            §§goto(addr89);
         }
         §§goto(addr25);
      }
      
      public function §7z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.setCanvasSize(this.§-q§,this.§=-§);
         }
      }
      
      private function §66§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!_loc10_)
         {
            §§push(this.§@H§);
            if(_loc9_)
            {
               §§push(!§§pop());
               if(_loc9_ || param1)
               {
                  if(!§§pop())
                  {
                     if(!(_loc10_ && _loc3_))
                     {
                        addr54:
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(this.§@I§);
                           if(!_loc10_)
                           {
                              §§push(!§§pop());
                              if(_loc9_ || this)
                              {
                              }
                              addr88:
                              if(§§pop())
                              {
                                 addr89:
                                 §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                 if(_loc9_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_ || param1)
                                    {
                                       addr163:
                                       _loc3_ = Number(_loc6_.stageY);
                                       while(true)
                                       {
                                          _loc4_ = 0;
                                          loop29:
                                          while(!(_loc10_ && param1))
                                          {
                                             do
                                             {
                                                if(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type != MouseEvent.MOUSE_UP)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         this.§`H§ = false;
                                                      }
                                                      else
                                                      {
                                                         addr148:
                                                         break;
                                                         addr148:
                                                      }
                                                   }
                                                   if(_loc9_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop29;
                                                }
                                                if(!_loc10_)
                                                {
                                                   this.§`H§ = true;
                                                }
                                                §§goto(addr148);
                                             }
                                             while(false);
                                             
                                             var _loc8_:* = param1.type;
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                {
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(0);
                                                      if(!_loc10_)
                                                      {
                                                         addr470:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               §§push(§!q§.§4c§);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc10_ && _loc2_))
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr288:
                                                                     if(false)
                                                                     {
                                                                        addr290:
                                                                        break;
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr246:
                                                                  §§push(§§pop());
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(!(_loc10_ && _loc3_))
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr275:
                                                                              §§push(§§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr278:
                                                                                 if(!(_loc10_ && _loc3_))
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr288);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr342:
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr364:
                                                                                       break;
                                                                                       addr364:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() - this.§!W§.y);
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr528:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                if(!(_loc10_ && _loc2_))
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop6:
                                                                                                   for(; !_loc10_; this.§0y§.§[!G§(_loc4_,_loc5_,_loc2_,_loc3_),if(_loc10_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   },if(_loc9_ || param1)
                                                                                                   {
                                                                                                      if(!(_loc10_ && _loc2_))
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc2_))
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         if(_loc9_ || this)
                                                                                                         {
                                                                                                            §§goto(addr549);
                                                                                                         }
                                                                                                         §§goto(addr687);
                                                                                                      }
                                                                                                      §§goto(addr589);
                                                                                                   },§§goto(addr563))
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr668:
                                                                                                      loop16:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() < this.§!W§.top);
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr643:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    break loop6;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           addr666:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              break loop18;
                                                                                                                           }
                                                                                                                           addr664:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr665);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                               if(!(_loc9_ || _loc3_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                            loop9:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               addr687:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  addr658:
                                                                                                                  while(_loc9_)
                                                                                                                  {
                                                                                                                     §§goto(addr664);
                                                                                                                     §§push(§§pop() >= this.§!W§.right);
                                                                                                                  }
                                                                                                                  §§goto(addr680);
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr600);
                                                                                                      §§goto(addr654);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr658);
                                                                                             }
                                                                                             §§goto(addr551);
                                                                                          }
                                                                                          §§goto(addr562);
                                                                                       }
                                                                                       §§goto(addr528);
                                                                                    }
                                                                                    addr570:
                                                                                 }
                                                                              }
                                                                              §§goto(addr573);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr363:
                                                                              _loc5_ = §§pop();
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr296:
                                                                           §§push(§§pop());
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr325:
                                                                                 §§goto(addr290);
                                                                              }
                                                                              §§goto(addr668);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr331:
                                                                              §§goto(addr342);
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr570);
                                                                        }
                                                                     }
                                                                     §§goto(addr296);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr265:
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           §§goto(addr275);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr317:
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           §§goto(addr325);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr362:
                                                                           §§goto(addr363);
                                                                           §§push(§§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr364);
                                                                  }
                                                               }
                                                               §§goto(addr363);
                                                            case 1:
                                                               §§goto(addr362);
                                                            case 2:
                                                               §§goto(addr331);
                                                            case 3:
                                                               §§push(§!q§.§%X§);
                                                               §§push(§!q§.§#Z§);
                                                               §§push(§!q§.§4c§);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop());
                                                               }
                                                               §§goto(addr317);
                                                            case 4:
                                                               §§goto(addr296);
                                                            case 5:
                                                               §§push(§!q§.§#Z§);
                                                               §§push(this.§`H§);
                                                               if(!(_loc10_ && _loc2_))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§!q§.§%X§);
                                                                        if(_loc9_ || param1)
                                                                        {
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr589);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§!q§.§ !G§);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr265);
                                                                     }
                                                                  }
                                                                  §§goto(addr632);
                                                               }
                                                               §§goto(addr643);
                                                         }
                                                         §§goto(addr680);
                                                         §§push(_loc2_);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr419:
                                                      §§push(2);
                                                      if(_loc10_ && _loc2_)
                                                      {
                                                         addr442:
                                                      }
                                                   }
                                                   §§goto(addr470);
                                                }
                                                else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      §§push(1);
                                                      if(_loc10_ && _loc2_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr454:
                                                      §§push(4);
                                                      if(_loc10_)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr470);
                                                }
                                                else if(TouchEvent.TOUCH_END === _loc8_)
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      §§goto(addr419);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr454);
                                                   }
                                                }
                                                else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§push(3);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr470);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr454);
                                                   }
                                                }
                                                else
                                                {
                                                   if(MouseEvent.MOUSE_UP === _loc8_)
                                                   {
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         §§goto(addr454);
                                                      }
                                                   }
                                                   else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                   {
                                                      §§goto(addr470);
                                                      §§push(6);
                                                   }
                                                   §§goto(addr470);
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr465);
                                                   }
                                                }
                                                §§goto(addr470);
                                             }
                                             §§goto(addr419);
                                          }
                                       }
                                    }
                                    §§goto(addr148);
                                 }
                                 §§goto(addr163);
                              }
                              else
                              {
                                 §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                 if(_loc9_ || param1)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc9_ || _loc3_)
                                    {
                                       addr192:
                                       _loc3_ = Number(_loc7_.stageY);
                                       if(!_loc9_)
                                       {
                                       }
                                       §§goto(addr199);
                                    }
                                    _loc4_ = _loc7_.touchPointID;
                                    §§goto(addr199);
                                 }
                                 §§goto(addr192);
                              }
                           }
                        }
                        §§goto(addr77);
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc9_ || param1)
                     {
                        addr77:
                        return;
                     }
                  }
                  else
                  {
                     §§goto(addr88);
                     §§push(param1 is MouseEvent);
                  }
                  §§goto(addr89);
               }
               §§goto(addr88);
            }
         }
         §§goto(addr54);
      }
      
      private function get §4%§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §"^§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_ || param3)
         {
            if(param1 in this.§?!2§)
            {
               if(!_loc6_)
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
            if(this.§@n§ != null)
            {
               (_loc4_ = this.§@n§.createProgram()).upload(param2,param3);
               addr53:
               if(_loc5_)
               {
                  this.§?!2§[param1] = _loc4_;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §@!2§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§3!3§(param1);
         if(_loc4_ || _loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_.dispose();
               }
               do
               {
                  delete this.§?!2§[param1];
               }
               while(_loc3_ && _loc2_);
               
               addr57:
            }
            return;
         }
         §§goto(addr57);
      }
      
      public function §3!3§(param1:String) : Program3D
      {
         return this.§?!2§[param1] as Program3D;
      }
      
      public function §6!=§(param1:String) : Boolean
      {
         return param1 in this.§?!2§;
      }
      
      public function get §?!L§() : Boolean
      {
         return this.§@H§;
      }
      
      public function get §-m§() : §=!,§
      {
         return this.§6a§;
      }
      
      public function get §4m§() : Boolean
      {
         return this.§1u§;
      }
      
      public function set §4m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1u§ = param1;
         }
         while(this.§@n§)
         {
            if(_loc3_)
            {
               this.§0y§.§4m§ = param1;
            }
            if(!(_loc2_ && _loc2_))
            {
               break;
            }
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§%e§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%e§ = param1;
         }
         while(this.§@n§)
         {
            if(_loc2_)
            {
               this.§@n§.enableErrorChecking = param1;
            }
            if(_loc2_ || param1)
            {
               break;
            }
         }
      }
      
      public function get § l§() : int
      {
         return this.§&R§;
      }
      
      public function set § l§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§&R§ = param1;
            do
            {
               this.§3M§();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      public function get §&u§() : Rectangle
      {
         return this.§!W§.clone();
      }
      
      public function set §&u§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!W§ = param1.clone();
         }
         do
         {
            this.§3M§();
         }
         while(_loc2_);
         
      }
      
      public function get §;>§() : Sprite
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§&^§ == null)
            {
               do
               {
                  this.§&^§ = new Sprite();
                  do
                  {
                     this.§'-§();
                  }
                  while(_loc1_);
                  
               }
               while(!(_loc2_ || this));
               
               addr48:
            }
            return this.§&^§;
         }
         §§goto(addr48);
      }
      
      public function get stage() : §`a§.Stage
      {
         return this.§-?§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §9!#§() : flash.display.Stage
      {
         return this.§3!2§;
      }
      
      public function get §0!J§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§+5§);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
   }
}
