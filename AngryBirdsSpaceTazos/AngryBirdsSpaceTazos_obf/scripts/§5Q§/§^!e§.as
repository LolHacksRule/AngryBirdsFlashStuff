package §5Q§
{
   import §7!8§.DisplayObject;
   import §7!8§.Stage;
   import §>!7§.§0![§;
   import §`!#§.Texture;
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
   import starling.events.§#<§;
   import starling.events.§0!]§;
   import starling.events.§@M§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §^!e§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4!D§:Rectangle;
      
      private static var §!A§:Boolean = true;
      
      private static var §6>§:Boolean;
      
      private static var §#]§:§^!e§;
      
      private static var §<p§:Boolean;
      
      private static var §5!4§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            VERSION = "1.0";
            do
            {
               §!A§ = true;
            }
            while(_loc1_);
            
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §#[§:§7!8§.Stage;
      
      private var §=!o§:Class;
      
      private var §'!o§:§7!8§.DisplayObject;
      
      private var §8M§:§0![§;
      
      private var §8[§:Boolean;
      
      private var §9! §:Boolean;
      
      private var §-k§:§%!t§;
      
      private var §-!S§:§#<§;
      
      private var §^i§:int;
      
      private var §=A§:Boolean;
      
      private var §3!#§:Boolean;
      
      private var §%"E§:Number;
      
      private var §5"D§:Boolean;
      
      private var §8!G§:flash.display.Stage;
      
      private var §6X§:Sprite;
      
      private var §1X§:Context3D;
      
      private var §[!i§:Dictionary;
      
      private var §1z§:int;
      
      private var §do §:Boolean;
      
      private var §"!<§:Number;
      
      private var §58§:Number;
      
      private var §2"0§:Number;
      
      private var §37§:Number;
      
      private var §6h§:Number;
      
      private var §6"A§:Number;
      
      private var § !5§:Function;
      
      private var §4"%§:uint;
      
      private var §>]§:String;
      
      private var §0"4§:Bitmap;
      
      private var §0g§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"!N§:Boolean = false;
      
      public function §^!e§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(!_loc9_)
         {
            super();
            if(_loc10_ || param2)
            {
               if(param2 == null)
               {
                  if(!(_loc9_ && param2))
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  addr302:
                  loop19:
                  while(true)
                  {
                     this.§37§ = this.§58§;
                     addr296:
                     while(true)
                     {
                        this.§6h§ = param2.stageWidth;
                        addr288:
                        addr307:
                        while(_loc10_)
                        {
                        }
                        while(true)
                        {
                           this.§2"0§ = this.§"!<§;
                           continue loop19;
                        }
                     }
                  }
                  addr302:
               }
               else
               {
                  while(true)
                  {
                     if(param1 == null)
                     {
                        if(!_loc9_)
                        {
                           if(!_loc9_)
                           {
                              throw new ArgumentError("Root class must not be null");
                           }
                           continue;
                        }
                     }
                     else
                     {
                        if(param3 == null)
                        {
                           if(_loc10_)
                           {
                              param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                              addr80:
                              if(param4 == null)
                              {
                                 if(_loc10_ || param2)
                                 {
                                    param4 = param2.stage3Ds[0];
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    this.§"!h§();
                                    loop16:
                                    while(true)
                                    {
                                       this.§=!o§ = param1;
                                       loop17:
                                       while(true)
                                       {
                                          §4!D§ = param3;
                                          while(_loc10_)
                                          {
                                             while(true)
                                             {
                                                this.mStage3D = param4;
                                                loop2:
                                                while(true)
                                                {
                                                   this.§#[§ = new §7!8§.Stage(param3.width,param3.height,param2.color);
                                                   loop3:
                                                   while(true)
                                                   {
                                                      if(!(_loc10_ || param1))
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         continue loop16;
                                                      }
                                                      this.§8!G§ = param2;
                                                      loop4:
                                                      while(true)
                                                      {
                                                         this.§-!S§ = new §#<§(this.§#[§);
                                                         loop5:
                                                         while(true)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               continue loop15;
                                                            }
                                                            this.§8M§ = new §0![§();
                                                            loop6:
                                                            while(!(_loc9_ && this))
                                                            {
                                                               this.§^i§ = 0;
                                                               continue loop5;
                                                               addr146:
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               this.§[!i§ = new Dictionary();
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  addr115:
                                                                  if(!(_loc10_ || param1))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     continue loop17;
                                                                  }
                                                                  if(_loc10_ || param3)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§%"E§ = getTimer() / 1000;
                                                                           addr144:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§goto(addr146);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(!_loc9_)
                                                                                 {
                                                                                    this.§3!#§ = false;
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr288);
                                                                                 addr177:
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        continue loop17;
                                                                        addr137:
                                                                     }
                                                                     var _loc7_:int = 0;
                                                                     var _loc8_:* = this.§%!7§;
                                                                     addr331:
                                                                     for each(_loc6_ in _loc8_)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           param2.addEventListener(_loc6_,this.§&"9§,false,0,true);
                                                                        }
                                                                        §§goto(addr331);
                                                                     }
                                                                     if(_loc10_)
                                                                     {
                                                                        param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=k§,false,0,true);
                                                                        param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=k§,false,0,true);
                                                                        this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§2"'§,false,1,true);
                                                                        this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§4!5§,false,1,true);
                                                                        this.mStage3D.visible = false;
                                                                        addr452:
                                                                        addr421:
                                                                        addr409:
                                                                        if(!_loc9_)
                                                                        {
                                                                           this.§=!g§(true);
                                                                           addr382:
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              this.§4"%§ = param2.color;
                                                                              addr370:
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 this.§>]§ = param5;
                                                                                 if(!(_loc9_ && this))
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc9_ && this)
                                                                                          {
                                                                                             §§goto(addr452);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                    }
                                                                                    §§goto(addr382);
                                                                                 }
                                                                                 §§goto(addr370);
                                                                                 addr377:
                                                                              }
                                                                              §§goto(addr409);
                                                                           }
                                                                           §§goto(addr452);
                                                                        }
                                                                        addr432:
                                                                        §§goto(addr432);
                                                                     }
                                                                     §§goto(addr377);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §<S§ = true;
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr296);
                                                         }
                                                         continue loop15;
                                                      }
                                                   }
                                                   continue loop16;
                                                }
                                             }
                                          }
                                          §§goto(addr302);
                                       }
                                    }
                                 }
                                 addr276:
                              }
                              this.§"!<§ = param3.width;
                              if(!_loc9_)
                              {
                                 this.§58§ = param3.height;
                                 §§goto(addr307);
                                 addr102:
                              }
                              break;
                           }
                           §§goto(addr262);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr102);
                  }
               }
               while(true)
               {
                  this.§6"A§ = param2.stageHeight;
                  §§goto(addr282);
               }
            }
            §§goto(addr276);
         }
         §§goto(addr302);
      }
      
      public static function get §use§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§`?§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr40:
                     §§push(§`?§.§do §);
                     if(_loc1_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr59:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr59);
            }
         }
         §§goto(addr40);
      }
      
      public static function §>c§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §^!e§))
         {
            §§push(§#]§);
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
                           while(true)
                           {
                              §§push(§#]§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§0g§);
                                 addr117:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc2_)
                                    {
                                       if(!(_loc1_ || _loc2_))
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       while(!_loc2_)
                                       {
                                          if(§§pop())
                                          {
                                          }
                                          return §§pop();
                                       }
                                       continue loop2;
                                       addr128:
                                    }
                                    loop8:
                                    while(_loc1_ || _loc1_)
                                    {
                                       §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§#]§);
                                          while(true)
                                          {
                                             §§push(§§pop().§1X§ == null);
                                             if(!(_loc1_ || §^!e§))
                                             {
                                                continue loop9;
                                             }
                                             if(_loc2_)
                                             {
                                                continue loop8;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   continue loop9;
                                                }
                                             }
                                             §§goto(addr128);
                                             addr113:
                                             §§push(§#]§);
                                             if(!(_loc2_ && §^!e§))
                                             {
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     §§goto(addr65);
                  }
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§push(§§pop().§1X§.driverInfo == "Disposed");
               if(!(_loc2_ && §^!e§))
               {
                  if(_loc1_)
                  {
                     addr61:
                     §§push(!§§pop());
                     if(_loc1_)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr117);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr94);
               }
               §§goto(addr61);
            }
         }
         §§goto(addr149);
      }
      
      private static function §8u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §6>§ = true;
         }
      }
      
      public static function get §;b§() : Rectangle
      {
         return §4!D§.clone();
      }
      
      public static function set §;b§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4!D§ = param1.clone();
            do
            {
               §8u§();
            }
            while(_loc3_);
            
         }
      }
      
      public static function set §4""§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §!A§ = param1;
         }
      }
      
      public static function get §4""§() : Boolean
      {
         return §!A§;
      }
      
      public static function get §`?§() : §^!e§
      {
         return §#]§;
      }
      
      public static function get §1!P§() : §0![§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §^!e§))
         {
            §§push(§#]§);
            if(!(_loc1_ && §^!e§))
            {
               return !!§§pop() ? §#]§.§1!P§ : null;
            }
         }
         §§goto(addr54);
      }
      
      public static function get §1!o§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §1!o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §^!e§)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §<S§() : Boolean
      {
         return §<p§;
      }
      
      public static function set §<S§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§#]§ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  throw new IllegalOperationError("Setting must be changed before Starling instance is created");
               }
               addr65:
               while(true)
               {
               }
               addr65:
            }
            while(true)
            {
               §<p§ = param1;
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr65);
            }
            return;
         }
         §§goto(addr65);
      }
      
      public static function §<'§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(§`?§)
            {
               if(!_loc4_)
               {
                  return Texture.§"A§(§`?§.§1X§,param1,param2,param3);
                  addr33:
               }
            }
            return null;
         }
         §§goto(addr33);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!(_loc3_ && §^!e§))
         {
            §§push(§#]§);
            if(!_loc3_)
            {
               if(§§pop().§1X§)
               {
                  if(!_loc3_)
                  {
                     §§push(§#]§);
                     if(_loc4_ || _loc3_)
                     {
                        §§pop().§1X§.drawToBitmapData(param1);
                        if(!_loc4_)
                        {
                           addr73:
                           _loc2_ = §#]§.§-k§.canvas;
                           addr72:
                           if(_loc4_ || §^!e§)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr57:
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr57);
               }
               else
               {
                  §§push(§#]§);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop().§-k§);
                     if(_loc4_)
                     {
                        if(§§pop().canvas)
                        {
                           §§goto(addr72);
                        }
                        addr105:
                        return;
                     }
                     §§goto(addr73);
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function get §?"=§() : §7!8§.DisplayObject
      {
         return this.§'!o§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4"%§ = param1;
         }
      }
      
      public function get §8!0§() : Number
      {
         return this.§"!<§;
      }
      
      public function get §7^§() : Number
      {
         return this.§58§;
      }
      
      public function §6!m§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            addr90:
            while(true)
            {
               §§push(§§pop());
               addr91:
               while(true)
               {
                  §§pop().§§slot[1] = §§pop();
                  addr92:
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        addr85:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           loop6:
                           while(true)
                           {
                              addr70:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().§§slot[3] = false;
                                    addr74:
                                    while(!(_loc3_ && _loc1_))
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop8;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            if(_loc3_ && _loc2_)
            {
               continue;
            }
            §§push(null);
            if(!(_loc3_ && this))
            {
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc1_))
                  {
                     §§pop().§§slot[4] = §§pop();
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(false)
                           {
                              §§goto(addr70);
                           }
                           try
                           {
                              §§push(§§newactivation());
                              if(_loc4_ || _loc1_)
                              {
                                 §§pop().§§slot[1] = "flash.display3D.Context3DProfile";
                                 if(_loc4_ || _loc1_)
                                 {
                                    addr228:
                                    var requestContext3D:Function = this.mStage3D.requestContext3D;
                                 }
                                 addr220:
                                 var moreThanOne:Boolean = requestContext3D.length > 1;
                                 addr233:
                                 addr226:
                                 if(moreThanOne)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr206:
                                       var profile:String = "baselineConstrained";
                                    }
                                    addr208:
                                    if(_loc4_)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          addr181:
                                          addr183:
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             §§goto(addr228);
                                          }
                                          addr189:
                                          §§pop().§§slot[2](this.§>]§,profile);
                                          return;
                                          addr234:
                                          addr193:
                                          addr187:
                                          addr186:
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§push(§§newactivation());
                                 if(_loc4_)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             addr143:
                                             §§push(§§pop().§§slot[2]);
                                             if(_loc4_ || _loc2_)
                                             {
                                                §§push(global);
                                                if(_loc4_ || _loc3_)
                                                {
                                                   §§push(this.§>]§);
                                                   if(_loc4_)
                                                   {
                                                      §§pop()(§§pop());
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr181);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr208);
                                                      }
                                                      §§goto(addr193);
                                                   }
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr233);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr183);
                              }
                              §§goto(addr143);
                           }
                           catch(e:Error)
                           {
                              §4"5§("Context3D error: " + e.message);
                              throw e;
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr91);
               }
               §§goto(addr90);
            }
            §§goto(addr85);
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc6_ || _loc2_)
         {
            this.§"!N§ = true;
            loop0:
            while(true)
            {
               this.§8!G§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§=k§,false);
               loop1:
               while(true)
               {
                  this.§8!G§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§=k§,false);
                  loop2:
                  while(true)
                  {
                     addr53:
                     loop3:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§2"'§,false);
                        while(!_loc5_)
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§4!5§,false);
                           if(!_loc5_)
                           {
                              if(!_loc6_)
                              {
                                 break loop3;
                              }
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr53);
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§%!7§;
         loop6:
         while(true)
         {
            §§push(§§hasnext(_loc4_,_loc3_));
            if(!_loc5_)
            {
               if(§§pop())
               {
                  _loc1_ = §§nextvalue(_loc3_,_loc4_);
                  if(!(_loc5_ && this))
                  {
                     this.§8!G§.removeEventListener(_loc1_,this.§&"9§,false);
                  }
                  continue;
               }
               if(_loc6_)
               {
                  if(_loc6_ || _loc2_)
                  {
                     if(_loc6_ || _loc1_)
                     {
                        _loc3_ = 0;
                        if(!_loc5_)
                        {
                           addr142:
                           _loc4_ = this.§[!i§;
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              break loop6;
                           }
                           addr167:
                        }
                        if(_loc6_ || _loc2_)
                        {
                           if(this.§1X§)
                           {
                              while(true)
                              {
                                 this.§1X§.dispose();
                                 addr314:
                                 while(true)
                                 {
                                 }
                              }
                              addr311:
                           }
                           loop9:
                           while(true)
                           {
                              §§push(this.§-!S§);
                              if(!(_loc5_ && this))
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§-!S§);
                                       addr306:
                                       while(true)
                                       {
                                          §§pop().dispose();
                                          addr307:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr253:
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(Boolean(this.§0"4§.bitmapData));
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   loop20:
                                                   while(§§pop())
                                                   {
                                                      do
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            this.§0"4§.bitmapData.dispose();
                                                            do
                                                            {
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr307);
                                                               }
                                                               addr246:
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ && _loc1_))
                                                                  {
                                                                     §§goto(addr253);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §#]§ = null;
                                                                        break loop19;
                                                                     }
                                                                     addr267:
                                                                  }
                                                               }
                                                            }
                                                            while(this.§0"4§.bitmapData = null, !_loc6_);
                                                            
                                                            continue;
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            addr239:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§0"4§));
                                                               addr243:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     §§goto(addr246);
                                                                  }
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                      }
                                                      while(!_loc6_);
                                                      
                                                      addr192:
                                                      if(!(_loc5_ && this))
                                                      {
                                                         addr199:
                                                         break;
                                                      }
                                                      addr282:
                                                      loop12:
                                                      while(true)
                                                      {
                                                         addr263:
                                                         while(true)
                                                         {
                                                            if(§#]§ == this)
                                                            {
                                                               §§goto(addr267);
                                                            }
                                                            §§goto(addr239);
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                                §§goto(addr243);
                                             }
                                             §§goto(addr245);
                                          }
                                          addr262:
                                       }
                                       §§goto(addr311);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this.§-k§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             addr281:
                                             this.§-k§.dispose();
                                          }
                                          §§goto(addr282);
                                       }
                                       §§goto(addr263);
                                    }
                                    §§goto(addr281);
                                    §§goto(addr307);
                                 }
                              }
                              §§goto(addr306);
                           }
                        }
                        §§goto(addr262);
                     }
                     §§goto(addr199);
                  }
               }
               §§goto(addr142);
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
            §§goto(addr142);
         }
      }
      
      private function §4U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1X§ = this.mStage3D.context3D;
            loop0:
            while(true)
            {
               this.§[!i§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§1X§)
                  {
                     this.§do § = true;
                     loop2:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           addr23:
                           while(true)
                           {
                              §8u§();
                              if(_loc1_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           addr28:
                           if(_loc1_ || this)
                           {
                              addr35:
                              if(_loc2_ && this)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    this.§1X§.enableErrorChecking = this.§3!#§;
                                    loop4:
                                    while(true)
                                    {
                                       if(this.§1X§.driverInfo.indexOf("Software") < 0)
                                       {
                                          while(true)
                                          {
                                             §§goto(addr23);
                                          }
                                          continue loop3;
                                          addr43:
                                       }
                                       if(_loc1_)
                                       {
                                          this.§do § = true;
                                          addr75:
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop4;
                                             §§goto(addr28);
                                          }
                                          continue loop1;
                                          addr75:
                                       }
                                       §§goto(addr75);
                                       §§goto(addr75);
                                    }
                                 }
                                 addr89:
                              }
                              return;
                           }
                           §§goto(addr75);
                        }
                     }
                     continue loop0;
                  }
                  §§goto(addr89);
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §`"3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§#[§);
            loop0:
            while(true)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§'!o§);
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
                                 this.§'!o§ = new this.§=!o§();
                                 addr111:
                                 while(true)
                                 {
                                 }
                              }
                              addr97:
                           }
                           while(true)
                           {
                              §§push(this.§'!o§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(null);
                              if(!(_loc1_ && _loc2_))
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(!_loc1_)
                                    {
                                       throw new Error("Invalid root class: " + this.§=!o§);
                                    }
                                    while(true)
                                    {
                                       if(!_loc1_)
                                       {
                                          if(_loc1_ && _loc1_)
                                          {
                                             §§goto(addr117);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr97);
                                       }
                                       addr29:
                                       §§pop().addChild(this.§'!o§);
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             return;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr111);
                                 }
                                 while(true)
                                 {
                                    §§push(this.§#[§);
                                    if(_loc1_)
                                    {
                                       break;
                                    }
                                    §§goto(addr29);
                                 }
                                 continue loop0;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               addr117:
               return;
            }
         }
         §§goto(addr111);
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         try
         {
            this.§1X§.configureBackBuffer(§4!D§.width,§4!D§.height,this.§^i§,false);
            if(_loc2_ || _loc1_)
            {
               §6>§ = false;
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
            §§push(§>c§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(§6>§);
                     loop2:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(!this.§1X§)
                              {
                                 if(!this.§0"4§)
                                 {
                                    break loop2;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc4_ && this)
                                    {
                                       break loop3;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §6>§ = false;
                                    loop5:
                                    while(!_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          return;
                                       }
                                       addr130:
                                       this.setCanvasSize(§4!D§.width,§4!D§.height);
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                if(false)
                                                {
                                                   addr53:
                                                   break loop2;
                                                }
                                                break loop2;
                                             }
                                             addr110:
                                             while(true)
                                             {
                                                this.configureBackBuffer();
                                                break loop5;
                                             }
                                          }
                                          §§goto(addr91);
                                       }
                                       addr83:
                                       if(!_loc3_)
                                       {
                                          addr76:
                                          this.setCanvasSize(§4!D§.width,§4!D§.height);
                                          §§goto(addr83);
                                       }
                                       §§goto(addr53);
                                    }
                                    while(!(_loc3_ || this))
                                    {
                                       break loop4;
                                    }
                                    §§push(§6>§);
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop())
                                    {
                                       addr91:
                                       return;
                                    }
                                    §§goto(addr76);
                                 }
                                 while(!_loc4_)
                                 {
                                    while(true)
                                    {
                                       this.mStage3D.y = §4!D§.y;
                                       §§goto(addr110);
                                    }
                                    §§goto(addr96);
                                 }
                                 continue loop1;
                              }
                              this.mStage3D.x = §4!D§.x;
                              §§goto(addr124);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§push(getTimer() / 1000);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() - this.§%"E§);
                        if(_loc3_ || _loc2_)
                        {
                           addr163:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_)
                        {
                           this.§%"E§ = _loc1_;
                           addr363:
                           this.§#[§.advanceTime(_loc2_);
                           this.§8M§.advanceTime(_loc2_);
                           this.§-!S§.advanceTime(_loc2_);
                           addr336:
                           addr369:
                           addr349:
                           if(_loc3_ || _loc3_)
                           {
                              addr316:
                              this.§-k§.§%>§(this.§#[§.stageWidth,this.§#[§.stageHeight);
                              addr323:
                              if(_loc3_ || this)
                              {
                                 addr306:
                                 this.§-k§.clear(this.§1X§,this.§4"%§,1);
                                 addr295:
                                 addr312:
                                 §§push(this.§-k§);
                                 if(!_loc4_)
                                 {
                                    §§pop().§4!,§(this.§1X§,this.§1z§);
                                    addr302:
                                    §§push(this.§#[§);
                                    if(_loc3_)
                                    {
                                       §§pop().render(this.§-k§,1);
                                       addr289:
                                       if(_loc3_)
                                       {
                                          addr278:
                                          this.§-k§.§2!Y§();
                                          addr279:
                                          if(this.§ !5§ != null)
                                          {
                                             addr254:
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§ !5§();
                                                   addr265:
                                                   if(!(_loc4_ && this))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         this.§ !5§ = null;
                                                         addr241:
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            addr229:
                                                            §§push(this.§-k§);
                                                            if(!_loc4_)
                                                            {
                                                               §§pop().finishRendering(this.§1X§);
                                                               addr234:
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(this.§-k§);
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           §§pop().nextFrame();
                                                                           if(_loc3_ || _loc2_)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    if(!(_loc3_ || _loc2_))
                                                                                    {
                                                                                       §§goto(addr323);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr279);
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§goto(addr316);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                                  §§goto(addr229);
                                                               }
                                                               §§goto(addr241);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr302);
                                    }
                                    §§goto(addr363);
                                 }
                                 §§goto(addr306);
                                 addr330:
                              }
                              §§goto(addr349);
                           }
                           addr365:
                           §§goto(addr365);
                        }
                        §§goto(addr330);
                     }
                     §§goto(addr163);
                  }
               }
               §§goto(addr130);
            }
         }
         §§goto(addr126);
      }
      
      public function set §,!h§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ !5§ = param1;
         }
      }
      
      private function §=!B§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            this.§6X§.x = §4!D§.x;
            if(!_loc5_)
            {
               addr28:
               this.§6X§.y = §4!D§.y;
            }
            var _loc1_:int = this.§6X§.numChildren;
            var _loc2_:flash.display.DisplayObject = this.§6X§.parent;
            if(!(_loc5_ && _loc3_))
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
                                    addr245:
                                    while(true)
                                    {
                                       §§push(_loc2_ == null);
                                       addr228:
                                       while(!_loc5_)
                                       {
                                       }
                                       continue loop3;
                                    }
                                 }
                                 addr244:
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
                                    if(_loc5_ && _loc1_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == §§pop());
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(!_loc5_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop2;
                                                }
                                                §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§push(Boolean(_loc2_));
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§8!G§.removeChild(this.§6X§);
                                                                        addr186:
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     addr181:
                                                                  }
                                                               }
                                                               addr179:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr244);
                                                            }
                                                         }
                                                         §§goto(addr245);
                                                         addr177:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§8!G§.addChild(this.§6X§);
                                                            addr237:
                                                            while(true)
                                                            {
                                                            }
                                                         }
                                                         addr232:
                                                      }
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§push(this.§-k§);
                                                         addr122:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop16:
                                                            while(!(_loc5_ && this))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  continue loop10;
                                                               }
                                                               if(_loc5_ && _loc2_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr159:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        §§goto(addr181);
                                                                     }
                                                                     addr58:
                                                                     §§push(Boolean(§§pop().canvas));
                                                                     continue loop12;
                                                                     if(_loc5_ && _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        while(§§pop())
                                                                        {
                                                                           if(!(_loc5_ && _loc1_))
                                                                           {
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(this.§-k§);
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().setCanvasSize(this.§2"0§,this.§37§,§4!D§.width / this.§#[§.stageWidth,§4!D§.height / this.§#[§.stageHeight);
                                                                                          addr115:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(this.§-k§);
                                                                                                }
                                                                                                continue loop14;
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr186);
                                                                                          }
                                                                                       }
                                                                                       addr98:
                                                                                    }
                                                                                    _loc3_ = §§pop().canvas;
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       if(this.§0"4§.bitmapData != _loc3_)
                                                                                       {
                                                                                          addr305:
                                                                                          this.§0"4§.bitmapData = _loc3_;
                                                                                       }
                                                                                       addr274:
                                                                                       if(this.§8!G§.getChildIndex(this.§6X§) > 0)
                                                                                       {
                                                                                          addr282:
                                                                                          this.§8!G§.removeChild(this.§6X§);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.§8!G§.addChildAt(this.§6X§,0);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr272:
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr274);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr305);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr245);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr159);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                           §§goto(addr115);
                                                                        }
                                                                        return;
                                                                        addr71:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr177);
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr71);
                                                               }
                                                               §§goto(addr186);
                                                            }
                                                            continue loop11;
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr237);
                                                }
                                             }
                                             §§goto(addr228);
                                          }
                                          §§goto(addr179);
                                       }
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr173);
         }
         §§goto(addr28);
      }
      
      private function §4"5§(param1:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(_loc4_ || param1)
         {
            _loc3_.align = TextFormatAlign.CENTER;
            loop0:
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
               addr158:
               while(true)
               {
                  _loc2_.wordWrap = true;
               }
               while(true)
               {
                  if(_loc4_ || this)
                  {
                     _loc2_.text = param1;
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr158);
            }
         }
         §§goto(addr143);
      }
      
      public function §"!h§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §#]§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§8[§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§8[§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §=!g§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9! § = param1;
         }
      }
      
      private function §"0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0g§ = true;
         }
         while(this.§0"4§ == null)
         {
            if(!_loc2_)
            {
               do
               {
                  this.§[""§.addChild(this.§0"4§);
               }
               while(_loc1_ && this);
               
            }
            else
            {
               addr81:
            }
            if(!(_loc2_ || _loc1_))
            {
               continue;
            }
            this.§0"4§ = new Bitmap();
            §§goto(addr81);
         }
      }
      
      private function §4!5§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"0§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function §2"'§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§"!N§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     return;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(Boolean(this.§1X§));
                     loop1:
                     while(true)
                     {
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 this.§"!h§();
                                 while(true)
                                 {
                                    if(!(_loc5_ && param1))
                                    {
                                       this.§4U§();
                                       loop5:
                                       for(; _loc4_ || _loc3_; if(_loc5_ && _loc3_)
                                       {
                                          continue;
                                       },§§goto(addr118))
                                       {
                                          this.§`"3§();
                                          while(true)
                                          {
                                             §§push(Boolean(this.§1X§));
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop11:
                                                            for(; !_loc5_; while(_loc4_ || param1)
                                                            {
                                                               §§goto(addr104);
                                                            })
                                                            {
                                                               this.mStage3DEnabled = false;
                                                               while(true)
                                                               {
                                                                  this.§1X§ = null;
                                                                  loop13:
                                                                  while(!(_loc5_ && _loc2_))
                                                                  {
                                                                     addr254:
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        this.§"0§();
                                                                        continue loop11;
                                                                     }
                                                                     addr369:
                                                                     addr369:
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.stop();
                                                                           break loop11;
                                                                           addr362:
                                                                        }
                                                                        §§push(this.§do §);
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        addr319:
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        addr314:
                                                                        addr366:
                                                                        while(_loc4_)
                                                                        {
                                                                           §§pop();
                                                                           continue loop9;
                                                                           §§goto(addr319);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           addr367:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              break loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop0;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        if(!(_loc4_ || param1))
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.§-k§ = new §%!t§();
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              this.§-!S§.§-&§ = this.§=A§;
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || _loc3_)
                                                                                 {
                                                                                    addr104:
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 addr142:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    addr359:
                                                                                    this.§4"5§("Fatal error: The application lost the device context!");
                                                                                    §§goto(addr362);
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr387);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!this.§1X§)
                                                            {
                                                               this.§-k§ = new §6!A§();
                                                               §§goto(addr202);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                      addr293:
                                                   }
                                                   §§goto(addr314);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop1;
                                                }
                                                §§goto(addr369);
                                             }
                                          }
                                       }
                                       continue;
                                    }
                                    addr392:
                                    while(true)
                                    {
                                    }
                                    §§goto(addr384);
                                 }
                              }
                           }
                           §§goto(addr359);
                        }
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§5!4§)).§5!4§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || _loc3_)
                  {
                     _loc2_.§5!4§ = _loc3_;
                  }
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§1z§ = §5!4§;
                     addr60:
                  }
               }
               §§goto(addr392);
            }
            §§goto(addr369);
         }
         §§goto(addr60);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc3_)
         {
            this.§"!h§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.§%"E§);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§8[§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        §§pop();
                        addr126:
                        addr99:
                        while(true)
                        {
                           §§push(_loc3_ > 1);
                           if(_loc4_ || _loc2_)
                           {
                              break;
                           }
                           continue loop6;
                        }
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                     }
                     addr125:
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
                              addr80:
                              if(_loc4_ || param1)
                              {
                                 addr51:
                                 return;
                                 addr87:
                              }
                           }
                        }
                        §§goto(addr126);
                        addr103:
                     }
                     while(true)
                     {
                        if(this.§6X§)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              if(_loc4_)
                              {
                                 this.§=!B§();
                              }
                              else
                              {
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr80);
                        }
                        break;
                        §§goto(addr107);
                     }
                     §§goto(addr51);
                     §§goto(addr99);
                  }
                  continue;
               }
               §§goto(addr125);
            }
         }
         §§goto(addr87);
      }
      
      private function §=k§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§"!h§();
         }
         do
         {
            this.§#[§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc3_);
         
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(param1);
         if(_loc5_)
         {
            §§push(§§pop() / this.§"!<§);
            if(_loc5_ || param1)
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param2);
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() / this.§58§);
               if(_loc5_)
               {
                  addr44:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               if(_loc5_)
               {
                  if(!§4""§)
                  {
                     if(!(_loc6_ && param1))
                     {
                        §§push(this.§#[§);
                        loop0:
                        while(true)
                        {
                           §§push(this.§"!<§);
                           if(_loc5_ || param1)
                           {
                              §§push(_loc3_);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr125:
                                 if(_loc6_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§§pop() * §§pop());
                                 if(_loc5_ || this)
                                 {
                                    addr140:
                                    if(!(_loc6_ && param2))
                                    {
                                       addr148:
                                       §§push(_loc3_);
                                       if(_loc5_)
                                       {
                                          addr151:
                                          §§push(§§pop() / §§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             §§pop().stageHeight = §§pop();
                                             loop15:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   this.§2"0§ = param1;
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            this.§37§ = param2;
                                                            while(_loc5_)
                                                            {
                                                               §§push(this.§#[§);
                                                               if(_loc5_ || param2)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§pop().dispatchEvent(new §0!]§(flash.events.Event.RESIZE,param1,param2));
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           break loop16;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              §§push(this.§#[§);
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§58§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§goto(addr125);
                                                                                       }
                                                                                       §§goto(addr148);
                                                                                    }
                                                                                    loop7:
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       §§pop().stageHeight = §§pop();
                                                                                       while(!_loc6_)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§#[§);
                                                                                          addr181:
                                                                                          while(true)
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr222:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          addr223:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().stageWidth = §§pop();
                                                                                             §§goto(addr224);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr221:
                                                                                 }
                                                                                 §§goto(addr140);
                                                                              }
                                                                              continue;
                                                                              addr96:
                                                                           }
                                                                           §§goto(addr186);
                                                                        }
                                                                     }
                                                                     §§goto(addr181);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr169);
                                                                        §§push(this.§"!<§);
                                                                     }
                                                                     addr165:
                                                                  }
                                                                  §§goto(addr169);
                                                               }
                                                               §§goto(addr96);
                                                            }
                                                            continue loop10;
                                                         }
                                                         return;
                                                         addr92:
                                                      }
                                                      continue loop15;
                                                   }
                                                   continue loop15;
                                                }
                                             }
                                          }
                                          §§goto(addr223);
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr169);
                                 }
                                 §§goto(addr151);
                              }
                           }
                           §§goto(addr221);
                        }
                     }
                     §§goto(addr224);
                  }
                  else
                  {
                     §§push(this.§#[§);
                  }
                  §§goto(addr165);
               }
               §§goto(addr92);
            }
            §§goto(addr44);
         }
         §§goto(addr29);
      }
      
      public function §5'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.setCanvasSize(this.§"!<§,this.§58§);
         }
      }
      
      private function §&"9§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!(_loc9_ && _loc2_))
         {
            §§push(this.§8[§);
            if(_loc10_ || param1)
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  addr51:
                  if(!§§pop())
                  {
                     if(_loc10_ || this)
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(this.§9! §);
                           if(!_loc9_)
                           {
                              addr67:
                              §§push(!§§pop());
                              if(_loc10_)
                              {
                                 addr70:
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       return;
                                    }
                                    addr85:
                                    §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                    if(!_loc9_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          addr169:
                                          _loc3_ = Number(_loc6_.stageY);
                                          loop33:
                                          while(true)
                                          {
                                             _loc4_ = 0;
                                             loop32:
                                             while(true)
                                             {
                                                loop31:
                                                while(true)
                                                {
                                                   if(param1.type != MouseEvent.MOUSE_DOWN)
                                                   {
                                                      if(param1.type == MouseEvent.MOUSE_UP)
                                                      {
                                                         if(_loc10_ || _loc3_)
                                                         {
                                                            if(_loc10_ || param1)
                                                            {
                                                               addr126:
                                                               if(!(_loc10_ || _loc3_))
                                                               {
                                                                  addr151:
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop32;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§5"D§ = false;
                                                                  addr136:
                                                                  addr171:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && _loc2_))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop31;
                                                                     }
                                                                     continue loop33;
                                                                  }
                                                                  addr171:
                                                                  var _loc8_:* = param1.type;
                                                                  if(_loc10_)
                                                                  {
                                                                     if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                                     {
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr486:
                                                                              loop34:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §§push(§@M§.§>!A§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_ || _loc2_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             addr673:
                                                                                             §§push(_loc2_);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() < §4!D§.left);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop20:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() >= §4!D§.right);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     loop2:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc10_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          break loop34;
                                                                                                                                       }
                                                                                                                                       continue loop21;
                                                                                                                                       loop16:
                                                                                                                                       while(!(_loc9_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(!(_loc9_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc10_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() - §4!D§.y);
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      addr545:
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr548:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            _loc3_ = §§pop();
                                                                                                                                                            do
                                                                                                                                                            {
                                                                                                                                                               this.§-!S§.§5!J§(_loc4_,_loc5_,_loc2_,_loc3_);
                                                                                                                                                            }
                                                                                                                                                            while(_loc9_);
                                                                                                                                                            
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            if(_loc10_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr594);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr595);
                                                                                                                                                            §§goto(addr557);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr567);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr598);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr548);
                                                                                                                                                }
                                                                                                                                                §§goto(addr559);
                                                                                                                                             }
                                                                                                                                             §§goto(addr545);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop22;
                                                                                                                                 }
                                                                                                                                 continue loop20;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                              addr662:
                                                                                                                           }
                                                                                                                           §§goto(addr647);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr659:
                                                                                                                  }
                                                                                                                  §§goto(addr662);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr691:
                                                                                                      }
                                                                                                      §§goto(addr659);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr691);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr594);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr279:
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§goto(addr282);
                                                                                          }
                                                                                          addr264:
                                                                                       }
                                                                                       §§goto(addr578);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr247:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc10_ || _loc2_)
                                                                                             {
                                                                                                §§goto(addr264);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr311:
                                                                                                §§push(§§pop());
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   if(_loc10_ || this)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr287);
                                                                                                      }
                                                                                                      §§goto(addr575);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr362:
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr673);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr595);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr292:
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§goto(addr673);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr345:
                                                                                                   if(!(_loc9_ && this))
                                                                                                   {
                                                                                                      addr353:
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr673);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   addr361:
                                                                                                   §§goto(addr362);
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                §§goto(addr595);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr578);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr277:
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§goto(addr279);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr353);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                 case 1:
                                                                                    §§goto(addr361);
                                                                                 case 2:
                                                                                    §§goto(addr345);
                                                                                 case 3:
                                                                                    §§goto(addr311);
                                                                                 case 4:
                                                                                    §§goto(addr292);
                                                                                 case 5:
                                                                                    §§push(§@M§.§[!c§);
                                                                                    §§push(§@M§.§2_§);
                                                                                    §§push(§@M§.§>!A§);
                                                                                    §§push(§@M§.§2_§);
                                                                                    §§push(this.§5"D§);
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             §§push(§@M§.§[!c§);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr247);
                                                                                             }
                                                                                             §§goto(addr277);
                                                                                          }
                                                                                          §§goto(addr673);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§@M§.§2"@§);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                §§goto(addr277);
                                                                                             }
                                                                                             addr282:
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   addr287:
                                                                                                }
                                                                                                §§goto(addr673);
                                                                                             }
                                                                                             addr594:
                                                                                             addr592:
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                loop12:
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == §@M§.§>!A§);
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§goto(addr592);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop13:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr559:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §4!D§.x);
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc2_ = §§pop();
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           addr567:
                                                                                                                        }
                                                                                                                        §§goto(addr567);
                                                                                                                     }
                                                                                                                     addr595:
                                                                                                                     continue loop0;
                                                                                                                     addr595:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop13;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr557:
                                                                                                               }
                                                                                                            }
                                                                                                            addr590:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr650:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break loop12;
                                                                                                            }
                                                                                                            addr650:
                                                                                                         }
                                                                                                      }
                                                                                                      addr634:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   addr598:
                                                                                                   while(_loc10_ || _loc2_)
                                                                                                   {
                                                                                                      §§push(§§pop() >= §4!D§.bottom);
                                                                                                      if(_loc10_ || _loc3_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop());
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§goto(addr615);
                                                                                                            }
                                                                                                         }
                                                                                                         addr615:
                                                                                                         addr649:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr634);
                                                                                                      }
                                                                                                      §§goto(addr650);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() < §4!D§.top);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr648:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr649);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr650);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                    §§goto(addr648);
                                                                                 default:
                                                                                    §§goto(addr673);
                                                                              }
                                                                              continue loop27;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr445:
                                                                           §§push(3);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr468:
                                                                           }
                                                                        }
                                                                        §§goto(addr486);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                                        {
                                                                           if(!(_loc9_ && this))
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc9_ && param1)
                                                                              {
                                                                                 addr433:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr473:
                                                                              §§push(5);
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                              }
                                                                           }
                                                                        }
                                                                        else if(TouchEvent.TOUCH_END === _loc8_)
                                                                        {
                                                                           if(!(_loc9_ && _loc2_))
                                                                           {
                                                                              §§push(2);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr433);
                                                                              }
                                                                              §§goto(addr486);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr445);
                                                                           }
                                                                        }
                                                                        else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                                        {
                                                                           if(!(_loc9_ && param1))
                                                                           {
                                                                              §§goto(addr445);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr460:
                                                                              §§push(4);
                                                                              if(_loc10_ || _loc2_)
                                                                              {
                                                                                 §§goto(addr468);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(MouseEvent.MOUSE_UP === _loc8_)
                                                                           {
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 §§goto(addr460);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr473);
                                                                              }
                                                                           }
                                                                           else if(MouseEvent.MOUSE_MOVE === _loc8_)
                                                                           {
                                                                              §§goto(addr473);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(6);
                                                                           }
                                                                           §§goto(addr473);
                                                                        }
                                                                        §§goto(addr473);
                                                                     }
                                                                  }
                                                                  §§goto(addr473);
                                                                  §§goto(addr126);
                                                               }
                                                            }
                                                            §§goto(addr171);
                                                            addr161:
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§goto(addr171);
                                                   }
                                                   §§goto(addr151);
                                                }
                                                this.§5"D§ = true;
                                                §§goto(addr161);
                                             }
                                          }
                                       }
                                       §§goto(addr133);
                                    }
                                    §§goto(addr169);
                                 }
                                 else
                                 {
                                    §§push(param1 is MouseEvent);
                                 }
                                 §§goto(addr85);
                              }
                              if(§§pop())
                              {
                                 §§goto(addr85);
                              }
                              else
                              {
                                 §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                 if(_loc10_ || _loc2_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc10_)
                                    {
                                       §§push(Number(_loc7_.stageY));
                                    }
                                    §§goto(addr171);
                                 }
                                 _loc3_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    _loc4_ = _loc7_.touchPointID;
                                 }
                              }
                              §§goto(addr171);
                           }
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr70);
               }
               §§goto(addr67);
            }
            §§goto(addr51);
         }
         §§goto(addr85);
      }
      
      private function get §%!7§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §<6§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!(_loc6_ && param3))
         {
            if(param1 in this.§[!i§)
            {
               if(_loc5_)
               {
                  §§goto(addr43);
               }
            }
            if(this.§1X§ != null)
            {
               (_loc4_ = this.§1X§.createProgram()).upload(param2,param3);
               if(_loc5_)
               {
                  this.§[!i§[param1] = _loc4_;
               }
            }
            return;
         }
         addr43:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §+!]§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§ §(param1);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc2_.dispose();
               }
               do
               {
                  delete this.§[!i§[param1];
               }
               while(!(_loc4_ || param1));
               
               addr52:
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function § §(param1:String) : Program3D
      {
         return this.§[!i§[param1] as Program3D;
      }
      
      public function §9!@§(param1:String) : Boolean
      {
         return param1 in this.§[!i§;
      }
      
      public function get §0!d§() : Boolean
      {
         return this.§8[§;
      }
      
      public function get §1!P§() : §0![§
      {
         return this.§8M§;
      }
      
      public function get §-&§() : Boolean
      {
         return this.§=A§;
      }
      
      public function set §-&§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=A§ = param1;
            while(this.§1X§)
            {
               if(_loc2_ || _loc3_)
               {
                  if(_loc2_)
                  {
                     this.§-!S§.§-&§ = param1;
                     addr60:
                     break;
                  }
                  continue;
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§3!#§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3!#§ = param1;
            while(this.§1X§)
            {
               if(!_loc2_)
               {
                  if(_loc3_)
                  {
                     this.§1X§.enableErrorChecking = param1;
                     addr56:
                     break;
                  }
                  continue;
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function get §+E§() : int
      {
         return this.§^i§;
      }
      
      public function set §+E§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§^i§ = param1;
         }
         do
         {
            §8u§();
         }
         while(_loc3_);
         
      }
      
      public function get §[""§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!_loc2_)
         {
            if(this.§6X§ == null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr33:
                  this.§6X§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(_loc3_)
               {
                  _loc1_.hideBuiltInItems();
               }
               loop0:
               while(true)
               {
                  addr66:
                  while(true)
                  {
                     this.§6X§.contextMenu = _loc1_;
                     continue loop0;
                  }
               }
            }
            return this.§6X§;
         }
         §§goto(addr33);
      }
      
      public function get stage() : §7!8§.Stage
      {
         return this.§#[§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §'C§() : flash.display.Stage
      {
         return this.§8!G§;
      }
      
      public function get §;!I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0g§);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
   }
}
