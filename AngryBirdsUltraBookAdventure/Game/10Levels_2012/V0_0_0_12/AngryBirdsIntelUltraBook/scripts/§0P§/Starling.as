package §0P§
{
   import §2!9§.Juggler;
   import §6!7§.DisplayObject;
   import §6!7§.Stage;
   import §7i§.Texture;
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
   import starling.events.§!!j§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.TouchProcessor;
   import starling.events.§`R§;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §1!;§:Starling;
      
      private static var §%n§:Boolean;
      
      private static var §[r§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && Starling))
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §'!'§:§6!7§.Stage;
      
      private var §23§:Class;
      
      private var §6J§:§6!7§.DisplayObject;
      
      private var §7!-§:Juggler;
      
      private var §^!%§:Boolean;
      
      private var §6'§:Boolean;
      
      private var §@!6§:RenderSupport;
      
      private var §=L§:TouchProcessor;
      
      private var §'!§:int;
      
      private var §+`§:Boolean;
      
      private var §#'§:Boolean;
      
      private var §8H§:Number;
      
      private var §>!0§:Rectangle;
      
      private var §<T§:Boolean;
      
      private var §"5§:flash.display.Stage;
      
      private var §@p§:Sprite;
      
      private var §"W§:Context3D;
      
      private var §!h§:Dictionary;
      
      private var §[!<§:int;
      
      private var §"[§:Boolean;
      
      private var § each§:Number;
      
      private var §4F§:Number;
      
      private var §@M§:Number;
      
      private var §>k§:Number;
      
      private var §[!T§:Number;
      
      private var §=!-§:Number;
      
      private var § Q§:Function;
      
      private var §1!T§:uint;
      
      private var §]1§:String;
      
      private var §+z§:Bitmap;
      
      private var §6@§:Boolean = false;
      
      private var §-d§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §@!;§:Boolean = false;
      
      public function Starling(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(_loc9_ || param3)
         {
            super();
            if(!_loc10_)
            {
               if(param2 == null)
               {
                  if(!(_loc10_ && param3))
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  loop26:
                  while(true)
                  {
                     this.§7!-§ = new Juggler();
                     loop6:
                     while(true)
                     {
                        if(!(_loc10_ && param3))
                        {
                           if(_loc9_ || this)
                           {
                              if(!_loc10_)
                              {
                                 addr237:
                                 while(true)
                                 {
                                    this.§'!§ = 0;
                                    addr205:
                                    loop9:
                                    while(true)
                                    {
                                       this.§+`§ = false;
                                       loop10:
                                       while(_loc9_ || param1)
                                       {
                                          if(!_loc10_)
                                          {
                                             this.§#'§ = false;
                                             loop11:
                                             while(_loc9_ || param2)
                                             {
                                                if(_loc9_)
                                                {
                                                   addr186:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      this.§8H§ = getTimer() / 1000;
                                                      addr161:
                                                      addr172:
                                                      while(true)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue loop10;
                                                         }
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §>!f§ = true;
                                                            addr298:
                                                            while(true)
                                                            {
                                                               this.§5t§();
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§!h§ = new Dictionary();
                                                         if(_loc9_)
                                                         {
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc10_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(_loc9_ || param3)
                                                            {
                                                               if(_loc9_ || param2)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               addr278:
                                                               addr278:
                                                               while(true)
                                                               {
                                                                  this.§'!'§ = new §6!7§.Stage(param3.width,param3.height,param2.color);
                                                                  break loop11;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§=L§ = new TouchProcessor(this.§'!'§);
                                                               addr245:
                                                               loop3:
                                                               while(_loc9_)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  addr327:
                                                                  while(true)
                                                                  {
                                                                     this.§@M§ = this.§ each§;
                                                                     addr322:
                                                                     while(true)
                                                                     {
                                                                        this.§>k§ = this.§4F§;
                                                                        addr316:
                                                                        while(true)
                                                                        {
                                                                           this.§[!T§ = param2.stageWidth;
                                                                           break loop3;
                                                                        }
                                                                        break loop11;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§=!-§ = param2.stageHeight;
                                                               }
                                                               addr273:
                                                               this.§"5§ = param2;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr161);
                                                         }
                                                         §§goto(addr304);
                                                      }
                                                      for each(_loc6_ in this.§,a§)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            param2.addEventListener(_loc6_,this.§%&§,false,0,true);
                                                         }
                                                      }
                                                      if(_loc9_ || param1)
                                                      {
                                                         param2.addEventListener(KeyboardEvent.KEY_DOWN,this.§,!^§,false,0,true);
                                                         loop18:
                                                         while(true)
                                                         {
                                                            param2.addEventListener(KeyboardEvent.KEY_UP,this.§,!^§,false,0,true);
                                                            while(true)
                                                            {
                                                               this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§,false,1,true);
                                                               while(!_loc10_)
                                                               {
                                                                  this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§0!i§,false,1,true);
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     return;
                                                                  }
                                                               }
                                                               continue loop18;
                                                               addr401:
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  this.§]1§ = param5;
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     addr379:
                                                                     if(_loc9_ || param1)
                                                                     {
                                                                        §§goto(addr386);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§1!T§ = param2.color;
                                                                        §§goto(addr379);
                                                                     }
                                                                     addr414:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        §§goto(addr401);
                                                                     }
                                                                     else
                                                                     {
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              this.§`&§(true);
                                                                              §§goto(addr414);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.mStage3D.visible = false;
                                                                                 continue loop22;
                                                                              }
                                                                              addr441:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                                  addr408:
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr441);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§23§ = param1;
                                                   addr288:
                                                   while(true)
                                                   {
                                                      this.§>!0§ = param3;
                                                      break loop10;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   §§goto(addr273);
                                                }
                                                §§goto(addr322);
                                             }
                                          }
                                          §§goto(addr316);
                                       }
                                       addr283:
                                       while(true)
                                       {
                                          this.mStage3D = param4;
                                          §§goto(addr278);
                                       }
                                    }
                                 }
                                 addr237:
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr288);
                        }
                        §§goto(addr245);
                     }
                  }
               }
               else if(param1 == null)
               {
                  if(!(_loc10_ && param2))
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc9_ || this)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr99:
                        if(param4 == null)
                        {
                           if(_loc9_ || param1)
                           {
                              param4 = param2.stage3Ds[0];
                              addr115:
                              this.§ each§ = param3.width;
                              if(_loc9_)
                              {
                                 this.§4F§ = param3.height;
                                 §§goto(addr327);
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr205);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr99);
               }
               §§goto(addr237);
            }
            §§goto(addr283);
         }
         §§goto(addr278);
      }
      
      public static function get isSoftware() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§!!F§);
            if(!_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc1_)
                     {
                        addr41:
                        §§push(§!!F§.§"[§);
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr45:
                        §§push(true);
                     }
                  }
                  §§goto(addr45);
               }
               return §§pop();
            }
            §§goto(addr41);
         }
         §§goto(addr45);
      }
      
      public static function §84§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§1!;§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               addr185:
               while(true)
               {
                  §§push(§§pop());
                  addr186:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr187:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr55:
                           return §§pop();
                        }
                        while(true)
                        {
                           §§pop();
                           addr189:
                           while(true)
                           {
                              §§push(§1!;§);
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr181);
      }
      
      public static function get §!!F§() : Starling
      {
         return §1!;§;
      }
      
      public static function get §1!e§() : Juggler
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§1!;§);
            if(!(_loc2_ && _loc2_))
            {
               return Boolean(§§pop()) ? §1!;§.§1!e§ : null;
            }
         }
         §§goto(addr41);
      }
      
      public static function get §;z§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §>!f§() : Boolean
      {
         return §%n§;
      }
      
      public static function set §>!f§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && Starling))
         {
            if(§1!;§ != null)
            {
               if(_loc2_)
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
               addr60:
               while(true)
               {
               }
               addr60:
            }
            while(true)
            {
               §%n§ = param1;
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public static function §0!2§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(§!!F§)
            {
               if(_loc5_)
               {
                  §§goto(addr35);
               }
            }
            return null;
         }
         addr35:
         return Texture.§8v§(§!!F§.§"W§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_ || param1)
         {
            §§push(§1!;§);
            if(!_loc4_)
            {
               §§push(Boolean(§§pop().§"W§));
               if(!(_loc4_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§push(§1!;§);
                        if(_loc3_ || param1)
                        {
                           §§pop().§"W§.drawToBitmapData(param1);
                           if(_loc4_)
                           {
                              addr96:
                              _loc2_ = §1!;§.§@!6§.canvas;
                              addr95:
                              if(!(_loc4_ && _loc2_))
                              {
                                 param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                              }
                           }
                           else
                           {
                              addr67:
                           }
                           §§goto(addr119);
                        }
                     }
                     §§goto(addr95);
                  }
                  else
                  {
                     §§push(§1!;§);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop().§@!6§);
                        if(!_loc4_)
                        {
                           §§goto(addr92);
                        }
                     }
                     §§goto(addr96);
                  }
               }
               addr92:
               if(§§pop().canvas)
               {
                  §§goto(addr95);
               }
               addr119:
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr67);
      }
      
      public function get §"!8§() : §6!7§.DisplayObject
      {
         return this.§6J§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1!T§ = param1;
         }
      }
      
      public function get §#8§() : Number
      {
         return this.§ each§;
      }
      
      public function get §#!d§() : Number
      {
         return this.§4F§;
      }
      
      public function §%C§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§]1§);
         }
         catch(e:Error)
         {
            §[R§("Context3D error: " + e.message);
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
            this.§@!;§ = true;
            while(true)
            {
               this.§"5§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,!^§,false);
               loop1:
               while(true)
               {
                  this.§"5§.removeEventListener(KeyboardEvent.KEY_UP,this.§,!^§,false);
                  loop2:
                  while(true)
                  {
                     addr45:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§,false);
                        addr56:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §!1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"W§ = this.mStage3D.context3D;
            while(true)
            {
               this.§!h§ = new Dictionary();
               while(true)
               {
                  if(!this.§"W§)
                  {
                     this.§"[§ = true;
                     continue;
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr23);
            }
         }
         §§goto(addr106);
      }
      
      private function §2!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§'!'§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§6J§);
                     loop2:
                     while(true)
                     {
                        §§push(null);
                        loop3:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              addr104:
                              while(true)
                              {
                                 this.§6J§ = new this.§23§();
                                 addr108:
                                 while(true)
                                 {
                                    if(_loc1_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(!_loc2_)
                                    {
                                       §§goto(addr123);
                                    }
                                 }
                              }
                              addr104:
                           }
                           while(true)
                           {
                              §§push(this.§6J§);
                              if(!(_loc2_ || _loc2_))
                              {
                                 break;
                              }
                              §§push(null);
                              if(!_loc2_)
                              {
                                 continue loop3;
                              }
                              if(§§pop() != §§pop())
                              {
                                 continue loop0;
                              }
                              if(!_loc1_)
                              {
                                 throw new Error("Invalid root class: " + this.§23§);
                              }
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr104);
                                 }
                                 break;
                                 addr39:
                                 §§pop().addChild(this.§6J§);
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    return;
                                 }
                              }
                              §§goto(addr108);
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               addr123:
               return;
            }
         }
         §§goto(addr104);
      }
      
      private function §^k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-d§ = true;
            while(true)
            {
               this.mStage3D.x = this.§>!0§.x;
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            this.mStage3D.y = this.§>!0§.y;
            if(!_loc1_)
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(§84§());
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        break;
                     }
                     while(true)
                     {
                     }
                     addr83:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.§-d§);
                     if(_loc3_)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    addr52:
                                    if(this.§"W§)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!_loc4_)
                                          {
                                             while(true)
                                             {
                                                this.§"W§.configureBackBuffer(this.§>!0§.width,this.§>!0§.height,this.§'!§,false);
                                                addr70:
                                                loop4:
                                                while(true)
                                                {
                                                   addr19:
                                                   while(true)
                                                   {
                                                      this.§-d§ = false;
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                if(true)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                             addr57:
                                          }
                                          else
                                          {
                                             §§goto(addr83);
                                          }
                                       }
                                       §§goto(addr70);
                                    }
                                    §§goto(addr19);
                                 }
                                 §§goto(addr70);
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     §§goto(addr52);
                  }
                  §§push(getTimer() / 1000);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
                  var _loc1_:* = §§pop();
                  §§push(_loc1_);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() - this.§8H§);
                     if(!(_loc4_ && _loc1_))
                     {
                        addr110:
                        §§push(Number(§§pop()));
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§8H§ = _loc1_;
                        addr320:
                        this.§'!'§.advanceTime(_loc2_);
                        addr327:
                     }
                     this.§7!-§.advanceTime(_loc2_);
                     addr314:
                     if(_loc3_)
                     {
                        this.§=L§.advanceTime(_loc2_);
                        this.§@!6§.§-!]§(this.§'!'§.stageWidth,this.§'!'§.stageHeight);
                        addr271:
                        this.§@!6§.clear(this.§"W§,this.§1!T§,1);
                        addr300:
                        addr278:
                        addr307:
                        addr282:
                        §§push(this.§@!6§);
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              §§pop().§8!S§(this.§"W§,this.§[!<§);
                              addr267:
                              §§push(this.§'!'§);
                              if(_loc3_)
                              {
                                 §§pop().render(this.§@!6§,1);
                                 addr253:
                                 §§push(this.§@!6§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§pop().§2^§();
                                    addr235:
                                    if(_loc3_ || this)
                                    {
                                       if(this.§ Q§ != null)
                                       {
                                          if(!_loc4_)
                                          {
                                             this.§ Q§();
                                          }
                                          this.§ Q§ = null;
                                          addr188:
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && this))
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      addr170:
                                                      §§push(this.§@!6§);
                                                      if(_loc3_)
                                                      {
                                                         §§pop().finishRendering(this.§"W§);
                                                         addr176:
                                                         if(_loc3_ || _loc1_)
                                                         {
                                                            §§push(this.§@!6§);
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§pop().§'!#§();
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§goto(addr314);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr253);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr176);
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                §§goto(addr278);
                                             }
                                             §§goto(addr267);
                                          }
                                          addr222:
                                          §§goto(addr222);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr307);
                                 }
                                 §§goto(addr300);
                              }
                              §§goto(addr320);
                           }
                           §§goto(addr282);
                        }
                        §§goto(addr271);
                     }
                     addr323:
                     §§goto(addr323);
                  }
                  §§goto(addr110);
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function set §+!f§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§ Q§ = param1;
         }
      }
      
      private function §`E§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(_loc4_)
         {
            this.§@p§.x = this.§>!0§.x;
            if(!(_loc5_ && _loc3_))
            {
               this.§@p§.y = this.§>!0§.y;
            }
         }
         var _loc1_:int = this.§@p§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§@p§.parent;
         if(_loc4_)
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
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop6:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       addr270:
                                       while(true)
                                       {
                                          §§push(_loc2_ == null);
                                          addr242:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr243:
                                             while(!(_loc5_ && _loc2_))
                                             {
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    addr269:
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
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       loop12:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop14:
                                             while(!_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr237:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(_loc2_));
                                                         }
                                                         addr67:
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               this.§"5§.removeChild(this.§@p§);
                                                            }
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     addr142:
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@!6§);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc4_)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           addr181:
                                                                           loop27:
                                                                           while(!_loc5_)
                                                                           {
                                                                              if(!(_loc4_ || this))
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr190:
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§@!6§);
                                                                                 if(_loc5_ && this)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop().canvas));
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 §§goto(addr67);
                                                                                 §§goto(addr190);
                                                                              }
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().setCanvasSize(this.§@M§,this.§>k§,this.§>!0§.width / this.§'!'§.stageWidth,this.§>!0§.height / this.§'!'§.stageHeight);
                                                                                 addr129:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ && _loc3_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop22;
                                                                                       }
                                                                                       §§push(this.§@!6§);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc4_)
                                                                                       {
                                                                                          addr254:
                                                                                          this.§"5§.addChild(this.§@p§);
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop22;
                                                                                             §§goto(addr254);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr270);
                                                                                       addr252:
                                                                                    }
                                                                                    continue loop24;
                                                                                 }
                                                                                 §§goto(addr243);
                                                                              }
                                                                              addr191:
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr273:
                                                                        _loc3_ = §§pop().canvas;
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           if(this.§+z§.bitmapData != _loc3_)
                                                                           {
                                                                              addr352:
                                                                              this.§+z§.bitmapData = _loc3_;
                                                                              addr356:
                                                                           }
                                                                           addr301:
                                                                           if(this.§"5§.getChildIndex(this.§@p§) > 0)
                                                                           {
                                                                              if(!(_loc5_ && _loc1_))
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    this.§"5§.removeChild(this.§@p§);
                                                                                    addr339:
                                                                                    if(_loc4_ || _loc3_)
                                                                                    {
                                                                                       this.§"5§.addChildAt(this.§@p§,0);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                       addr346:
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 §§goto(addr352);
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                        §§goto(addr346);
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  addr212:
                                                               }
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc4_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                   }
                                                   if(_loc5_ && _loc1_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc5_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr181);
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc4_ || _loc1_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(this.§@!6§);
                                                               if(_loc4_)
                                                               {
                                                                  §§goto(addr109);
                                                               }
                                                               §§goto(addr273);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr129);
                                                      }
                                                      addr357:
                                                      return;
                                                   }
                                                   §§goto(addr237);
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    §§goto(addr252);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      private function §[R§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc5_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               while(true)
               {
                  _loc2_.wordWrap = true;
                  addr161:
                  while(true)
                  {
                     _loc2_.width = this.§'!'§.stageWidth * 0.75;
                     continue loop0;
                  }
                  loop6:
                  for(; !(_loc4_ && _loc3_); while(_loc5_ || _loc2_)
                  {
                     _loc2_.backgroundColor = 4456448;
                     do
                     {
                        this.§[!F§.addChild(_loc2_);
                     }
                     while(_loc4_);
                     
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr45);
                  })
                  {
                     _loc2_.y = (this.§'!'§.stageHeight - _loc2_.height) / 2;
                     while(true)
                     {
                        if(_loc5_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              _loc2_.background = true;
                              continue loop6;
                           }
                           §§goto(addr161);
                        }
                        addr121:
                        while(!_loc4_)
                        {
                           _loc2_.x = (this.§'!'§.stageWidth - _loc2_.width) / 2;
                           continue loop6;
                        }
                        addr45:
                        continue loop0;
                        if(_loc5_ || this)
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        _loc2_.text = param1;
                        §§goto(addr121);
                     }
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      public function §5t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §1!;§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§^!%§ = true;
         }
         do
         {
            this.mStage3D.visible = this.mStage3DEnabled;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§^!%§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §`&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§6'§ = param1;
         }
      }
      
      private function §,%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§6@§ = true;
            while(this.§+z§ == null)
            {
               if(_loc1_ || _loc1_)
               {
                  this.§+z§ = new Bitmap();
               }
               do
               {
                  this.§[!F§.addChild(this.§+z§);
               }
               while(_loc2_);
               
               if(_loc1_)
               {
                  addr59:
                  break;
               }
            }
            return;
         }
         §§goto(addr59);
      }
      
      private function §0!i§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,%§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(Event.CONTEXT3D_CREATE));
         }
         while(!_loc3_);
         
      }
      
      private function §[D§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            §§push(this.§@!;§);
            if(!(_loc4_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc4_)
                  {
                     return;
                  }
                  loop12:
                  while(true)
                  {
                     §§push(Boolean(this.§"W§));
                     loop13:
                     for(; !(_loc4_ && param1); while(_loc5_ || _loc3_)
                     {
                        if(_loc5_ || param1)
                        {
                           §§goto(addr269);
                        }
                        §§goto(addr405);
                        §§goto(addr204);
                     })
                     {
                        §§push(§§pop());
                        if(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              addr296:
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop18:
                                       while(true)
                                       {
                                          this.mStage3DEnabled = false;
                                          loop19:
                                          while(_loc5_)
                                          {
                                             if(!_loc4_)
                                             {
                                                this.§"W§ = null;
                                                loop20:
                                                while(_loc5_ || _loc3_)
                                                {
                                                   this.§,%§();
                                                   loop21:
                                                   while(_loc5_)
                                                   {
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§"W§));
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr216:
                                                            while(true)
                                                            {
                                                               this.§@!6§ = new RenderSupport();
                                                               addr220:
                                                               loop29:
                                                               while(true)
                                                               {
                                                                  addr101:
                                                                  while(true)
                                                                  {
                                                                     this.§=L§.§]?§ = this.§+`§;
                                                                     addr107:
                                                                     while(_loc5_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     continue loop29;
                                                                  }
                                                                  while(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§goto(addr101);
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              return;
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        §§goto(addr216);
                                                                     }
                                                                     §§goto(addr160);
                                                                  }
                                                                  continue loop20;
                                                               }
                                                            }
                                                            addr216:
                                                         }
                                                         else
                                                         {
                                                            this.§@!6§ = new BitmapDataRenderSupport();
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!(_loc5_ || _loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  §§push(this.§@!6§);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §§pop().setCanvasSize(this.§@M§,this.§>k§,this.§>!0§.width / this.§'!'§.stageWidth,this.§>!0§.height / this.§'!'§.stageHeight);
                                                                     addr160:
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop24;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(this.§"W§));
                                                                           }
                                                                           addr406:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§"[§);
                                                                              if(_loc4_ && _loc3_)
                                                                              {
                                                                                 break loop22;
                                                                              }
                                                                              if(_loc4_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 break loop22;
                                                                              }
                                                                              addr413:
                                                                              while(!(_loc4_ && param1))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr404:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          addr405:
                                                                                       }
                                                                                       addr361:
                                                                                       while(true)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                    }
                                                                                    addr404:
                                                                                 }
                                                                                 §§goto(addr404);
                                                                              }
                                                                              loop1:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§@!6§);
                                                                                       addr416:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().dispose();
                                                                                          addr418:
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr414:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Starling.§>!f§);
                                                                                    addr374:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr383:
                                                                              continue loop25;
                                                                           }
                                                                           while(!(_loc4_ && this))
                                                                           {
                                                                              §§pop();
                                                                              §§goto(addr305);
                                                                           }
                                                                           addr305:
                                                                           §§goto(addr374);
                                                                           addr297:
                                                                        }
                                                                        §§goto(addr361);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§2!D§();
                                                                  break loop21;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                         continue loop19;
                                                      }
                                                      continue loop13;
                                                   }
                                                   continue loop12;
                                                }
                                                loop33:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         addr367:
                                                         if(!_loc5_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§@!6§);
                                                               if(_loc5_)
                                                               {
                                                                  §§goto(addr413);
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               §§goto(addr416);
                                                            }
                                                            addr423:
                                                         }
                                                         this.stop();
                                                         break loop19;
                                                         addr369:
                                                      }
                                                      this.§!1§();
                                                      §§goto(addr322);
                                                   }
                                                   else
                                                   {
                                                      if(_loc4_ && _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop33;
                                                      }
                                                   }
                                                }
                                                §§goto(addr418);
                                             }
                                             §§goto(addr414);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr204);
                                 }
                                 addr269:
                              }
                              §§goto(addr297);
                           }
                           §§goto(addr404);
                        }
                        §§goto(addr296);
                     }
                     addr362:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr363:
                           this.§[R§("Fatal error: The application lost the device context!");
                           §§goto(addr367);
                        }
                        else
                        {
                           §§goto(addr323);
                        }
                     }
                     §§goto(addr369);
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§[r§)).§[r§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!_loc4_)
                  {
                     _loc2_.§[r§ = _loc3_;
                  }
                  if(!_loc4_)
                  {
                     this.§[!<§ = §[r§;
                     §§goto(addr423);
                  }
               }
               §§goto(addr216);
            }
            §§goto(addr362);
         }
         §§goto(addr351);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            this.§5t§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || _loc2_)
         {
            §§push(§§pop() - this.§8H§);
            if(_loc4_ || this)
            {
               addr57:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || _loc2_)
            {
               §§push(this.§^!%§);
               if(!_loc5_)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     if(!_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 this.render();
                                 addr146:
                                 while(true)
                                 {
                                 }
                              }
                              addr143:
                           }
                           while(true)
                           {
                              §§push(Boolean(this.§@p§));
                              if(_loc4_ || param1)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(!_loc5_)
                                       {
                                          if(_loc5_)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc3_ > 1);
                                                if(!_loc5_)
                                                {
                                                   addr132:
                                                   §§push(Boolean(§§pop()));
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr132:
                                                }
                                                §§goto(addr132);
                                             }
                                             continue loop1;
                                          }
                                          this.§`E§();
                                          addr107:
                                          if(_loc4_ || param1)
                                          {
                                             addr114:
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr143);
                                       }
                                       §§goto(addr146);
                                    }
                                    §§goto(addr107);
                                 }
                                 break;
                              }
                              §§goto(addr132);
                           }
                           return;
                        }
                        continue;
                        addr141:
                     }
                  }
               }
               §§goto(addr157);
            }
            §§goto(addr114);
         }
         §§goto(addr57);
      }
      
      private function §,!^§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§5t§();
         }
         do
         {
            this.§'!'§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc3_);
         
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§ each§);
            if(!_loc6_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_ || this)
            {
               §§push(§§pop() / this.§4F§);
               if(_loc7_)
               {
                  addr40:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc6_ && param3))
               {
                  §§push(param3);
                  if(!(_loc6_ && param3))
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     §§push(this.§'!'§);
                     loop0:
                     while(true)
                     {
                        §§push(this.§ each§);
                        loop1:
                        while(true)
                        {
                           §§pop().stageWidth = §§pop();
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(this.§'!'§);
                                    while(true)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(this.§4F§);
                                          if(!(_loc6_ && this))
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      if(!(_loc6_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc7_ || param2)
                                                         {
                                                            addr185:
                                                            §§push(_loc4_);
                                                            if(!_loc6_)
                                                            {
                                                               addr188:
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().stageHeight = §§pop();
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  addr111:
                                                                  addr98:
                                                                  while(true)
                                                                  {
                                                                     this.§@M§ = param1;
                                                                     continue loop5;
                                                                  }
                                                                  return;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        addr254:
                                                                        while(true)
                                                                        {
                                                                           §§pop().stageWidth = §§pop();
                                                                           §§goto(addr255);
                                                                        }
                                                                     }
                                                                     addr253:
                                                                  }
                                                                  §§goto(addr254);
                                                               }
                                                               addr249:
                                                            }
                                                            §§goto(addr213);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr254);
                                             }
                                             §§goto(addr215);
                                          }
                                          §§goto(addr188);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§ each§);
                                             if(_loc7_ || param2)
                                             {
                                                §§goto(addr249);
                                                §§push(_loc4_);
                                             }
                                          }
                                          addr239:
                                       }
                                       §§goto(addr254);
                                       §§push(this.§'!'§);
                                       if(!_loc6_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 addr237:
                                 while(true)
                                 {
                                 }
                                 §§goto(addr239);
                              }
                              §§goto(addr216);
                           }
                        }
                     }
                  }
                  §§goto(addr237);
               }
               §§goto(addr255);
            }
            §§goto(addr40);
         }
         §§goto(addr25);
      }
      
      public function § !#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.setCanvasSize(this.§ each§,this.§4F§);
         }
      }
      
      private function §%&§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc9_ || this)
         {
            §§push(this.§^!%§);
            if(!(_loc10_ && param1))
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc10_)
                  {
                     §§push(§§pop());
                     if(_loc9_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(!(_loc10_ && _loc2_))
                        {
                           addr65:
                           §§pop();
                           if(_loc9_ || _loc3_)
                           {
                              addr73:
                              §§push(this.§6'§);
                              if(!_loc10_)
                              {
                                 §§push(!§§pop());
                                 if(!_loc10_)
                                 {
                                    addr80:
                                    §§push(Boolean(§§pop()));
                                    if(!_loc10_)
                                    {
                                       addr83:
                                       if(§§pop())
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             return;
                                          }
                                       }
                                       §§push(param1 is MouseEvent);
                                    }
                                 }
                                 §§goto(addr83);
                              }
                              if(§§pop())
                              {
                                 addr99:
                                 _loc6_ = param1 as MouseEvent;
                                 if(!(_loc10_ && this))
                                 {
                                    §§push(Number(_loc6_.stageX));
                                    loop4:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Number(_loc6_.stageY));
                                          if(!_loc9_)
                                          {
                                             continue loop4;
                                          }
                                          _loc3_ = §§pop();
                                          loop6:
                                          do
                                          {
                                             §§push(0);
                                             if(!(_loc10_ && param1))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                loop8:
                                                while(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type == MouseEvent.MOUSE_UP)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(!(_loc9_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr162:
                                                         if(!_loc10_)
                                                         {
                                                            break loop5;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr143:
                                                      addr143:
                                                      while(true)
                                                      {
                                                         if(false)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                   }
                                                   var _loc8_:* = param1.type;
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                      {
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            addr427:
                                                            §§push(0);
                                                            if(_loc10_ && _loc2_)
                                                            {
                                                               addr535:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr506:
                                                            §§push(4);
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               addr541:
                                                            }
                                                         }
                                                      }
                                                      else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§push(1);
                                                            if(_loc10_ && _loc3_)
                                                            {
                                                               §§goto(addr535);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr464:
                                                            §§push(2);
                                                            if(_loc10_ && this)
                                                            {
                                                               §§goto(addr541);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         if(TouchEvent.TOUCH_END === _loc8_)
                                                         {
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               §§goto(addr464);
                                                            }
                                                            addr543:
                                                            loop47:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  §§push(§!!j§.§ 0§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        _loc5_ = §§pop();
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           addr804:
                                                                           §§push(_loc2_);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() < this.§>!0§.left);
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop12:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr814:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   addr769:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= this.§>!0§.right);
                                                                                                      addr773:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         addr774:
                                                                                                         while(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                         }
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr813:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop21:
                                                                                             while(_loc9_ || this)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < this.§>!0§.top);
                                                                                                               loop26:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(_loc9_ || param1)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           loop41:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr753:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       break loop41;
                                                                                                                                    }
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                 }
                                                                                                                                 loop42:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       loop27:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() >= this.§>!0§.bottom);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      loop30:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop14;
                                                                                                                                                               }
                                                                                                                                                               continue loop42;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               loop32:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           break loop32;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                           break loop47;
                                                                                                                                                                           addr725:
                                                                                                                                                                           §§pop();
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr691:
                                                                                                                                                                     return;
                                                                                                                                                                     addr675:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr618:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     addr620:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - this.§>!0§.x);
                                                                                                                                                                        addr624:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           continue loop25;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop30;
                                                                                                                                                               }
                                                                                                                                                               if(_loc10_ && _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop28;
                                                                                                                                                               }
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop24;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr691);
                                                                                                                                                               addr673:
                                                                                                                                                            }
                                                                                                                                                            addr711:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr774);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   continue loop27;
                                                                                                                                                }
                                                                                                                                                while(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr725);
                                                                                                                                                }
                                                                                                                                                continue loop26;
                                                                                                                                                addr589:
                                                                                                                                                if(_loc10_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() - this.§>!0§.y);
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   addr602:
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr612:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            loop38:
                                                                                                                                                            while(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.§=L§.§]!<§(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                                                                                                  if(!(_loc9_ || this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop38;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc9_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr675);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr618);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               return;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc3_);
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop25;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr589);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr602);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr814);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr640:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr769);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr620);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr624);
                                                                                                                                                }
                                                                                                                                                §§goto(addr612);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr765:
                                                                                                                                    }
                                                                                                                                    §§goto(addr711);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                           addr752:
                                                                                                                        }
                                                                                                                        §§goto(addr813);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr765);
                                                                                                               }
                                                                                                               §§goto(addr773);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr752);
                                                                                                }
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(!(_loc9_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr640);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr346:
                                                                        _loc5_ = §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§goto(addr804);
                                                                        }
                                                                     }
                                                                     §§goto(addr814);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr368:
                                                                     _loc5_ = §§pop();
                                                                     addr367:
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§goto(addr804);
                                                                     }
                                                                     §§goto(addr582);
                                                                  }
                                                               case 1:
                                                                  addr382:
                                                                  §§push(§!!j§.§4!^§);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     addr391:
                                                                     §§goto(addr804);
                                                                     addr391:
                                                                  }
                                                                  break;
                                                               case 2:
                                                                  §§goto(addr367);
                                                               case 3:
                                                                  addr357:
                                                                  _loc5_ = §!!j§.§ 0§;
                                                                  addr356:
                                                                  §§push(§!!j§.§?c§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr332:
                                                                     §§goto(addr804);
                                                                  }
                                                                  §§goto(addr582);
                                                               case 4:
                                                                  addr338:
                                                                  §§push(§!!j§.§?c§);
                                                                  if(_loc9_ || _loc2_)
                                                                  {
                                                                     §§goto(addr346);
                                                                  }
                                                                  break;
                                                               case 5:
                                                                  §§push(this.§<T§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(§!!j§.§4!^§);
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    addr278:
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          addr312:
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             addr320:
                                                                                             _loc5_ = §§pop();
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                addr328:
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr332);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr391);
                                                                                                }
                                                                                                §§goto(addr804);
                                                                                             }
                                                                                             §§goto(addr617);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                       §§goto(addr582);
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 §§goto(addr320);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr368);
                                                                              }
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                        §§goto(addr328);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§!!j§.§^!R§);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr368);
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr382);
                                                                              §§goto(addr391);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr338);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr753);
                                                               default:
                                                                  §§goto(addr804);
                                                            }
                                                            continue loop46;
                                                         }
                                                         if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(3);
                                                               if(_loc9_ || param1)
                                                               {
                                                               }
                                                               §§goto(addr543);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr506);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(MouseEvent.MOUSE_UP === _loc8_)
                                                            {
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  §§goto(addr506);
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_MOVE === _loc8_)
                                                            {
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  §§push(5);
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     §§goto(addr535);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr541);
                                                                  }
                                                               }
                                                            }
                                                            else if(true)
                                                            {
                                                               §§goto(addr543);
                                                               §§push(6);
                                                            }
                                                            §§goto(addr543);
                                                         }
                                                         §§goto(addr543);
                                                         §§push(6);
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr541);
                                                         }
                                                      }
                                                      §§goto(addr543);
                                                   }
                                                   §§goto(addr427);
                                                }
                                                continue loop6;
                                             }
                                          }
                                          while(_loc10_ && this);
                                          
                                          this.§<T§ = true;
                                          §§goto(addr162);
                                       }
                                       §§goto(addr190);
                                    }
                                 }
                                 §§goto(addr143);
                              }
                              else
                              {
                                 _loc7_ = param1 as TouchEvent;
                                 if(!_loc10_)
                                 {
                                    §§push(Number(_loc7_.stageX));
                                    loop0:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr228:
                                       while(true)
                                       {
                                          addr216:
                                          while(true)
                                          {
                                             §§push(Number(_loc7_.stageY));
                                             if(!_loc9_)
                                             {
                                                break;
                                             }
                                             _loc3_ = §§pop();
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc4_ = int(_loc7_.touchPointID);
                                    if(!(_loc9_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!_loc10_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       §§goto(addr216);
                                    }
                                    §§goto(addr228);
                                 }
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr83);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr80);
         }
         §§goto(addr73);
      }
      
      private function get §,a§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §1_§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Program3D = null;
         if(!(_loc5_ && param1))
         {
            if(param1 in this.§!h§)
            {
               if(_loc6_ || param3)
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr74:
               _loc4_ = this.§"W§.createProgram();
               if(_loc6_)
               {
                  _loc4_.upload(param2,param3);
                  if(_loc6_ || param1)
                  {
                  }
                  §§goto(addr98);
               }
               this.§!h§[param1] = _loc4_;
            }
            else
            {
               addr70:
               if(this.§"W§ != null)
               {
                  §§goto(addr74);
               }
            }
            addr98:
            return;
         }
         §§goto(addr70);
      }
      
      public function §`!Z§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§9!J§(param1);
         if(!(_loc3_ && this))
         {
            §§push(Boolean(_loc2_));
            loop0:
            for(; §§pop(); while(true)
            {
               §§push(delete this.§!h§[param1]);
               if(!_loc4_)
               {
                  break;
               }
               §§pop();
               if(!_loc3_)
               {
                  break loop0;
               }
            })
            {
               if(!(_loc4_ || this))
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            _loc2_.dispose();
            §§goto(addr78);
         }
      }
      
      public function §9!J§(param1:String) : Program3D
      {
         return this.§!h§[param1] as Program3D;
      }
      
      public function §8V§(param1:String) : Boolean
      {
         return param1 in this.§!h§;
      }
      
      public function get §#;§() : Boolean
      {
         return this.§^!%§;
      }
      
      public function get §1!e§() : Juggler
      {
         return this.§7!-§;
      }
      
      public function get §]?§() : Boolean
      {
         return this.§+`§;
      }
      
      public function set §]?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+`§ = param1;
         }
         while(this.§"W§)
         {
            if(!(_loc3_ && _loc3_))
            {
               this.§=L§.§]?§ = param1;
            }
            if(!(_loc3_ && _loc2_))
            {
               break;
            }
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§#'§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#'§ = param1;
            while(this.§"W§)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               addr56:
               if(!(_loc2_ || param1))
               {
                  continue;
               }
               addr52:
               this.§"W§.enableErrorChecking = param1;
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function get § T§() : int
      {
         return this.§'!§;
      }
      
      public function set § T§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§'!§ = param1;
            do
            {
               this.§^k§();
            }
            while(_loc2_ && param1);
            
         }
      }
      
      public function get §8l§() : Rectangle
      {
         return this.§>!0§.clone();
      }
      
      public function set §8l§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>!0§ = param1.clone();
         }
         do
         {
            this.§^k§();
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function get §[!F§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(!_loc3_)
         {
            if(this.§@p§ == null)
            {
               if(!_loc3_)
               {
                  addr27:
                  this.§@p§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(_loc2_ || _loc2_)
               {
                  _loc1_.hideBuiltInItems();
               }
               loop0:
               while(true)
               {
                  addr76:
                  while(true)
                  {
                     this.§@p§.contextMenu = _loc1_;
                     continue loop0;
                  }
               }
            }
            return this.§@p§;
         }
         §§goto(addr27);
      }
      
      public function get stage() : §6!7§.Stage
      {
         return this.§'!'§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §"2§() : flash.display.Stage
      {
         return this.§"5§;
      }
      
      public function get §[E§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6@§);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
