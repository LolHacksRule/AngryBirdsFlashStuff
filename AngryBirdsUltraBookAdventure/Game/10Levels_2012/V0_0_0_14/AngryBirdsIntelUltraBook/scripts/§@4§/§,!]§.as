package §@4§
{
   import §!!9§.Texture;
   import §4g§.§ !w§;
   import §9E§.DisplayObject;
   import §9E§.Stage;
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
   import starling.events.§#!x§;
   import starling.events.§4!L§;
   import starling.events.§=<§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §,!]§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §2S§:§,!]§;
      
      private static var §'!^§:Boolean;
      
      private static var §>9§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §24§:§9E§.Stage;
      
      private var §"C§:Class;
      
      private var §]E§:§9E§.DisplayObject;
      
      private var §<!,§:§ !w§;
      
      private var §3B§:Boolean;
      
      private var §8!V§:Boolean;
      
      private var § !e§:§<!I§;
      
      private var §[3§:§#!x§;
      
      private var §5B§:int;
      
      private var §,!W§:Boolean;
      
      private var §function§:Boolean;
      
      private var §;!j§:Number;
      
      private var §5P§:Rectangle;
      
      private var §?q§:Boolean;
      
      private var §6@§:flash.display.Stage;
      
      private var §@!%§:Sprite;
      
      private var §>!Z§:Context3D;
      
      private var §&U§:Dictionary;
      
      private var §66§:int;
      
      private var §%!b§:Boolean;
      
      private var §9c§:Number;
      
      private var §?b§:Number;
      
      private var §2!F§:Number;
      
      private var §%!_§:Number;
      
      private var §^W§:Number;
      
      private var §4<§:Number;
      
      private var § ?§:Function;
      
      private var §'!k§:uint;
      
      private var §1!a§:String;
      
      private var §%!6§:Bitmap;
      
      private var §,`§:Boolean = false;
      
      private var §7j§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §17§:Boolean = false;
      
      public function §,!]§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_ || param1)
         {
            super();
            if(_loc9_)
            {
               if(param2 == null)
               {
                  if(_loc9_ || param3)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop27:
                  while(true)
                  {
                     this.§%!_§ = this.§?b§;
                     loop28:
                     while(true)
                     {
                        this.§^W§ = param2.stageWidth;
                        addr299:
                        loop1:
                        while(true)
                        {
                           this.§4<§ = param2.stageHeight;
                           while(true)
                           {
                              §=!1§ = true;
                              loop3:
                              while(true)
                              {
                                 if(!(_loc9_ || param3))
                                 {
                                    continue loop27;
                                 }
                                 this.§2X§();
                                 loop4:
                                 while(true)
                                 {
                                    this.§"C§ = param1;
                                    loop5:
                                    while(true)
                                    {
                                       this.§5P§ = param3;
                                       loop6:
                                       while(true)
                                       {
                                          this.mStage3D = param4;
                                          while(!_loc10_)
                                          {
                                             this.§24§ = new §9E§.Stage(param3.width,param3.height,param2.color);
                                             loop8:
                                             while(_loc9_)
                                             {
                                                this.§6@§ = param2;
                                                loop9:
                                                while(true)
                                                {
                                                   if(!(_loc9_ || param1))
                                                   {
                                                      continue loop28;
                                                   }
                                                   this.§[3§ = new §#!x§(this.§24§);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      this.§<!,§ = new § !w§();
                                                      loop11:
                                                      while(true)
                                                      {
                                                         this.§5B§ = 0;
                                                         while(_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.§,!W§ = false;
                                                               addr193:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        this.§function§ = false;
                                                                        continue loop11;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                            addr126:
                                                            if(_loc9_ || this)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     addr137:
                                                                     if(_loc9_ || param2)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§;!j§ = getTimer() / 1000;
                                                                              addr153:
                                                                              addr167:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§&U§ = new Dictionary();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       §§goto(addr126);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr153);
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr317:
                                                                              var _loc7_:int = 0;
                                                                              addr188:
                                                                              var _loc8_:* = this.§[!2§;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr317);
                                                                        }
                                                                        for each(_loc6_ in _loc8_)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              param2.addEventListener(_loc6_,this.§<Z§,false,0,true);
                                                                           }
                                                                        }
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§7p§,false,0,true);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§7p§,false,0,true);
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§,!f§,false,1,true);
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§9!q§,false,1,true);
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mStage3D.visible = false;
                                                                                       while(true)
                                                                                       {
                                                                                          this.§&!y§(true);
                                                                                          addr396:
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                this.§'!k§ = param2.color;
                                                                                                continue loop20;
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop22;
                                                                                          addr364:
                                                                                          if(!(_loc10_ && param2))
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr391);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr316:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr137);
                                                                        }
                                                                        addr316:
                                                                     }
                                                                     this.§2!F§ = this.§9c§;
                                                                     continue loop27;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                continue loop28;
                                             }
                                             continue loop4;
                                          }
                                          continue loop3;
                                       }
                                    }
                                 }
                              }
                              continue loop27;
                              if(_loc10_ && param1)
                              {
                                 continue;
                              }
                              §§goto(addr188);
                           }
                        }
                     }
                  }
                  addr311:
               }
               else if(param1 == null)
               {
                  if(!_loc10_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr275);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_ || param3)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr84:
                        if(param4 == null)
                        {
                           if(_loc9_ || param3)
                           {
                              param4 = param2.stage3Ds[0];
                              addr100:
                              this.§9c§ = param3.width;
                              if(!(_loc10_ && param1))
                              {
                                 this.§?b§ = param3.height;
                                 §§goto(addr316);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr299);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr316);
                  }
                  §§goto(addr84);
               }
               §§goto(addr167);
            }
            §§goto(addr311);
         }
         §§goto(addr204);
      }
      
      public static function get §,?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §,!]§)
         {
            §§push(§!9§);
            if(!(_loc1_ && §,!]§))
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr46:
                     §§push(§!9§.§%!b§);
                     if(!(_loc1_ && _loc1_))
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
      
      public static function §1!8§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,!]§))
         {
            §§push(§2S§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  §§push(§§pop());
                  loop1:
                  while(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§2S§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§,`§);
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                §§pop();
                                                addr140:
                                                while(_loc1_ || §,!]§)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§2S§);
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§>!Z§ == null);
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            §§push(!§§pop());
                                                         }
                                                         §§push(§2S§);
                                                         addr113:
                                                         continue loop8;
                                                         if(!_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr154);
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§push(§§pop().§>!Z§.driverInfo == "Disposed");
               if(_loc1_ || _loc2_)
               {
                  §§goto(addr53);
               }
               §§goto(addr78);
            }
         }
         §§goto(addr147);
      }
      
      public static function get §!9§() : §,!]§
      {
         return §2S§;
      }
      
      public static function get §+!Z§() : § !w§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§2S§);
            if(_loc1_)
            {
               return !!§§pop() ? §2S§.§+!Z§ : null;
            }
         }
         §§goto(addr28);
      }
      
      public static function get §use§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §use§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §=!1§() : Boolean
      {
         return §'!^§;
      }
      
      public static function set §=!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§2S§ != null)
            {
               if(_loc2_ || _loc2_)
               {
                  §§goto(addr50);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr54:
               }
            }
            while(true)
            {
               §'!^§ = param1;
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr54);
            }
            return;
         }
         addr50:
         throw new IllegalOperationError("Setting must be changed before Starling instance is created");
      }
      
      public static function §[!K§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §,!]§)
         {
            if(§!9§)
            {
               if(_loc5_ || param2)
               {
                  return Texture.§5!M§(§!9§.§>!Z§,param1,param2,param3);
               }
            }
         }
         return null;
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(_loc4_ || param1)
         {
            §§push(§2S§);
            if(!_loc3_)
            {
               if(§§pop().§>!Z§)
               {
                  if(_loc4_)
                  {
                     §§push(§2S§);
                     if(_loc4_)
                     {
                        §§pop().§>!Z§.drawToBitmapData(param1);
                        if(_loc3_)
                        {
                           addr78:
                           _loc2_ = §2S§.§ !e§.canvas;
                           addr77:
                           if(!_loc3_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr52:
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr52);
               }
               else
               {
                  §§push(§2S§);
                  if(_loc4_)
                  {
                     addr56:
                     §§push(§§pop().§ !e§);
                     if(!(_loc3_ && param1))
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr77);
                        }
                        addr95:
                        return;
                     }
                     §§goto(addr78);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr56);
         }
         §§goto(addr78);
      }
      
      public function get §;j§() : §9E§.DisplayObject
      {
         return this.§]E§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'!k§ = param1;
         }
      }
      
      public function get §;!I§() : Number
      {
         return this.§9c§;
      }
      
      public function get §%!Y§() : Number
      {
         return this.§?b§;
      }
      
      public function §[!x§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§1!a§);
         }
         catch(e:Error)
         {
            §<<§("Context3D error: " + e.message);
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
            this.§17§ = true;
         }
         loop0:
         while(true)
         {
            this.§6@§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§7p§,false);
            loop1:
            while(true)
            {
               this.§6@§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§7p§,false);
               while(_loc6_)
               {
                  while(true)
                  {
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§,!f§,false);
                     continue loop1;
                     addr37:
                     if(!_loc6_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     var _loc3_:int = 0;
                     var _loc4_:* = this.§[!2§;
                     addr106:
                     §§push(§§hasnext(_loc4_,_loc3_));
                     if(_loc6_ || _loc1_)
                     {
                        if(§§pop())
                        {
                           _loc1_ = §§nextvalue(_loc3_,_loc4_);
                           if(_loc6_)
                           {
                              this.§6@§.removeEventListener(_loc1_,this.§<Z§,false);
                           }
                           §§goto(addr106);
                        }
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 _loc3_ = 0;
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    addr147:
                                    _loc4_ = this.§&U§;
                                    addr167:
                                    for each(_loc2_ in _loc4_)
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          _loc2_.dispose();
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                                 if(!_loc5_)
                                 {
                                    if(this.§>!Z§)
                                    {
                                       addr296:
                                       this.§>!Z§.dispose();
                                    }
                                    §§push(this.§[3§);
                                    if(_loc6_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             addr291:
                                             this.§[3§.dispose();
                                             addr292:
                                          }
                                          §§goto(addr292);
                                       }
                                       §§push(this.§ !e§);
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             addr279:
                                             this.§ !e§.dispose();
                                             addr277:
                                          }
                                          if(§2S§ == this)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                §2S§ = null;
                                             }
                                             addr246:
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr215:
                                                   §§push(Boolean(this.§%!6§));
                                                   if(_loc6_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr223:
                                                         §§pop();
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(Boolean(this.§%!6§.bitmapData));
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                            }
                                                            §§goto(addr223);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  this.§%!6§.bitmapData.dispose();
                                                                  addr212:
                                                                  if(_loc6_)
                                                                  {
                                                                     this.§%!6§.bitmapData = null;
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr223);
                                                                        }
                                                                        §§goto(addr174);
                                                                     }
                                                                     §§goto(addr212);
                                                                  }
                                                                  §§goto(addr296);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr212);
                                                      }
                                                      addr174:
                                                      return;
                                                   }
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr279);
                                    }
                                 }
                                 §§goto(addr291);
                              }
                              §§goto(addr279);
                           }
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr167);
                  }
               }
               continue loop0;
            }
         }
      }
      
      private function §+"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§>!Z§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§&U§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§>!Z§)
                  {
                     this.§%!b§ = true;
                     loop2:
                     while(true)
                     {
                        if(_loc2_ && this)
                        {
                           continue loop1;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        if(!_loc2_)
                        {
                           if(_loc1_ || this)
                           {
                              while(true)
                              {
                                 continue loop2;
                              }
                              addr68:
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§>!Z§.enableErrorChecking = this.§function§;
                              }
                              addr109:
                           }
                        }
                        while(true)
                        {
                           if(this.§>!Z§.driverInfo.indexOf("Software") >= 0)
                           {
                              continue loop0;
                           }
                           addr34:
                           while(true)
                           {
                              continue loop2;
                           }
                        }
                     }
                     return;
                  }
                  §§goto(addr109);
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §@O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§24§);
            loop0:
            for(; §§pop().numChildren <= 0; while(true)
            {
               §§push(this.§24§);
               if(_loc2_ && this)
               {
                  break;
               }
               §§goto(addr38);
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§]E§);
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
                              this.§]E§ = new this.§"C§();
                              addr120:
                              while(true)
                              {
                              }
                           }
                           addr116:
                        }
                        while(true)
                        {
                           §§push(this.§]E§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§push(null);
                           if(_loc2_)
                           {
                              continue loop3;
                           }
                           if(§§pop() != §§pop())
                           {
                              continue loop0;
                           }
                           if(!_loc2_)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 throw new Error("Invalid root class: " + this.§"C§);
                              }
                              continue loop1;
                           }
                           while(true)
                           {
                              if(_loc1_ || this)
                              {
                                 continue loop0;
                              }
                              addr38:
                              §§pop().addChild(this.§]E§);
                              if(!(_loc2_ && _loc1_))
                              {
                                 if(_loc1_)
                                 {
                                    if(_loc1_ || _loc1_)
                                    {
                                       return;
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                           }
                           §§goto(addr120);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr116);
      }
      
      private function §3!-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§7j§ = true;
         }
         do
         {
            this.mStage3D.x = this.§5P§.x;
            do
            {
               this.mStage3D.y = this.§5P§.y;
            }
            while(!_loc1_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            §§push(§1!8§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§goto(addr86);
               }
               loop1:
               while(true)
               {
                  §§push(this.§7j§);
                  if(_loc4_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           if(this.§>!Z§)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 addr68:
                                 if(!_loc4_)
                                 {
                                    addr86:
                                    return;
                                 }
                                 this.§>!Z§.configureBackBuffer(this.§5P§.width,this.§5P§.height,this.§5B§,false);
                              }
                              loop2:
                              while(true)
                              {
                                 addr25:
                                 while(true)
                                 {
                                    this.§7j§ = false;
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    continue loop1;
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
                           §§goto(addr25);
                        }
                        §§goto(addr68);
                     }
                     break;
                  }
                  continue loop0;
               }
               §§push(getTimer() / 1000);
               if(_loc4_ || _loc2_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc1_:* = §§pop();
               §§push(_loc1_);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(§§pop() - this.§;!j§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc3_))
               {
                  this.§;!j§ = _loc1_;
                  loop5:
                  while(true)
                  {
                     §§push(this.§24§);
                     loop6:
                     while(true)
                     {
                        §§pop().advanceTime(_loc2_);
                        loop7:
                        while(true)
                        {
                           this.§<!,§.advanceTime(_loc2_);
                           while(true)
                           {
                              this.§[3§.advanceTime(_loc2_);
                              addr319:
                              addr230:
                              while(true)
                              {
                                 §§push(this.§ !e§);
                                 addr306:
                                 while(true)
                                 {
                                    §§pop().§&!j§(this.§24§.stageWidth,this.§24§.stageHeight);
                                    addr313:
                                    while(true)
                                    {
                                       §§push(this.§ !e§);
                                       addr279:
                                       while(true)
                                       {
                                          §§pop().clear(this.§>!Z§,this.§'!k§,1);
                                          addr285:
                                          while(_loc4_ || _loc2_)
                                          {
                                             §§push(this.§ !e§);
                                             while(true)
                                             {
                                                §§pop().§-F§(this.§>!Z§,this.§66§);
                                                continue loop6;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              if(this.§ ?§ != null)
                              {
                                 if(_loc4_ || _loc1_)
                                 {
                                    if(_loc4_)
                                    {
                                       this.§ ?§();
                                       while(_loc4_)
                                       {
                                          this.§ ?§ = null;
                                          loop21:
                                          for(; !(_loc3_ && _loc2_); while(true)
                                          {
                                             if(!(_loc4_ || _loc1_))
                                             {
                                                continue loop21;
                                             }
                                             §§goto(addr185);
                                          },§§goto(addr173))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§ !e§);
                                                addr173:
                                                addr220:
                                                while(!_loc3_)
                                                {
                                                   §§pop().finishRendering(this.§>!Z§);
                                                   §§push(this.§ !e§);
                                                   continue loop21;
                                                   if(_loc3_ && _loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§pop().§3!A§();
                                                         if(!_loc4_)
                                                         {
                                                            continue loop21;
                                                         }
                                                         addr150:
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               return;
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  §§goto(addr230);
                                                               }
                                                               break;
                                                               §§goto(addr150);
                                                            }
                                                            addr223:
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr306);
                                                   }
                                                   §§goto(addr270);
                                                }
                                                while(_loc4_)
                                                {
                                                   §§pop().§ ;§();
                                                   §§goto(addr223);
                                                }
                                                §§goto(addr279);
                                             }
                                          }
                                       }
                                       continue loop6;
                                       addr214:
                                    }
                                    while(_loc4_ || _loc2_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr313);
                                    addr252:
                                 }
                                 §§goto(addr214);
                              }
                              §§goto(addr170);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr220);
               }
            }
         }
         §§goto(addr43);
      }
      
      public function set §;!,§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§ ?§ = param1;
         }
      }
      
      private function §2J§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!_loc4_)
         {
            this.§@!%§.x = this.§5P§.x;
            if(!(_loc4_ && _loc3_))
            {
               addr35:
               this.§@!%§.y = this.§5P§.y;
            }
            var _loc1_:int = this.§@!%§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§@!%§.parent;
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
                                 while(true)
                                 {
                                    §§pop();
                                    addr225:
                                    while(true)
                                    {
                                       §§push(_loc2_ == null);
                                       addr208:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                                 addr224:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§push(0);
                                    if(_loc4_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       loop7:
                                       while(!_loc4_)
                                       {
                                          if(§§pop())
                                          {
                                             addr200:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(Boolean(_loc2_));
                                                   }
                                                   addr203:
                                                }
                                                else
                                                {
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr225);
                                             }
                                             addr200:
                                          }
                                          loop8:
                                          while(true)
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   while(_loc5_ || this)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         this.§6@§.removeChild(this.§@!%§);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            addr114:
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(this.§ !e§);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           if(_loc4_ && _loc2_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           §§push(§§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr158:
                                                                                 loop17:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§ !e§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop().canvas));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(!(_loc4_ && _loc2_))
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§ !e§);
                                                                                                   if(_loc5_ || _loc1_)
                                                                                                   {
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   addr228:
                                                                                                   _loc3_ = §§pop().canvas;
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      if(this.§%!6§.bitmapData != _loc3_)
                                                                                                      {
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            this.§%!6§.bitmapData = _loc3_;
                                                                                                         }
                                                                                                         addr299:
                                                                                                      }
                                                                                                      addr259:
                                                                                                      if(this.§6@§.getChildIndex(this.§@!%§) > 0)
                                                                                                      {
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr277:
                                                                                                   this.§6@§.removeChild(this.§@!%§);
                                                                                                   this.§6@§.addChildAt(this.§@!%§,0);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr259);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr299);
                                                                                                      }
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                   addr282:
                                                                                                   §§goto(addr282);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   addr217:
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(false)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§goto(addr228);
                                                                                                }
                                                                                                continue loop17;
                                                                                                §§push(this.§ !e§);
                                                                                                break loop17;
                                                                                             }
                                                                                             §§goto(addr225);
                                                                                          }
                                                                                          return;
                                                                                          addr65:
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().setCanvasSize(this.§2!F§,this.§%!_§,this.§5P§.width / this.§24§.stageWidth,this.§5P§.height / this.§24§.stageHeight);
                                                                                    §§goto(addr106);
                                                                                    §§goto(addr158);
                                                                                 }
                                                                              }
                                                                              addr157:
                                                                           }
                                                                           §§goto(addr65);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr157);
                                                               }
                                                               §§goto(addr228);
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§6@§.addChild(this.§@!%§);
                                                         }
                                                         addr212:
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr114);
                                             }
                                          }
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr212);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr225);
         }
         §§goto(addr35);
      }
      
      private function §<<§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(true)
               {
                  _loc2_.wordWrap = true;
                  while(!(_loc5_ && this))
                  {
                     _loc2_.autoSize = TextFieldAutoSize.CENTER;
                     while(true)
                     {
                        _loc2_.text = param1;
                        while(_loc4_)
                        {
                           _loc2_.x = (this.§24§.stageWidth - _loc2_.width) / 2;
                           loop6:
                           while(true)
                           {
                              _loc2_.y = (this.§24§.stageHeight - _loc2_.height) / 2;
                              while(true)
                              {
                                 _loc2_.background = true;
                                 addr88:
                                 while(_loc4_)
                                 {
                                    _loc2_.backgroundColor = 4456448;
                                    continue loop6;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ || this))
               {
                  continue;
               }
               §§goto(addr83);
            }
         }
         §§goto(addr158);
      }
      
      public function §2X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §2S§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§3B§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(_loc2_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§3B§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(!_loc1_);
            
         }
      }
      
      public function §&!y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!V§ = param1;
         }
      }
      
      private function § !g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,`§ = true;
            while(this.§%!6§ == null)
            {
               if(_loc1_ && _loc1_)
               {
                  do
                  {
                     this.§@J§.addChild(this.§%!6§);
                  }
                  while(!(_loc2_ || _loc2_));
                  
                  break;
               }
               addr81:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§%!6§ = new Bitmap();
               §§goto(addr81);
            }
            return;
         }
         §§goto(addr81);
      }
      
      private function §9!q§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !g§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
         }
         while(!_loc3_);
         
      }
      
      private function §,!f§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§17§);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc3_)
                  {
                     return;
                  }
                  loop5:
                  while(true)
                  {
                     §§push(Boolean(this.§>!Z§));
                     loop6:
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 this.§2X§();
                                 while(true)
                                 {
                                    this.§+"§();
                                    loop10:
                                    while(true)
                                    {
                                       this.§@O§();
                                       loop11:
                                       for(; _loc5_; if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       },while(true)
                                       {
                                          §§goto(addr192);
                                       })
                                       {
                                          §§push(Boolean(this.§>!Z§));
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc4_ && param1))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop26:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr312:
                                                         while(true)
                                                         {
                                                            §§push(this.§%!b§);
                                                            if(_loc5_ || param1)
                                                            {
                                                               continue loop26;
                                                            }
                                                            addr274:
                                                            if(_loc4_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            if(_loc5_ || param1)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(!§§pop());
                                                               addr358:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  addr359:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        break loop11;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop26;
                                                         }
                                                         continue loop7;
                                                      }
                                                      addr311:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!this.§>!Z§)
                                                            {
                                                               this.§ !e§ = new §^O§();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ !e§);
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§pop().setCanvasSize(this.§2!F§,this.§%!_§,this.§5P§.width / this.§24§.stageWidth,this.§5P§.height / this.§24§.stageHeight);
                                                                     addr157:
                                                                     loop20:
                                                                     while(_loc5_ || _loc3_)
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr290:
                                                                        while(true)
                                                                        {
                                                                           this.mStage3DEnabled = false;
                                                                           break loop20;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§>!Z§ = null;
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           this.§ !g§();
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr312);
                                                                              addr228:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ || _loc2_))
                                                                                 {
                                                                                    continue loop16;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§[3§.§`!1§ = this.§,!W§;
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr370:
                                                                                       addr117:
                                                                                       addr370:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop18;
                                                                                          }
                                                                                          §§goto(addr157);
                                                                                          continue loop25;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          addr371:
                                                                                          while(true)
                                                                                          {
                                                                                             addr354:
                                                                                             while(true)
                                                                                             {
                                                                                                break loop16;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr357);
                                                                           addr196:
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc4_ && this)
                                                                              {
                                                                                 this.stop();
                                                                                 return;
                                                                                 addr353:
                                                                                 addr343:
                                                                              }
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 this.§ !e§ = new §<!I§();
                                                                                 §§goto(addr228);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         addr192:
                                                      }
                                                      §§goto(addr290);
                                                      §§goto(addr281);
                                                   }
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr360);
                                          }
                                          §§goto(addr311);
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                           }
                           §§goto(addr350);
                        }
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§>9§)).§>9§);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.§>9§ = _loc3_;
                  }
                  if(_loc5_)
                  {
                     this.§66§ = §>9§;
                     §§goto(addr375);
                  }
               }
               §§goto(addr248);
            }
            §§goto(addr281);
         }
         §§goto(addr134);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§2X§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() - this.§;!j§);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§3B§);
            if(_loc4_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr126:
                     while(true)
                     {
                        §§push(_loc3_ > 1);
                        if(_loc5_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        while(true)
                        {
                           this.render();
                        }
                        addr115:
                     }
                     while(true)
                     {
                     }
                     addr117:
                  }
                  for(; this.§@!%§; §§goto(addr117))
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           continue;
                        }
                        this.§2J§();
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                     §§goto(addr126);
                  }
                  return;
               }
            }
         }
         §§goto(addr115);
      }
      
      private function §7p§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2X§();
         }
         do
         {
            this.§24§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc2_);
         
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() / this.§9c§);
            if(!(_loc6_ && param1))
            {
               addr30:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() / this.§?b§);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!_loc6_)
            {
               if(param3)
               {
                  §§push(this.§24§);
                  while(true)
                  {
                     if(!(_loc6_ && param2))
                     {
                        §§push(this.§9c§);
                        loop1:
                        while(true)
                        {
                           §§pop().stageWidth = §§pop();
                           loop2:
                           while(true)
                           {
                              if(_loc7_)
                              {
                                 §§push(this.§24§);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§?b§);
                                    if(!(_loc6_ && this))
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                addr151:
                                                if(_loc7_ || param1)
                                                {
                                                   addr159:
                                                   §§push(_loc4_);
                                                   if(!_loc6_)
                                                   {
                                                      addr162:
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         §§pop().stageHeight = §§pop();
                                                         addr167:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            addr99:
                                                            addr72:
                                                            while(true)
                                                            {
                                                               this.§2!F§ = param1;
                                                               while(_loc7_ || param2)
                                                               {
                                                                  this.§%!_§ = param2;
                                                                  while(_loc7_ || param3)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  §§push(this.§24§);
                                                                  addr189:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        addr191:
                                                                        §§push(this.§?b§);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§9c§);
                                                                           addr218:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    addr228:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 addr227:
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                        }
                                                                        addr216:
                                                                     }
                                                                  }
                                                               }
                                                               continue loop17;
                                                            }
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               addr79:
                                                               if(_loc7_ || param2)
                                                               {
                                                                  return;
                                                                  addr211:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr99);
                                                                  §§goto(addr79);
                                                               }
                                                            }
                                                            continue loop2;
                                                         }
                                                         addr167:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ && param2))
                                                         {
                                                            §§pop().stageHeight = §§pop();
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr229);
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                   §§goto(addr228);
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr151);
                                 }
                                 continue loop1;
                              }
                              addr214:
                              while(true)
                              {
                              }
                              §§goto(addr216);
                           }
                        }
                     }
                     §§goto(addr189);
                     if(!(_loc7_ || param1))
                     {
                        continue;
                     }
                     §§pop().dispatchEvent(new §4!L§(flash.events.Event.RESIZE,param1,param2));
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr72);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr91);
                  }
               }
               §§goto(addr214);
            }
            §§goto(addr167);
         }
         §§goto(addr30);
      }
      
      public function §;!^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.setCanvasSize(this.§9c§,this.§?b§);
         }
      }
      
      private function §<Z§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc10_)
         {
            §§push(this.§3B§);
            if(!(_loc9_ && this))
            {
               §§push(!§§pop());
               if(!(_loc9_ && param1))
               {
                  if(!§§pop())
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        §§pop();
                        if(!(_loc9_ && param1))
                        {
                           §§push(this.§8!V§);
                           if(!(_loc9_ && _loc3_))
                           {
                              addr77:
                              §§push(!§§pop());
                              if(!_loc9_)
                              {
                                 addr80:
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       §§goto(addr88);
                                    }
                                 }
                              }
                              addr94:
                              if(§§pop())
                              {
                                 §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                 if(!(_loc9_ && _loc2_))
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc10_)
                                    {
                                       addr169:
                                       _loc3_ = Number(_loc6_.stageY);
                                       while(true)
                                       {
                                          _loc4_ = 0;
                                       }
                                       addr170:
                                    }
                                    loop0:
                                    while(true)
                                    {
                                       while(param1.type != MouseEvent.MOUSE_DOWN)
                                       {
                                          if(param1.type == MouseEvent.MOUSE_UP)
                                          {
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                if(!(_loc9_ && _loc3_))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      this.§?q§ = false;
                                                      addr141:
                                                      if(!_loc10_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc10_ || param1))
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr200:
                                                      var _loc8_:* = param1.type;
                                                      addr171:
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               addr385:
                                                               §§push(0);
                                                               if(_loc9_)
                                                               {
                                                                  addr428:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr440:
                                                               §§push(4);
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  addr448:
                                                               }
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(1);
                                                               if(_loc9_ && _loc2_)
                                                               {
                                                                  §§goto(addr448);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr440);
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_END === _loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§push(2);
                                                               if(_loc9_ && _loc2_)
                                                               {
                                                                  §§goto(addr448);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr440);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  §§push(3);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§goto(addr428);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr448);
                                                                  }
                                                                  continue loop30;
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_UP === _loc8_)
                                                            {
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§goto(addr440);
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                            {
                                                               §§goto(addr461);
                                                               §§push(6);
                                                            }
                                                            §§goto(addr461);
                                                            if(!_loc10_)
                                                            {
                                                            }
                                                         }
                                                         §§goto(addr461);
                                                      }
                                                      §§goto(addr385);
                                                      addr171:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr170);
                                                   }
                                                }
                                                §§goto(addr171);
                                                addr161:
                                             }
                                             §§goto(addr141);
                                          }
                                          §§goto(addr171);
                                       }
                                       this.§?q§ = true;
                                       §§goto(addr161);
                                    }
                                 }
                                 §§goto(addr169);
                              }
                              else
                              {
                                 §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                 if(_loc10_)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(Number(_loc7_.stageY));
                                    }
                                    §§goto(addr200);
                                 }
                                 _loc3_ = §§pop();
                                 if(_loc10_)
                                 {
                                    _loc4_ = _loc7_.touchPointID;
                                 }
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr80);
                        }
                        §§goto(addr94);
                        §§push(param1 is MouseEvent);
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr80);
            }
            §§goto(addr77);
         }
         addr88:
      }
      
      private function get §[!2§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §2+§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_ || param2)
         {
            if(param1 in this.§&U§)
            {
               if(!(_loc6_ && param1))
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr73:
               (_loc4_ = this.§>!Z§.createProgram()).upload(param2,param3);
               if(_loc5_ || param1)
               {
                  this.§&U§[param1] = _loc4_;
               }
            }
            else
            {
               addr69:
               if(this.§>!Z§ != null)
               {
                  §§goto(addr73);
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      public function §&!c§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§,g§(param1);
         if(_loc3_ || this)
         {
            if(_loc2_)
            {
               do
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§&U§[param1];
                  }
                  while(_loc4_);
                  
               }
               while(!(_loc3_ || param1));
               
               addr71:
            }
            return;
         }
         §§goto(addr71);
      }
      
      public function §,g§(param1:String) : Program3D
      {
         return this.§&U§[param1] as Program3D;
      }
      
      public function §'!§(param1:String) : Boolean
      {
         return param1 in this.§&U§;
      }
      
      public function get §&h§() : Boolean
      {
         return this.§3B§;
      }
      
      public function get §+!Z§() : § !w§
      {
         return this.§<!,§;
      }
      
      public function get §`!1§() : Boolean
      {
         return this.§,!W§;
      }
      
      public function set §`!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!W§ = param1;
            while(this.§>!Z§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§[3§.§`!1§ = param1;
               }
               if(!(_loc2_ && param1))
               {
                  addr56:
                  break;
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§function§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§function§ = param1;
         }
         while(this.§>!Z§)
         {
            if(_loc2_ || this)
            {
               if(_loc3_)
               {
                  continue;
               }
               this.§>!Z§.enableErrorChecking = param1;
            }
            break;
         }
      }
      
      public function get §5n§() : int
      {
         return this.§5B§;
      }
      
      public function set §5n§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§5B§ = param1;
         }
         do
         {
            this.§3!-§();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function get §#S§() : Rectangle
      {
         return this.§5P§.clone();
      }
      
      public function set §#S§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5P§ = param1.clone();
            do
            {
               this.§3!-§();
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function get §@J§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!(_loc2_ && this))
         {
            if(this.§@!%§ == null)
            {
               if(_loc3_)
               {
                  addr43:
                  this.§@!%§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!_loc2_)
               {
                  _loc1_.hideBuiltInItems();
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        this.§@!%§.contextMenu = _loc1_;
                        do
                        {
                           this.§2J§();
                        }
                        while(_loc2_ && _loc1_);
                        
                        if(!(_loc2_ && _loc3_))
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr92:
                           return this.§@!%§;
                           addr81:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr81);
            }
            §§goto(addr92);
         }
         §§goto(addr43);
      }
      
      public function get stage() : §9E§.Stage
      {
         return this.§24§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §=S§() : flash.display.Stage
      {
         return this.§6@§;
      }
      
      public function get §@`§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§,`§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
