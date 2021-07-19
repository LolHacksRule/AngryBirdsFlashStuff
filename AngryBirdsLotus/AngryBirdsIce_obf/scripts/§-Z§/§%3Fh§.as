package §-Z§
{
   import § F§.§3!E§;
   import §[P§.Texture;
   import §^V§.DisplayObject;
   import §^V§.Stage;
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
   import starling.events.§"e§;
   import starling.events.§%S§;
   import starling.events.§0!?§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §?h§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §8J§:§?h§;
      
      private static var §=P§:Boolean;
      
      private static var §]Y§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §8!G§:§^V§.Stage;
      
      private var §5,§:Class;
      
      private var §81§:§^V§.DisplayObject;
      
      private var §>M§:§3!E§;
      
      private var § !C§:Boolean;
      
      private var §=V§:Boolean;
      
      private var §6m§:§ G§;
      
      private var §7s§:§0!?§;
      
      private var §`_§:int;
      
      private var §'!+§:Boolean;
      
      private var §0t§:Boolean;
      
      private var §+G§:Number;
      
      private var §9h§:Rectangle;
      
      private var §`!7§:Boolean;
      
      private var §'G§:flash.display.Stage;
      
      private var §>u§:Sprite;
      
      private var §]p§:Context3D;
      
      private var §#Q§:Dictionary;
      
      private var §^R§:int;
      
      private var §@m§:Boolean;
      
      private var §4@§:Number;
      
      private var §8!B§:Number;
      
      private var §0'§:Number;
      
      private var §8!5§:Number;
      
      private var §5!&§:Number;
      
      private var §2i§:Number;
      
      private var §4Y§:Function;
      
      private var §^!7§:uint;
      
      private var §?0§:String;
      
      private var §0?§:Bitmap;
      
      private var §+H§:Boolean = false;
      
      private var §3!&§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §9E§:Boolean = false;
      
      public function §?h§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(!_loc9_)
         {
            super();
            if(param2 == null)
            {
               if(_loc10_)
               {
                  throw new ArgumentError("Stage must not be null");
               }
            }
            else if(param1 == null)
            {
               if(!_loc9_)
               {
                  §§goto(addr29);
               }
               else
               {
                  loop10:
                  while(true)
                  {
                     addr112:
                     loop7:
                     while(true)
                     {
                        this.§+G§ = getTimer() / 1000;
                        this.§#Q§ = new Dictionary();
                        if(!_loc9_)
                        {
                           if(_loc10_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              var _loc7_:int = 0;
                              var _loc8_:* = this.§#?§;
                              addr308:
                              for each(_loc6_ in _loc8_)
                              {
                                 if(!(_loc9_ && param2))
                                 {
                                    param2.addEventListener(_loc6_,this.§&=§,false,0,true);
                                 }
                                 §§goto(addr308);
                              }
                              if(_loc10_)
                              {
                                 param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false,0,true);
                              }
                              param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false,0,true);
                              this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ ,§,false,1,true);
                              this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§8!7§,false,1,true);
                              this.mStage3D.visible = false;
                              addr399:
                              if(!(_loc9_ && param1))
                              {
                                 this.§>!@§(true);
                                 this.§^!7§ = param2.color;
                                 this.§?0§ = param5;
                                 if(_loc9_ && param1)
                                 {
                                    §§goto(addr399);
                                 }
                                 return;
                              }
                              addr366:
                              §§goto(addr366);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§0'§ = this.§4@§;
                                 this.§8!5§ = this.§8!B§;
                                 this.§5!&§ = param2.stageWidth;
                                 loop9:
                                 while(true)
                                 {
                                    this.§2i§ = param2.stageHeight;
                                    §6!#§ = true;
                                    addr250:
                                    loop11:
                                    while(true)
                                    {
                                       this.§^c§();
                                       this.§5,§ = param1;
                                       this.§9h§ = param3;
                                       addr236:
                                       while(true)
                                       {
                                          this.mStage3D = param4;
                                          loop1:
                                          while(true)
                                          {
                                             this.§8!G§ = new §^V§.Stage(param3.width,param3.height,param2.color);
                                             if(!(_loc10_ || param2))
                                             {
                                                break;
                                             }
                                             this.§'G§ = param2;
                                             loop2:
                                             while(true)
                                             {
                                                this.§7s§ = new §0!?§(this.§8!G§);
                                                loop3:
                                                while(true)
                                                {
                                                   this.§>M§ = new §3!E§();
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(_loc10_ || param3)
                                                         {
                                                            this.§`_§ = 0;
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               continue loop2;
                                                            }
                                                            continue loop9;
                                                            addr148:
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop3;
                                                      addr164:
                                                      this.§'!+§ = false;
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         this.§0t§ = false;
                                                         break loop7;
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr279:
                           }
                        }
                        break;
                     }
                     while(!(_loc9_ && param3))
                     {
                        continue loop10;
                        §§goto(addr112);
                     }
                     §§goto(addr148);
                  }
               }
            }
            else
            {
               if(param3 == null)
               {
                  if(_loc10_ || param1)
                  {
                     param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                     addr78:
                     if(param4 == null)
                     {
                        if(_loc10_)
                        {
                           param4 = param2.stage3Ds[0];
                           addr89:
                           this.§4@§ = param3.width;
                           if(_loc10_ || this)
                           {
                              this.§8!B§ = param3.height;
                              §§goto(addr279);
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr236);
               }
               §§goto(addr78);
            }
            §§goto(addr250);
         }
         addr29:
         throw new ArgumentError("Root class must not be null");
      }
      
      public static function get §7"§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§ n§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr40:
                     §§push(§ n§.§@m§);
                     if(_loc1_)
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
      
      public static function §6t§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §?h§))
         {
            §§push(§8J§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  §§push(§§pop());
                  loop1:
                  for(; §§pop(); while(true)
                  {
                     if(_loc2_ || _loc2_)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr121);
                        }
                        break loop1;
                     }
                     continue loop1;
                  })
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§8J§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().§+H§);
                              if(!_loc1_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc1_)
                                 {
                                    addr121:
                                    while(true)
                                    {
                                       §§pop();
                                       addr122:
                                       while(!_loc1_)
                                       {
                                          while(true)
                                          {
                                             §§push(§8J§);
                                             continue loop4;
                                          }
                                       }
                                       continue loop3;
                                    }
                                    addr121:
                                 }
                              }
                              §§push(§§pop());
                              continue loop1;
                           }
                           continue loop1;
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr131);
            }
         }
         §§goto(addr124);
      }
      
      public static function get § n§() : §?h§
      {
         return §8J§;
      }
      
      public static function get §;B§() : §3!E§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(§8J§);
            if(_loc1_ || _loc1_)
            {
               return !!§§pop() ? §8J§.§;B§ : null;
            }
         }
         §§goto(addr43);
      }
      
      public static function get §]!-§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §]!-§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §6!#§() : Boolean
      {
         return §=P§;
      }
      
      public static function set §6!#§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §?h§)
         {
            if(§8J§ == null)
            {
               loop0:
               while(true)
               {
                  §=P§ = param1;
                  if(_loc2_)
                  {
                     break;
                  }
                  addr59:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!(_loc3_ && _loc2_))
               {
                  return;
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr59);
      }
      
      public static function §8g§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(§ n§)
            {
               if(_loc5_ || param2)
               {
                  return Texture.§+u§(§ n§.§]p§,param1,param2,param3);
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
            §§push(§8J§);
            if(!_loc4_)
            {
               if(§§pop().§]p§)
               {
                  if(!(_loc4_ && §?h§))
                  {
                     §§push(§8J§);
                     if(!(_loc4_ && param1))
                     {
                        §§pop().§]p§.drawToBitmapData(param1);
                        addr41:
                        if(!(_loc3_ || _loc3_))
                        {
                           addr92:
                           _loc2_ = §8J§.§6m§.canvas;
                           addr90:
                           if(!(_loc4_ && §?h§))
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr61:
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr61);
               }
               else
               {
                  §§push(§8J§);
                  if(!(_loc4_ && param1))
                  {
                     §§push(§§pop().§6m§);
                     if(!(_loc4_ && _loc3_))
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
            §§goto(addr41);
         }
         §§goto(addr61);
      }
      
      public function get §6!"§() : §^V§.DisplayObject
      {
         return this.§81§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§^!7§ = param1;
         }
      }
      
      public function get §,i§() : Number
      {
         return this.§4@§;
      }
      
      public function get §<v§() : Number
      {
         return this.§8!B§;
      }
      
      public function §#c§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§?0§);
         }
         catch(e:Error)
         {
            §8U§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc6_ || _loc1_)
         {
            this.§9E§ = true;
         }
         while(true)
         {
            this.§'G§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.onKey,false);
            loop1:
            while(true)
            {
               this.§'G§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.onKey,false);
               addr84:
               while(true)
               {
                  addr51:
                  while(true)
                  {
                     this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§ ,§,false);
                     continue loop1;
                  }
               }
            }
            if(_loc5_ && _loc1_)
            {
               continue;
            }
            this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§8!7§,false);
            if(!(_loc5_ && _loc3_))
            {
               if(!_loc5_)
               {
                  if(false)
                  {
                     §§goto(addr51);
                  }
                  var _loc3_:int = 0;
                  var _loc4_:* = this.§#?§;
                  addr121:
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc5_)
                        {
                           this.§'G§.removeEventListener(_loc1_,this.§&=§,false);
                        }
                        §§goto(addr121);
                     }
                     if(_loc6_ || this)
                     {
                        if(_loc6_)
                        {
                           _loc3_ = 0;
                           if(_loc6_ || _loc2_)
                           {
                              addr155:
                              _loc4_ = this.§#Q§;
                              addr175:
                              for each(_loc2_ in _loc4_)
                              {
                                 if(_loc6_ || _loc1_)
                                 {
                                    _loc2_.dispose();
                                 }
                                 §§goto(addr175);
                              }
                           }
                           if(this.§]p§)
                           {
                              this.§]p§.dispose();
                           }
                           §§push(this.§7s§);
                           if(_loc6_)
                           {
                              if(§§pop())
                              {
                                 addr271:
                                 this.§7s§.dispose();
                                 addr269:
                              }
                              §§push(this.§6m§);
                              if(_loc6_ || _loc3_)
                              {
                                 if(§§pop())
                                 {
                                    addr261:
                                    this.§6m§.dispose();
                                 }
                                 if(§8J§ == this)
                                 {
                                    §8J§ = null;
                                 }
                                 §§push(Boolean(this.§0?§));
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(§§pop())
                                    {
                                       addr226:
                                       §§pop();
                                       if(_loc6_)
                                       {
                                          §§push(Boolean(this.§0?§.bitmapData));
                                          if(_loc5_ && _loc1_)
                                          {
                                             §§goto(addr226);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr269);
                                    }
                                    addr204:
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          this.§0?§.bitmapData.dispose();
                                       }
                                       this.§0?§.bitmapData = null;
                                       addr212:
                                       if(_loc5_)
                                       {
                                          §§goto(addr212);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr271);
                        }
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr175);
               }
               §§goto(addr84);
            }
            §§goto(addr60);
         }
      }
      
      private function §&+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§]p§ = this.mStage3D.context3D;
         this.§#Q§ = new Dictionary();
         if(this.§]p§)
         {
            this.§]p§.enableErrorChecking = this.§0t§;
            if(this.§]p§.driverInfo.indexOf("Software") >= 0)
            {
               this.§@m§ = true;
            }
         }
         else
         {
            this.§@m§ = true;
         }
         this.§'^§();
      }
      
      private function §=q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§8!G§);
            do
            {
               if(§§pop().numChildren > 0)
               {
                  return;
               }
               addr87:
               loop1:
               while(true)
               {
                  §§push(this.§81§);
                  while(true)
                  {
                     §§push(null);
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           this.§81§ = new this.§5,§();
                        }
                        §§push(this.§81§);
                        if(_loc1_ && _loc2_)
                        {
                           break;
                        }
                        §§push(null);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(§§pop() != §§pop())
                        {
                           break loop1;
                        }
                        if(_loc2_ || _loc1_)
                        {
                           throw new Error("Invalid root class: " + this.§5,§);
                        }
                     }
                  }
               }
               §§push(this.§8!G§);
            }
            while(!_loc2_);
            
            §§pop().addChild(this.§81§);
            return;
         }
         while(true)
         {
            §§goto(addr87);
         }
      }
      
      private function §'^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3!&§ = true;
            while(true)
            {
               this.mStage3D.x = this.§9h§.x;
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.mStage3D.y = this.§9h§.y;
            if(!(_loc2_ && _loc2_))
            {
               if(!(_loc2_ && _loc1_))
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
         §§push(§6t§());
         loop0:
         while(§§pop())
         {
            while(true)
            {
               §§push(this.§3!&§);
               if(!_loc4_)
               {
                  if(!§§pop())
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     if(this.§]p§)
                     {
                        this.§]p§.configureBackBuffer(this.§9h§.width,this.§9h§.height,this.§`_§,false);
                        while(true)
                        {
                        }
                        addr48:
                     }
                     while(true)
                     {
                        this.§3!&§ = false;
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr48);
                     }
                     if(true)
                     {
                        break;
                     }
                  }
                  continue;
               }
               continue loop0;
            }
            §§push(getTimer() / 1000);
            if(!(_loc4_ && _loc1_))
            {
               §§push(Number(§§pop()));
            }
            var _loc1_:* = §§pop();
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - this.§+G§);
               if(_loc3_ || _loc1_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || this)
            {
               this.§+G§ = _loc1_;
               addr282:
               this.§8!G§.advanceTime(_loc2_);
               this.§>M§.advanceTime(_loc2_);
               this.§7s§.advanceTime(_loc2_);
               addr259:
               this.§6m§.§0!%§(this.§8!G§.stageWidth,this.§8!G§.stageHeight);
               addr272:
               addr278:
               addr288:
               addr284:
            }
            addr239:
            this.§6m§.clear(this.§]p§,this.§^!7§,1);
            addr221:
            addr245:
            addr266:
            §§push(this.§6m§);
            if(_loc3_ || _loc3_)
            {
               §§pop().§case§(this.§]p§,this.§^R§);
               addr233:
               if(!_loc4_)
               {
                  §§push(this.§8!G§);
                  if(_loc3_ || this)
                  {
                     §§pop().render(this.§6m§,1);
                     addr201:
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           if(!(_loc4_ && _loc1_))
                           {
                              addr185:
                              this.§6m§.§ ]§();
                              if(this.§4Y§ != null)
                              {
                                 if(_loc3_)
                                 {
                                    this.§4Y§();
                                    this.§4Y§ = null;
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(_loc3_)
                                       {
                                          addr145:
                                          §§push(this.§6m§);
                                          if(!_loc4_)
                                          {
                                             §§pop().finishRendering(this.§]p§);
                                             addr150:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(this.§6m§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         §§pop().§3o§();
                                                         if(!(_loc3_ || this))
                                                         {
                                                            §§goto(addr150);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr145);
                                             }
                                             §§goto(addr201);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr272);
                                    }
                                    §§goto(addr233);
                                 }
                                 §§goto(addr278);
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr288);
                        }
                        §§goto(addr284);
                     }
                     §§goto(addr245);
                  }
                  §§goto(addr282);
               }
               §§goto(addr266);
            }
            §§goto(addr239);
         }
      }
      
      public function set §5R§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§4Y§ = param1;
         }
      }
      
      private function §]f§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && _loc1_))
         {
            this.§>u§.x = this.§9h§.x;
            if(!(_loc4_ && _loc3_))
            {
               this.§>u§.y = this.§9h§.y;
            }
         }
         var _loc1_:int = this.§>u§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§>u§.parent;
         §§push(_loc1_);
         loop0:
         while(true)
         {
            §§push(0);
            addr224:
            while(true)
            {
               §§push(§§pop() == §§pop());
               if(!(_loc4_ && _loc1_))
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
                           addr236:
                           while(true)
                           {
                              §§push(_loc2_ == null);
                           }
                        }
                        addr235:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           continue loop0;
                        }
                        loop18:
                        while(true)
                        {
                           this.§'G§.addChild(this.§>u§);
                           loop12:
                           for(; !(_loc4_ && this); continue loop18)
                           {
                              loop13:
                              while(true)
                              {
                                 §§push(this.§6m§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop14:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             addr134:
                                             §§push(§§pop());
                                             if(!(_loc5_ || this))
                                             {
                                                while(_loc5_ || this)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§push(Boolean(_loc2_));
                                                         continue loop14;
                                                      }
                                                      addr201:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop13;
                                                      }
                                                   }
                                                   §§goto(addr134);
                                                }
                                                continue loop3;
                                                addr193:
                                             }
                                             if(§§pop())
                                             {
                                                if(!_loc5_)
                                                {
                                                   break;
                                                }
                                                §§pop();
                                                loop15:
                                                while(_loc5_)
                                                {
                                                   §§push(this.§6m§);
                                                   if(!(_loc4_ && _loc1_))
                                                   {
                                                      §§push(Boolean(§§pop().canvas));
                                                      if(_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_ && _loc2_)
                                                               {
                                                                  continue loop18;
                                                               }
                                                               §§push(this.§6m§);
                                                               if(!_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop().setCanvasSize(this.§0'§,this.§8!5§,this.§9h§.width / this.§8!G§.stageWidth,this.§9h§.height / this.§8!G§.stageHeight);
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        addr239:
                                                                        addr239:
                                                                        _loc3_ = this.§6m§.canvas;
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           if(this.§0?§.bitmapData != _loc3_)
                                                                           {
                                                                              if(!_loc4_)
                                                                              {
                                                                                 this.§0?§.bitmapData = _loc3_;
                                                                                 addr305:
                                                                              }
                                                                              §§goto(addr305);
                                                                           }
                                                                           addr280:
                                                                           if(this.§'G§.getChildIndex(this.§>u§) > 0)
                                                                           {
                                                                              addr288:
                                                                              this.§'G§.removeChild(this.§>u§);
                                                                              this.§'G§.addChildAt(this.§>u§,0);
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr280);
                                                                                       }
                                                                                       §§goto(addr306);
                                                                                    }
                                                                                    §§goto(addr305);
                                                                                 }
                                                                                 §§goto(addr288);
                                                                              }
                                                                              addr293:
                                                                              §§goto(addr293);
                                                                           }
                                                                           §§goto(addr306);
                                                                        }
                                                                        §§goto(addr305);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§'G§.removeChild(this.§>u§);
                                                                           break loop15;
                                                                        }
                                                                        addr164:
                                                                     }
                                                                  }
                                                                  addr84:
                                                               }
                                                               §§goto(addr239);
                                                            }
                                                            addr306:
                                                            return;
                                                         }
                                                         continue loop12;
                                                         addr71:
                                                      }
                                                      continue loop14;
                                                   }
                                                   §§goto(addr84);
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      continue loop13;
                                                   }
                                                   continue loop12;
                                                }
                                             }
                                             §§goto(addr71);
                                             §§goto(addr164);
                                          }
                                          else
                                          {
                                             §§goto(addr235);
                                          }
                                       }
                                       §§goto(addr201);
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr239);
                              }
                           }
                           §§goto(addr236);
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      private function §8U§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc5_ || _loc2_)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            _loc2_.defaultTextFormat = _loc3_;
            while(true)
            {
               _loc2_.wordWrap = true;
               _loc2_.width = this.§8!G§.stageWidth * 0.75;
               do
               {
                  _loc2_.autoSize = TextFieldAutoSize.CENTER;
                  do
                  {
                     _loc2_.text = param1;
                     _loc2_.x = (this.§8!G§.stageWidth - _loc2_.width) / 2;
                     _loc2_.y = (this.§8!G§.stageHeight - _loc2_.height) / 2;
                  }
                  while(!_loc5_);
                  
               }
               while(!_loc5_);
               
               _loc2_.background = true;
               while(_loc5_ || this)
               {
                  _loc2_.backgroundColor = 4456448;
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
                  this.§=2§.addChild(_loc2_);
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      public function §^c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §8J§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§ !C§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(_loc1_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§ !C§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(!_loc1_);
         
      }
      
      public function §>!@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§=V§ = param1;
         }
      }
      
      private function § !@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§+H§ = true;
            loop0:
            while(this.§0?§ == null)
            {
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§0?§ = new Bitmap();
                     do
                     {
                        this.§=2§.addChild(this.§0?§);
                     }
                     while(!(_loc1_ || _loc2_));
                     
                     if(!_loc2_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr71);
      }
      
      private function §8!7§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !@§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc3_ && param1);
            
         }
      }
      
      private function § ,§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(this.§9E§)
            {
               if(_loc5_)
               {
                  return;
               }
               loop23:
               while(true)
               {
                  this.§ !@§();
                  loop16:
                  while(true)
                  {
                     loop17:
                     while(true)
                     {
                        if(this.§]p§)
                        {
                           continue loop16;
                        }
                        this.§6m§ = new §#M§();
                        loop20:
                        while(true)
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§push(this.§6m§);
                              loop21:
                              while(true)
                              {
                                 if(_loc5_)
                                 {
                                    §§pop().setCanvasSize(this.§0'§,this.§8!5§,this.§9h§.width / this.§8!G§.stageWidth,this.§9h§.height / this.§8!G§.stageHeight);
                                    loop19:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop20;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§6m§);
                                          if(!_loc5_)
                                          {
                                             continue loop21;
                                          }
                                          if(_loc5_)
                                          {
                                             §§pop().clear(null,this.§^!7§);
                                             if(!_loc4_)
                                             {
                                                addr99:
                                                loop18:
                                                while(true)
                                                {
                                                   this.§7s§.§5U§ = this.§'!+§;
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      continue loop19;
                                                   }
                                                   dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      return;
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      this.§]p§ = null;
                                                      addr192:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr253:
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            continue loop23;
                                                            return;
                                                         }
                                                         addr225:
                                                         addr213:
                                                         loop10:
                                                         for(; !(_loc4_ && _loc2_); §§goto(addr225))
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc4_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  §§pop();
                                                                  continue;
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr290:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(this.§]p§));
                                                                        }
                                                                     }
                                                                     addr289:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     break loop10;
                                                                  }
                                                               }
                                                               addr288:
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(Boolean(this.§@m§));
                                                            if(_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            addr203:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop17;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.mStage3DEnabled = false;
                                                                  continue loop14;
                                                                  addr176:
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               this.§^c§();
                                                               this.§&+§();
                                                               while(true)
                                                               {
                                                                  this.§=q§();
                                                                  addr229:
                                                                  while(_loc5_ || this)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(Boolean(this.§]p§));
                                                                        continue loop7;
                                                                     }
                                                                     addr272:
                                                                     this.§8U§("Fatal error: The application lost the device context!");
                                                                     this.stop();
                                                                     §§goto(addr253);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr272);
                                                         }
                                                      }
                                                      addr298:
                                                      while(true)
                                                      {
                                                         addr276:
                                                         while(true)
                                                         {
                                                            §§push(!§?h§.§6!#§);
                                                            if(_loc5_ || this)
                                                            {
                                                               §§goto(addr288);
                                                               §§push(§§pop());
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr229);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§6m§);
                                                      break loop19;
                                                   }
                                                   addr295:
                                                }
                                             }
                                             addr294:
                                          }
                                          §§goto(addr276);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    §§goto(addr298);
                                 }
                              }
                           }
                           §§goto(addr295);
                        }
                     }
                     addr302:
                     while(true)
                     {
                        §§goto(addr294);
                        addr163:
                        §§push(this.§6m§);
                        if(_loc4_ && param1)
                        {
                           continue;
                        }
                        this.§6m§ = new § G§();
                        if(_loc5_)
                        {
                           §§goto(addr176);
                        }
                        §§goto(addr192);
                     }
                  }
               }
            }
            else
            {
               var _loc2_:*;
               §§push((_loc2_ = §§findproperty(§]Y§)).§]Y§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(!(_loc4_ && param1))
               {
                  _loc2_.§]Y§ = _loc3_;
               }
               if(!_loc4_)
               {
                  this.§^R§ = §]Y§;
                  §§goto(addr302);
               }
            }
            §§goto(addr290);
         }
         §§goto(addr126);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§^c§();
         }
         §§push(getTimer() / 1000);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || this)
         {
            §§push(§§pop() - this.§+G§);
            if(_loc4_)
            {
               addr46:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               §§push(this.§ !C§);
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
                              continue;
                           }
                           if(!_loc4_)
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
                        while(!_loc5_)
                        {
                           this.render();
                           while(true)
                           {
                              addr85:
                              if(_loc4_ || this)
                              {
                                 §§goto(addr66);
                              }
                           }
                        }
                        §§goto(addr126);
                        addr113:
                     }
                     while(true)
                     {
                        if(this.§>u§)
                        {
                           if(_loc4_ || this)
                           {
                              if(!_loc5_)
                              {
                                 this.§]f§();
                              }
                              else
                              {
                                 §§goto(addr113);
                              }
                           }
                           §§goto(addr85);
                        }
                        break;
                        §§goto(addr117);
                     }
                     addr66:
                     return;
                  }
               }
            }
            §§goto(addr126);
         }
         §§goto(addr46);
      }
      
      private function onKey(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^c§();
            do
            {
               this.§8!G§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(_loc2_);
            
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§4@§);
            if(_loc7_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(!_loc6_)
            {
               §§push(§§pop() / this.§8!B§);
               if(!(_loc6_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc7_ || param1)
            {
               if(param3)
               {
                  §§push(this.§8!G§);
                  loop0:
                  while(true)
                  {
                     §§push(this.§4@§);
                     loop1:
                     while(true)
                     {
                        if(!(_loc6_ && param3))
                        {
                           §§pop().stageWidth = §§pop();
                           §§push(this.§8!G§);
                           while(_loc7_)
                           {
                              §§push(this.§8!B§);
                              if(_loc7_ || param2)
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       addr119:
                                       §§push(§§pop() * §§pop());
                                       §§push(_loc4_);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() / §§pop());
                                          if(_loc6_ && param3)
                                          {
                                             continue loop1;
                                          }
                                          §§pop().stageHeight = §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                this.§0'§ = param1;
                                                if(!(_loc6_ && param3))
                                                {
                                                   continue loop4;
                                                }
                                                addr173:
                                                while(true)
                                                {
                                                   §§push(this.§8!G§);
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(this.§4@§);
                                                      if(_loc7_)
                                                      {
                                                         addr179:
                                                         §§push(_loc4_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            §§push(_loc5_);
                                                            §§goto(addr179);
                                                         }
                                                         addr180:
                                                      }
                                                      addr183:
                                                      while(true)
                                                      {
                                                         §§pop().stageWidth = §§pop();
                                                         §§push(this.§8!G§);
                                                         addr160:
                                                         while(!(_loc7_ || param3))
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§push(this.§8!B§);
                                                         addr169:
                                                         while(true)
                                                         {
                                                            §§pop().stageHeight = §§pop();
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr183);
                                       }
                                    }
                                    §§goto(addr180);
                                 }
                                 §§goto(addr119);
                              }
                              §§goto(addr169);
                              §§push(this.§8!G§);
                              if(!_loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    §§goto(addr160);
                                 }
                                 §§pop().dispatchEvent(new §%S§(flash.events.Event.RESIZE,param1,param2));
                                 return;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr183);
                     }
                  }
               }
            }
            §§goto(addr173);
         }
         §§goto(addr25);
      }
      
      public function §'!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.setCanvasSize(this.§4@§,this.§8!B§);
         }
      }
      
      private function §&=§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!(_loc10_ && _loc2_))
         {
            §§push(this.§ !C§);
            if(!(_loc10_ && this))
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_)
                     {
                        §§goto(addr54);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr69);
               }
               §§goto(addr66);
            }
            addr54:
            §§pop();
            if(!_loc10_)
            {
               §§push(this.§=V§);
               if(_loc9_ || _loc2_)
               {
                  addr66:
                  §§push(!§§pop());
                  if(!_loc10_)
                  {
                     addr69:
                     if(§§pop())
                     {
                        if(!_loc10_)
                        {
                           §§goto(addr72);
                        }
                     }
                     else
                     {
                        addr78:
                        if(param1 is MouseEvent)
                        {
                           addr79:
                           §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                           if(!(_loc10_ && _loc3_))
                           {
                              _loc2_ = §§pop();
                              if(!(_loc10_ && _loc2_))
                              {
                                 addr144:
                                 _loc3_ = Number(_loc6_.stageY);
                                 loop0:
                                 while(true)
                                 {
                                    _loc4_ = 0;
                                    do
                                    {
                                       if(param1.type != MouseEvent.MOUSE_DOWN)
                                       {
                                          if(param1.type == MouseEvent.MOUSE_UP)
                                          {
                                             if(!_loc10_)
                                             {
                                                this.§`!7§ = false;
                                             }
                                             if(_loc10_ && param1)
                                             {
                                                break;
                                             }
                                             continue;
                                             addr136:
                                          }
                                          break;
                                       }
                                       if(_loc10_)
                                       {
                                          continue loop0;
                                       }
                                       this.§`!7§ = true;
                                       §§goto(addr136);
                                    }
                                    while(false);
                                    
                                    addr180:
                                    var _loc8_:* = param1.type;
                                    if(!_loc10_)
                                    {
                                       if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                       {
                                          if(_loc9_ || this)
                                          {
                                             §§push(0);
                                             if(_loc10_ && _loc3_)
                                             {
                                                addr319:
                                             }
                                             addr364:
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   _loc5_ = §"e§.§'D§;
                                                   break;
                                                case 1:
                                                   addr282:
                                                   _loc5_ = §"e§.§76§;
                                                   if(!_loc10_)
                                                   {
                                                      break;
                                                   }
                                                   loop2:
                                                   while(true)
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §§push(Number(§§pop() - this.§9h§.x));
                                                            }
                                                            else
                                                            {
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() >= this.§9h§.right);
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop6:
                                                                     while(true)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 §§push(_loc3_ < this.§9h§.top);
                                                                                 addr516:
                                                                                 while(true)
                                                                                 {
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   continue loop8;
                                                                                                }
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               §§push(_loc5_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §"e§.§'D§);
                                                                                                                  addr449:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                     if(!(_loc10_ && _loc2_))
                                                                                                                     {
                                                                                                                        return;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr492:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                            }
                                                                                                            addr519:
                                                                                                         }
                                                                                                         addr520:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_ >= this.§9h§.bottom);
                                                                                                            if(!(_loc10_ && _loc2_))
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         continue loop7;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr449);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         break loop6;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr540:
                                                                                                }
                                                                                             }
                                                                                             continue loop6;
                                                                                             addr480:
                                                                                          }
                                                                                          §§goto(addr519);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr532:
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr516);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         _loc2_ = §§pop();
                                                         continue loop2;
                                                      }
                                                   }
                                                   break;
                                                   addr459:
                                                case 2:
                                                   addr275:
                                                   _loc5_ = §"e§.§"m§;
                                                   break;
                                                   addr274:
                                                case 3:
                                                   §§push(§"e§.§'D§);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop());
                                                   }
                                                   _loc5_ = §§pop();
                                                   addr230:
                                                   break;
                                                case 4:
                                                   addr235:
                                                   §§push(§"e§.§"m§);
                                                   if(!_loc10_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(_loc9_ || this)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr395);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                   }
                                                   §§goto(addr275);
                                                case 5:
                                                   §§push(this.§`!7§);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§"e§.§76§);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  addr217:
                                                                  §§push(§§pop());
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                  }
                                                                  §§goto(addr446);
                                                               }
                                                               _loc5_ = §§pop();
                                                               if(!_loc10_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                               §§goto(addr520);
                                                            }
                                                            §§goto(addr446);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§"e§.§2!7§);
                                                         if(!_loc10_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§goto(addr217);
                                                               §§push(§§pop());
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr282);
                                                            }
                                                            §§goto(addr459);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr235);
                                                         }
                                                      }
                                                      §§goto(addr395);
                                                   }
                                                   §§goto(addr532);
                                             }
                                             §§goto(addr535);
                                             §§push(_loc2_);
                                          }
                                          else
                                          {
                                             addr318:
                                             §§push(1);
                                          }
                                          §§goto(addr319);
                                       }
                                       else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                       {
                                          §§goto(addr318);
                                       }
                                       else
                                       {
                                          if(TouchEvent.TOUCH_END === _loc8_)
                                          {
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                addr331:
                                                §§goto(addr364);
                                                §§push(2);
                                             }
                                          }
                                          else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                          {
                                             if(!_loc10_)
                                             {
                                                §§push(3);
                                                if(_loc10_ && this)
                                                {
                                                   addr359:
                                                }
                                             }
                                          }
                                          else if(MouseEvent.MOUSE_UP !== _loc8_)
                                          {
                                             if(MouseEvent.MOUSE_MOVE === _loc8_)
                                             {
                                                §§goto(addr359);
                                                §§push(5);
                                             }
                                             else
                                             {
                                                §§goto(addr364);
                                                §§push(6);
                                             }
                                          }
                                          §§goto(addr364);
                                       }
                                       §§goto(addr318);
                                    }
                                    §§goto(addr331);
                                 }
                              }
                              §§goto(addr133);
                           }
                           §§goto(addr144);
                        }
                        else
                        {
                           §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                           if(_loc9_ || param1)
                           {
                              _loc2_ = §§pop();
                              if(_loc9_ || param1)
                              {
                                 §§push(Number(_loc7_.stageY));
                              }
                              §§goto(addr180);
                           }
                           _loc3_ = §§pop();
                           if(!_loc10_)
                           {
                              _loc4_ = _loc7_.touchPointID;
                           }
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr78);
               }
               §§goto(addr69);
            }
            addr72:
            return;
         }
         §§goto(addr78);
      }
      
      private function get §#?§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §-V§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!_loc6_)
         {
            if(param1 in this.§#Q§)
            {
               if(_loc5_)
               {
                  throw new Error("Another program with this name is already registered");
               }
               addr63:
               (_loc4_ = this.§]p§.createProgram()).upload(param2,param3);
               if(!_loc6_)
               {
                  this.§#Q§[param1] = _loc4_;
               }
            }
            else if(this.§]p§ != null)
            {
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function §7y§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§;?§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               do
               {
                  _loc2_.dispose();
                  do
                  {
                     delete this.§#Q§[param1];
                  }
                  while(_loc4_ && param1);
                  
               }
               while(!(_loc3_ || this));
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function §;?§(param1:String) : Program3D
      {
         return this.§#Q§[param1] as Program3D;
      }
      
      public function §7g§(param1:String) : Boolean
      {
         return param1 in this.§#Q§;
      }
      
      public function get §3!'§() : Boolean
      {
         return this.§ !C§;
      }
      
      public function get §;B§() : §3!E§
      {
         return this.§>M§;
      }
      
      public function get §5U§() : Boolean
      {
         return this.§'!+§;
      }
      
      public function set §5U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§'!+§ = param1;
            while(this.§]p§)
            {
               if(_loc2_)
               {
                  this.§7s§.§5U§ = param1;
               }
               if(_loc2_ || _loc2_)
               {
                  addr55:
                  break;
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§0t§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§0t§ = param1;
            while(this.§]p§)
            {
               if(_loc3_)
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  this.§]p§.enableErrorChecking = param1;
               }
               break;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function get §5=§() : int
      {
         return this.§`_§;
      }
      
      public function set §5=§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§`_§ = param1;
            do
            {
               this.§'^§();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function get §"C§() : Rectangle
      {
         return this.§9h§.clone();
      }
      
      public function set §"C§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§9h§ = param1.clone();
            do
            {
               this.§'^§();
            }
            while(_loc2_);
            
         }
      }
      
      public function get §=2§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!_loc2_)
         {
            if(this.§>u§ == null)
            {
               if(_loc3_ || _loc2_)
               {
                  addr43:
                  this.§>u§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(_loc3_)
               {
                  _loc1_.hideBuiltInItems();
                  loop0:
                  while(true)
                  {
                     addr78:
                     while(true)
                     {
                        this.§>u§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
                  addr86:
               }
               while(true)
               {
                  this.§]f§();
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc2_)
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
            return this.§>u§;
         }
         §§goto(addr43);
      }
      
      public function get stage() : §^V§.Stage
      {
         return this.§8!G§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §4"§() : flash.display.Stage
      {
         return this.§'G§;
      }
      
      public function get §,!A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§+H§);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
   }
}
