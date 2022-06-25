package §7!>§
{
   import §#!,§.DisplayObject;
   import §#!,§.Stage;
   import §6!J§.Texture;
   import §^n§.Juggler;
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
   import starling.events.§+!R§;
   import starling.events.§?'§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.TouchProcessor;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §6x§:Starling;
      
      private static var §19§:Boolean;
      
      private static var §8!O§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §[;§:§#!,§.Stage;
      
      private var §%"§:Class;
      
      private var §`9§:§#!,§.DisplayObject;
      
      private var §-!C§:Juggler;
      
      private var §1Q§:Boolean;
      
      private var §;F§:Boolean;
      
      private var §4T§:RenderSupport;
      
      private var §!e§:TouchProcessor;
      
      private var §0F§:int;
      
      private var §0n§:Boolean;
      
      private var §[!Z§:Boolean;
      
      private var §5G§:Number;
      
      private var §#^§:Rectangle;
      
      private var §="§:Boolean;
      
      private var §,2§:flash.display.Stage;
      
      private var §var§:Sprite;
      
      private var §6!,§:Context3D;
      
      private var §`6§:Dictionary;
      
      private var §"z§:int;
      
      private var §?!L§:Boolean;
      
      private var §?!^§:Number;
      
      private var §4!1§:Number;
      
      private var §9!>§:Number;
      
      private var §`r§:Number;
      
      private var §2A§:Number;
      
      private var §#'§:Number;
      
      private var § !9§:Function;
      
      private var §>!M§:uint;
      
      private var §5-§:String;
      
      private var §;!;§:Bitmap;
      
      private var §@m§:Boolean = false;
      
      private var §[S§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §"<§:Boolean = false;
      
      public function Starling(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(!_loc9_)
         {
            super();
            if(_loc10_ || param3)
            {
               if(param2 == null)
               {
                  if(!(_loc9_ && this))
                  {
                     §§goto(addr48);
                  }
                  else
                  {
                     loop18:
                     while(true)
                     {
                        §=!j§ = true;
                        loop6:
                        while(true)
                        {
                           this.§^b§();
                           loop7:
                           while(true)
                           {
                              this.§%"§ = param1;
                              loop8:
                              while(true)
                              {
                                 if(!_loc10_)
                                 {
                                    continue loop7;
                                 }
                                 if(!_loc9_)
                                 {
                                    this.§#^§ = param3;
                                    loop9:
                                    while(_loc10_)
                                    {
                                       while(true)
                                       {
                                          this.mStage3D = param4;
                                          loop11:
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                continue loop6;
                                             }
                                             this.§[;§ = new §#!,§.Stage(param3.width,param3.height,param2.color);
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop9;
                                                }
                                                this.§,2§ = param2;
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      break loop8;
                                                   }
                                                   this.§!e§ = new TouchProcessor(this.§[;§);
                                                   addr214:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ && param2))
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            break loop12;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                             this.§-!C§ = new Juggler();
                                             while(true)
                                             {
                                                if(!(_loc9_ && param1))
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      break;
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr252);
                                                §§goto(addr233);
                                             }
                                             addr252:
                                             addr233:
                                             this.§0F§ = 0;
                                             while(true)
                                             {
                                                if(!(_loc9_ && param3))
                                                {
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§#'§ = param2.stageHeight;
                                                      break loop9;
                                                   }
                                                   addr306:
                                                }
                                                §§goto(addr192);
                                                §§goto(addr206);
                                             }
                                             addr192:
                                             addr206:
                                             this.§0n§ = false;
                                             loop19:
                                             while(true)
                                             {
                                                this.§[!Z§ = false;
                                                addr162:
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      this.§5G§ = getTimer() / 1000;
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(_loc10_ || param3)
                                                         {
                                                            this.§`6§ = new Dictionary();
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc9_ && param1)
                                                            {
                                                               continue loop0;
                                                            }
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop1;
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr214);
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      continue loop19;
                                                   }
                                                   var _loc7_:int = 0;
                                                   var _loc8_:* = this.§,!^§;
                                                   addr348:
                                                   for each(_loc6_ in _loc8_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         param2.addEventListener(_loc6_,this.§2c§,false,0,true);
                                                      }
                                                      §§goto(addr348);
                                                   }
                                                   if(!(_loc9_ && this))
                                                   {
                                                      param2.addEventListener(KeyboardEvent.KEY_DOWN,this.§,X§,false,0,true);
                                                      param2.addEventListener(KeyboardEvent.KEY_UP,this.§,X§,false,0,true);
                                                      this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§,false,1,true);
                                                      addr478:
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§=!H§,false,1,true);
                                                         addr420:
                                                         if(_loc10_)
                                                         {
                                                            this.mStage3D.visible = false;
                                                            this.§&!_§(true);
                                                            this.§>!M§ = param2.color;
                                                            addr383:
                                                            addr406:
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     this.§5-§ = param5;
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc10_ || param2))
                                                                        {
                                                                           §§goto(addr478);
                                                                        }
                                                                        return;
                                                                        addr377:
                                                                     }
                                                                     §§goto(addr383);
                                                                  }
                                                                  §§goto(addr420);
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                            addr400:
                                                            §§goto(addr400);
                                                         }
                                                         §§goto(addr478);
                                                      }
                                                      addr466:
                                                      §§goto(addr466);
                                                   }
                                                   §§goto(addr377);
                                                }
                                             }
                                             addr172:
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(!(_loc9_ && param1))
                                       {
                                          continue loop18;
                                       }
                                       addr323:
                                       while(true)
                                       {
                                          this.§9!>§ = this.§?!^§;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§`r§ = this.§4!1§;
                                    break loop8;
                                 }
                              }
                              while(true)
                              {
                                 this.§2A§ = param2.stageWidth;
                                 §§goto(addr306);
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
                  §§goto(addr162);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(_loc10_ || param2)
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                     }
                     §§goto(addr167);
                  }
                  if(param4 == null)
                  {
                     if(!(_loc9_ && param3))
                     {
                        param4 = param2.stage3Ds[0];
                        addr101:
                        this.§?!^§ = param3.width;
                        if(!(_loc9_ && this))
                        {
                           this.§4!1§ = param3.height;
                           §§goto(addr323);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr101);
               }
               §§goto(addr167);
            }
            §§goto(addr268);
         }
         addr48:
         throw new ArgumentError("Stage must not be null");
      }
      
      public static function get isSoftware() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§7!+§);
            if(_loc1_ || _loc1_)
            {
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        addr50:
                        §§push(§7!+§.§?!L§);
                        if(_loc1_)
                        {
                           §§goto(addr53);
                        }
                     }
                     else
                     {
                        addr54:
                        return true;
                     }
                     return §§pop();
                  }
                  §§goto(addr54);
               }
               addr53:
               return §§pop();
            }
         }
         §§goto(addr50);
      }
      
      public static function §!w§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§6x§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop2:
                     while(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§6x§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§@m§);
                                 loop6:
                                 while(_loc1_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(_loc1_ || Starling)
                                    {
                                       §§push(§§pop());
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr158:
                                          while(!(_loc2_ && Starling))
                                          {
                                             if(§§pop())
                                             {
                                             }
                                             break loop2;
                                          }
                                          continue loop2;
                                          addr110:
                                          if(!(_loc1_ || Starling))
                                          {
                                             continue;
                                          }
                                          addr118:
                                          §§push(Boolean(§§pop()));
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         addr131:
                                                         §§push(§6x§);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr73:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§6!,§ == null);
                                                            loop13:
                                                            while(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(!§§pop());
                                                               if(!(_loc1_ || Starling))
                                                               {
                                                                  continue loop15;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc2_ && _loc1_))
                                                                  {
                                                                     §§goto(addr110);
                                                                  }
                                                                  §§goto(addr118);
                                                                  addr56:
                                                                  if(!(_loc2_ && _loc2_))
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        break loop2;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               §§goto(addr158);
                                                            }
                                                            continue loop6;
                                                            §§goto(addr131);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   while(!_loc2_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§goto(addr73);
                                                      }
                                                      return §§pop();
                                                   }
                                                   continue loop4;
                                                   addr167:
                                                   addr128:
                                                }
                                                break loop2;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr158);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       §§goto(addr167);
                                       addr46:
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       §§push(!§§pop());
                                       if(_loc1_)
                                       {
                                          §§goto(addr56);
                                       }
                                       §§goto(addr67);
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     §§goto(addr67);
                  }
               }
               §§goto(addr183);
            }
         }
         §§goto(addr169);
      }
      
      public static function get §7!+§() : Starling
      {
         return §6x§;
      }
      
      public static function get §5K§() : Juggler
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§6x§);
            if(!_loc1_)
            {
               return Boolean(§§pop()) ? §6x§.§5K§ : null;
            }
         }
         §§goto(addr27);
      }
      
      public static function get §'!"§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §'!"§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §=!j§() : Boolean
      {
         return §19§;
      }
      
      public static function set §=!j§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§6x§ != null)
            {
               if(_loc2_ || param1)
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
               §19§ = param1;
               if(!(_loc3_ && _loc3_))
               {
                  break;
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public static function §,q§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(§7!+§)
            {
               if(_loc4_ || param2)
               {
                  §§goto(addr39);
               }
            }
            return null;
         }
         addr39:
         return Texture.§2B§(§7!+§.§6!,§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            §§push(§6x§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop().§6!,§));
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr43:
                        §§push(§6x§);
                        if(_loc4_ || param1)
                        {
                           §§pop().§6!,§.drawToBitmapData(param1);
                           if(!_loc4_)
                           {
                              addr97:
                              _loc2_ = §6x§.§4T§.canvas;
                              addr94:
                              if(_loc4_ || param1)
                              {
                                 param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                              }
                           }
                           else
                           {
                              addr68:
                           }
                           §§goto(addr120);
                        }
                        else
                        {
                           addr73:
                           §§push(§§pop().§4T§);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr93);
                           }
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(§6x§);
                     if(_loc4_)
                     {
                        §§goto(addr73);
                     }
                     §§goto(addr97);
                  }
               }
               addr93:
               if(§§pop().canvas)
               {
                  §§goto(addr94);
               }
               addr120:
               return;
            }
            §§goto(addr97);
         }
         §§goto(addr43);
      }
      
      public function get §#n§() : §#!,§.DisplayObject
      {
         return this.§`9§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!M§ = param1;
         }
      }
      
      public function get §8!L§() : Number
      {
         return this.§?!^§;
      }
      
      public function get § 9§() : Number
      {
         return this.§4!1§;
      }
      
      public function §77§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§5-§);
         }
         catch(e:Error)
         {
            §?@§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc6_)
         {
            this.§"<§ = true;
            loop0:
            while(true)
            {
               this.§,2§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§,X§,false);
               while(true)
               {
                  this.§,2§.removeEventListener(KeyboardEvent.KEY_UP,this.§,X§,false);
                  while(!(_loc5_ && _loc1_))
                  {
                     loop3:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§,false);
                        do
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§=!H§,false);
                        }
                        while(_loc5_);
                        
                        if(!_loc6_)
                        {
                           break;
                        }
                        if(_loc5_)
                        {
                           continue loop0;
                        }
                        while(false)
                        {
                           continue loop3;
                        }
                        var _loc3_:int = 0;
                        var _loc4_:* = this.§,!^§;
                        loop6:
                        while(true)
                        {
                           §§push(§§hasnext(_loc4_,_loc3_));
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                 if(_loc6_ || _loc2_)
                                 {
                                    this.§,2§.removeEventListener(_loc1_,this.§2c§,false);
                                 }
                                 continue;
                              }
                              if(!(_loc5_ && _loc2_))
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       _loc3_ = 0;
                                       if(!_loc5_)
                                       {
                                          addr146:
                                          _loc4_ = this.§`6§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop6;
                                          }
                                          addr177:
                                       }
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(Boolean(this.§6!,§));
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr347:
                                                while(true)
                                                {
                                                   this.§6!,§.dispose();
                                                   addr351:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr347:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§!e§);
                                                if(!(_loc5_ && this))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(_loc6_ || _loc3_)
                                                         {
                                                            §§push(this.§!e§);
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  addr288:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§4T§);
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr306:
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(this.§4T§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                 }
                                                                                 addr304:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr347);
                                                                                 }
                                                                              }
                                                                              addr306:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§6x§ == this)
                                                                              {
                                                                                 addr287:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    §6x§ = null;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr287:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(this.§;!;§));
                                                                                 continue loop9;
                                                                                 §§goto(addr287);
                                                                              }
                                                                           }
                                                                           continue loop23;
                                                                           addr224:
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr351);
                                                         addr331:
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                }
                                                §§goto(addr340);
                                             }
                                          }
                                       }
                                       §§goto(addr252);
                                    }
                                    §§goto(addr347);
                                 }
                              }
                              §§goto(addr146);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              _loc2_ = §§nextvalue(_loc3_,_loc4_);
                              if(!(_loc5_ && _loc3_))
                              {
                                 _loc2_.dispose();
                              }
                              continue;
                           }
                           §§goto(addr146);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §^Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6!,§ = this.mStage3D.context3D;
            while(true)
            {
               this.§`6§ = new Dictionary();
            }
            addr118:
         }
         loop1:
         while(true)
         {
            if(!this.§6!,§)
            {
               this.§?!L§ = true;
               while(true)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     while(true)
                     {
                        this.§=!X§();
                        if(!_loc1_)
                        {
                           break;
                        }
                        addr29:
                        if(!(_loc2_ && _loc2_))
                        {
                           return;
                        }
                        addr93:
                        while(!_loc2_)
                        {
                           §§goto(addr29);
                        }
                        continue loop1;
                     }
                     continue;
                     addr23:
                  }
                  else
                  {
                     loop3:
                     while(true)
                     {
                        if(_loc2_ && _loc1_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           this.§?!L§ = true;
                           §§goto(addr93);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§6!,§.enableErrorChecking = this.§[!Z§;
                              continue loop3;
                           }
                           addr101:
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr23);
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr101);
         }
      }
      
      private function §3!"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§[;§);
            loop0:
            while(§§pop().numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.§`9§);
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
                              this.§`9§ = new this.§%"§();
                              addr117:
                              while(true)
                              {
                              }
                           }
                           addr113:
                        }
                        while(true)
                        {
                           §§push(this.§`9§);
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           §§push(null);
                           if(!(_loc2_ || _loc1_))
                           {
                              continue loop3;
                           }
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§[;§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().addChild(this.§`9§);
                                 if(_loc1_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    if(_loc2_ || this)
                                    {
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          return;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr113);
                                 }
                                 else
                                 {
                                    addr96:
                                    if(_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          throw new Error("Invalid root class: " + this.§%"§);
                                       }
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              continue loop0;
                           }
                           §§goto(addr96);
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
      }
      
      private function §=!X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§[S§ = true;
         }
         while(true)
         {
            this.mStage3D.x = this.§#^§.x;
            while(!(_loc1_ && this))
            {
               this.mStage3D.y = this.§#^§.y;
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(§!w§());
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§[S§);
                        if(!_loc4_)
                        {
                           if(!_loc4_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       addr49:
                                       §§push(Boolean(this.§6!,§));
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§6!,§.configureBackBuffer(this.§#^§.width,this.§#^§.height,this.§0F§,false);
                                             §§goto(addr65);
                                          }
                                          addr52:
                                       }
                                       while(true)
                                       {
                                          this.§[S§ = false;
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             if(_loc3_)
                                             {
                                                if(true)
                                                {
                                                   break loop2;
                                                }
                                                continue loop2;
                                             }
                                             §§goto(addr52);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                       addr78:
                                    }
                                 }
                                 addr65:
                                 §§goto(addr77);
                              }
                              break;
                           }
                           continue loop1;
                        }
                        §§goto(addr49);
                     }
                     §§push(getTimer() / 1000);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - this.§5G§);
                        if(_loc3_ || this)
                        {
                           addr105:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc4_)
                        {
                           this.§5G§ = _loc1_;
                           addr305:
                           this.§[;§.advanceTime(_loc2_);
                           this.§-!C§.advanceTime(_loc2_);
                           this.§!e§.advanceTime(_loc2_);
                           addr262:
                           this.§4T§.native(this.§[;§.stageWidth,this.§[;§.stageHeight);
                           addr312:
                           addr301:
                           addr308:
                           if(!(_loc4_ && _loc1_))
                           {
                              addr251:
                              this.§4T§.clear(this.§6!,§,this.§>!M§,1);
                              addr237:
                              addr258:
                              §§push(this.§4T§);
                              if(!_loc4_)
                              {
                                 §§pop().§-!R§(this.§6!,§,this.§"z§);
                                 addr245:
                                 if(_loc3_)
                                 {
                                    §§push(this.§[;§);
                                    if(!_loc4_)
                                    {
                                       §§pop().render(this.§4T§,1);
                                       addr226:
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr213:
                                          this.§4T§.§"!§();
                                          addr215:
                                          if(this.§ !9§ != null)
                                          {
                                             addr195:
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§ !9§();
                                                addr205:
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.§ !9§ = null;
                                                      addr182:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr150:
                                                         §§push(this.§4T§);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§pop().finishRendering(this.§6!,§);
                                                            addr161:
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(this.§4T§);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§pop().§%G§();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr182);
                                                                              }
                                                                              §§goto(addr161);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr213);
                                                                     }
                                                                     §§goto(addr150);
                                                                  }
                                                                  §§goto(addr312);
                                                               }
                                                               §§goto(addr215);
                                                            }
                                                            §§goto(addr195);
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                   §§goto(addr312);
                                                }
                                                §§goto(addr226);
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§goto(addr305);
                                 }
                                 §§goto(addr308);
                              }
                              §§goto(addr262);
                           }
                           addr294:
                           §§goto(addr294);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr105);
                  }
                  addr77:
                  while(_loc3_ || _loc3_)
                  {
                  }
                  return;
               }
            }
         }
         §§goto(addr78);
      }
      
      public function set §2S§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§ !9§ = param1;
         }
      }
      
      private function §2!&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!_loc4_)
         {
            this.§var§.x = this.§#^§.x;
            if(_loc5_ || _loc3_)
            {
               this.§var§.y = this.§#^§.y;
            }
         }
         var _loc1_:int = this.§var§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§var§.parent;
         if(_loc5_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               addr269:
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
                                       addr276:
                                       while(true)
                                       {
                                          §§push(_loc2_ == null);
                                          addr257:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                    addr275:
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          continue loop0;
                                       }
                                       addr219:
                                       while(!(_loc4_ && this))
                                       {
                                          if(_loc4_ && this)
                                          {
                                             continue loop4;
                                          }
                                          §§push(Boolean(§§pop()));
                                          loop13:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop14:
                                             while(!(_loc4_ && _loc1_))
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop15:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(Boolean(_loc2_));
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              this.§,2§.removeChild(this.§var§);
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 addr122:
                                                                                 addr266:
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§4T§);
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(!_loc4_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop15;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this.§4T§);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§pop().setCanvasSize(this.§9!>§,this.§`r§,this.§#^§.width / this.§[;§.stageWidth,this.§#^§.height / this.§[;§.stageHeight);
                                                                                                            if(_loc4_ && _loc3_)
                                                                                                            {
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            if(false)
                                                                                                            {
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            addr279:
                                                                                                            _loc3_ = this.§4T§.canvas;
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(this.§;!;§.bitmapData != _loc3_)
                                                                                                               {
                                                                                                                  addr343:
                                                                                                                  this.§;!;§.bitmapData = _loc3_;
                                                                                                               }
                                                                                                               addr304:
                                                                                                               if(this.§,2§.getChildIndex(this.§var§) > 0)
                                                                                                               {
                                                                                                                  addr322:
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     this.§,2§.removeChild(this.§var§);
                                                                                                                     addr335:
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        this.§,2§.addChildAt(this.§var§,0);
                                                                                                                        if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr304);
                                                                                                                              }
                                                                                                                              §§goto(addr348);
                                                                                                                           }
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        §§goto(addr335);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr343);
                                                                                                               }
                                                                                                               §§goto(addr348);
                                                                                                            }
                                                                                                            §§goto(addr343);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr275);
                                                                                                         }
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                §§goto(addr257);
                                                                                             }
                                                                                             while(§§pop())
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§4T§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr89);
                                                                                                      }
                                                                                                      §§goto(addr279);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr175);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr111);
                                                                                             }
                                                                                             addr348:
                                                                                          }
                                                                                          continue loop5;
                                                                                          return;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    continue loop28;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr122);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr276);
                                                                        }
                                                                     }
                                                                     §§goto(addr122);
                                                                  }
                                                               }
                                                               addr183:
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§,2§.addChild(this.§var§);
                                                               }
                                                               addr260:
                                                            }
                                                            §§goto(addr266);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr183);
                                                }
                                             }
                                             continue loop6;
                                          }
                                       }
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
         }
         §§goto(addr260);
      }
      
      private function §?@§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!(_loc4_ && _loc2_))
         {
            _loc3_.align = TextFormatAlign.CENTER;
         }
         loop0:
         while(true)
         {
            _loc2_.defaultTextFormat = _loc3_;
            loop1:
            while(true)
            {
               _loc2_.wordWrap = true;
               loop2:
               while(true)
               {
                  _loc2_.width = this.§[;§.stageWidth * 0.75;
                  loop3:
                  while(true)
                  {
                     _loc2_.autoSize = TextFieldAutoSize.CENTER;
                     loop4:
                     while(true)
                     {
                        _loc2_.text = param1;
                        loop5:
                        while(_loc5_)
                        {
                           _loc2_.x = (this.§[;§.stageWidth - _loc2_.width) / 2;
                           while(!_loc4_)
                           {
                              _loc2_.y = (this.§[;§.stageHeight - _loc2_.height) / 2;
                              loop7:
                              for(; !(_loc4_ && _loc3_); if(_loc5_ || this)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              })
                              {
                                 _loc2_.background = true;
                                 loop8:
                                 while(true)
                                 {
                                    _loc2_.backgroundColor = 4456448;
                                    while(true)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          continue loop7;
                                       }
                                       continue loop8;
                                       addr100:
                                       this.§]!I§.addChild(_loc2_);
                                       if(_loc5_ || _loc2_)
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                             continue loop0;
                                          }
                                          continue loop5;
                                          continue loop5;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
               if(!(_loc5_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr100);
            }
         }
      }
      
      public function §^b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §6x§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1Q§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(!_loc1_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1Q§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §&!_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§;F§ = param1;
         }
      }
      
      private function §8!F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§@m§ = true;
            loop0:
            while(this.§;!;§ == null)
            {
               loop1:
               do
               {
                  this.§;!;§ = new Bitmap();
                  while(_loc1_)
                  {
                     this.§]!I§.addChild(this.§;!;§);
                     if(_loc1_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(_loc2_ && this);
               
               break;
            }
            return;
         }
         §§goto(addr59);
      }
      
      private function §=!H§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§8!F§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(Event.CONTEXT3D_CREATE));
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §8!<§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§"<§);
            if(!(_loc5_ && param1))
            {
               if(§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     return;
                  }
                  while(true)
                  {
                     §§push(this.§4T§);
                     addr163:
                     loop24:
                     for(; _loc4_ || param1; §§push(this.§4T§),if(_loc5_ && _loc3_)
                     {
                        continue;
                     },if(_loc4_)
                     {
                        §§pop().clear(null,this.§>!M§);
                        §§goto(addr145);
                     },§§goto(addr430))
                     {
                        §§pop().setCanvasSize(this.§9!>§,this.§`r§,this.§#^§.width / this.§[;§.stageWidth,this.§#^§.height / this.§[;§.stageHeight);
                        loop25:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              if(!_loc5_)
                              {
                                 continue loop24;
                              }
                              loop33:
                              while(true)
                              {
                                 §§push(Boolean(this.§6!,§));
                                 loop34:
                                 while(true)
                                 {
                                    if(_loc4_ || param1)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             addr369:
                                             this.§?@§("Fatal error: The application lost the device context!");
                                             break loop25;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             this.§^b§();
                                             loop12:
                                             while(true)
                                             {
                                                this.§^Q§();
                                                loop13:
                                                while(true)
                                                {
                                                   this.§3!"§();
                                                   loop14:
                                                   for(; _loc4_ || _loc2_; if(!(_loc4_ || this))
                                                   {
                                                      continue;
                                                   },loop27:
                                                   while(true)
                                                   {
                                                      this.§!e§.§;!h§ = this.§0n§;
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc4_ || _loc3_)
                                                            {
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  dispatchEvent(new starling.events.Event(Event.CONTEXT3D_CREATE));
                                                                  if(_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           return;
                                                                        }
                                                                        break loop25;
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  §§goto(addr212);
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(!(_loc4_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop27;
                                                               }
                                                               continue loop12;
                                                            }
                                                            addr145:
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr255);
                                                   },addr250:)
                                                   {
                                                      §§push(Boolean(this.§6!,§));
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr303:
                                                               §§push(Boolean(§§pop()));
                                                               if(_loc4_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ && _loc2_)
                                                                        {
                                                                           continue loop34;
                                                                        }
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           §§pop();
                                                                           loop17:
                                                                           while(!_loc5_)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr355:
                                                                              addr355:
                                                                              §§push(this.§?!L§);
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    continue loop16;
                                                                                 }
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop16;
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ && _loc3_))
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        addr421:
                                                                        addr421:
                                                                        addr421:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop33;
                                                                        }
                                                                     }
                                                                     continue loop34;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              this.mStage3DEnabled = false;
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 this.§6!,§ = null;
                                                                                 addr264:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§8!F§();
                                                                                    addr255:
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    continue loop21;
                                                                                 }
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§4T§);
                                                                                 break loop20;
                                                                              }
                                                                              addr428:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           addr432:
                                                                           while(true)
                                                                           {
                                                                              loop6:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Starling.§=!j§);
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    addr393:
                                                                                    §§push(!§§pop());
                                                                                    while(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc4_ || param1)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             break loop15;
                                                                                          }
                                                                                          addr419:
                                                                                       }
                                                                                       §§goto(addr421);
                                                                                       continue loop34;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                    addr393:
                                                                                    addr427:
                                                                                 }
                                                                                 §§goto(addr393);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr430:
                                                                     }
                                                                     §§goto(addr220);
                                                                  }
                                                               }
                                                               §§goto(addr419);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr303);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop10;
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr393);
                                 }
                              }
                           }
                           §§goto(addr369);
                        }
                        addr373:
                        if(_loc5_ && _loc3_)
                        {
                           while(true)
                           {
                              §§push(this.§4T§);
                              break loop24;
                              §§goto(addr373);
                           }
                           addr437:
                        }
                        this.stop();
                        §§goto(addr355);
                     }
                     while(true)
                     {
                        §§goto(addr427);
                        §§goto(addr163);
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§8!O§)).§8!O§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     _loc2_.§8!O§ = _loc3_;
                  }
                  if(!_loc5_)
                  {
                     this.§"z§ = §8!O§;
                     §§goto(addr437);
                  }
               }
               §§goto(addr355);
            }
            §§goto(addr421);
         }
         §§goto(addr264);
      }
      
      public function onEnterFrame(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§^b§();
         }
         §§push(getTimer() / 1000);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.§5G§);
            if(!(_loc5_ && _loc2_))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§1Q§);
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  loop0:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.render();
                                    addr134:
                                    addr153:
                                    while(!(_loc4_ || param1))
                                    {
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(_loc3_ > 1);
                                       addr109:
                                       addr152:
                                       while(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop7;
                                       }
                                    }
                                 }
                                 addr131:
                              }
                              while(true)
                              {
                                 §§push(Boolean(this.§var§));
                                 if(!_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!(_loc5_ && param1))
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             this.§2!&§();
                                             addr97:
                                             if(_loc4_ || this)
                                             {
                                                break;
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr97);
                                    }
                                    break;
                                 }
                                 §§goto(addr109);
                              }
                              return;
                           }
                           addr128:
                        }
                     }
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr153);
         }
         §§goto(addr52);
      }
      
      private function §,X§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^b§();
         }
         do
         {
            this.§[;§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / this.§?!^§);
            if(_loc7_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() / this.§4!1§);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               §§push(param3);
               if(_loc7_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  §§push(this.§[;§);
                  loop0:
                  while(true)
                  {
                     if(_loc7_ || param2)
                     {
                        §§push(this.§?!^§);
                        loop1:
                        while(true)
                        {
                           if(!_loc6_)
                           {
                              if(!(_loc6_ && param3))
                              {
                                 §§pop().stageWidth = §§pop();
                                 loop17:
                                 while(true)
                                 {
                                    §§push(this.§[;§);
                                    loop14:
                                    while(_loc7_ || param3)
                                    {
                                       §§push(this.§4!1§);
                                       if(_loc7_ || param3)
                                       {
                                          if(!(_loc6_ && param2))
                                          {
                                             §§push(_loc5_);
                                             if(_loc7_ || param2)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr165:
                                                      if(_loc6_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr168:
                                                      §§push(_loc4_);
                                                      if(_loc7_)
                                                      {
                                                         addr171:
                                                         §§push(§§pop() / §§pop());
                                                         if(_loc7_)
                                                         {
                                                            §§pop().stageHeight = §§pop();
                                                            addr174:
                                                            if(!_loc6_)
                                                            {
                                                               addr226:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  this.§9!>§ = param1;
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     this.§`r§ = param2;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(!(_loc7_ || param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§[;§);
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop12;
                                                                        addr56:
                                                                        §§pop().dispatchEvent(new §+!R§(Event.RESIZE,param1,param2));
                                                                        if(!(_loc7_ || param3))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc6_ && param3)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           return;
                                                                        }
                                                                        addr235:
                                                                        while(!_loc6_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§[;§);
                                                                           addr215:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§4!1§);
                                                                              addr217:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stageHeight = §§pop();
                                                                                 §§goto(addr218);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr218:
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§[;§);
                                                                  break loop14;
                                                               }
                                                               addr226:
                                                            }
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr234:
                                                         while(true)
                                                         {
                                                            §§pop().stageWidth = §§pop();
                                                            §§goto(addr235);
                                                         }
                                                      }
                                                      addr233:
                                                   }
                                                   §§goto(addr171);
                                                }
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr232:
                                                   while(true)
                                                   {
                                                      §§goto(addr233);
                                                   }
                                                }
                                                addr231:
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr165);
                                    }
                                    addr228:
                                    while(true)
                                    {
                                       §§push(this.§?!^§);
                                    }
                                 }
                                 addr211:
                              }
                              while(true)
                              {
                                 §§goto(addr231);
                                 §§goto(addr228);
                              }
                           }
                           §§goto(addr232);
                        }
                     }
                     §§goto(addr215);
                  }
               }
               §§goto(addr226);
            }
            §§goto(addr211);
         }
         §§goto(addr25);
      }
      
      public function §,R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setCanvasSize(this.§?!^§,this.§4!1§);
         }
      }
      
      private function §2c§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(!_loc9_)
         {
            §§push(this.§1Q§);
            if(_loc10_)
            {
               §§push(!§§pop());
               if(_loc10_)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc10_ || _loc3_)
                  {
                     §§push(§§pop());
                     if(_loc10_)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(!§§pop())
                     {
                        if(!_loc9_)
                        {
                           addr56:
                           §§pop();
                           if(_loc10_)
                           {
                              §§push(this.§;F§);
                              if(_loc10_)
                              {
                                 §§push(!§§pop());
                                 if(_loc9_ && _loc3_)
                                 {
                                 }
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       return;
                                    }
                                    addr90:
                                    _loc6_ = param1 as MouseEvent;
                                    if(_loc10_ || _loc2_)
                                    {
                                       §§push(Number(_loc6_.stageX));
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop41:
                                          while(true)
                                          {
                                             §§push(Number(_loc6_.stageY));
                                             if(_loc9_ && this)
                                             {
                                                break;
                                             }
                                             _loc3_ = §§pop();
                                             loop42:
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!(_loc9_ && this))
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                _loc4_ = §§pop();
                                                loop43:
                                                while(true)
                                                {
                                                   loop44:
                                                   while(param1.type != MouseEvent.MOUSE_DOWN)
                                                   {
                                                      if(param1.type == MouseEvent.MOUSE_UP)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               if(_loc9_ && _loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  continue loop42;
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§="§ = false;
                                                                  addr129:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc10_)
                                                                     {
                                                                        continue loop43;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop44;
                                                                     }
                                                                     addr230:
                                                                     addr181:
                                                                     var _loc8_:* = param1.type;
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                                        {
                                                                           if(_loc10_ || _loc3_)
                                                                           {
                                                                              §§push(0);
                                                                              if(_loc9_ && _loc3_)
                                                                              {
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr481:
                                                                              §§push(3);
                                                                              if(!(_loc10_ || this))
                                                                              {
                                                                                 addr526:
                                                                              }
                                                                           }
                                                                        }
                                                                        else if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc9_ && this)
                                                                              {
                                                                                 addr468:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr502:
                                                                              §§push(4);
                                                                              if(!(_loc10_ || _loc2_))
                                                                              {
                                                                                 addr537:
                                                                              }
                                                                           }
                                                                        }
                                                                        else if(TouchEvent.TOUCH_END === _loc8_)
                                                                        {
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§push(2);
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr468);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr502);
                                                                           }
                                                                        }
                                                                        else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              §§goto(addr481);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr518:
                                                                              §§push(5);
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr526);
                                                                              }
                                                                           }
                                                                        }
                                                                        else if(MouseEvent.MOUSE_UP === _loc8_)
                                                                        {
                                                                           if(_loc10_ || _loc2_)
                                                                           {
                                                                              §§goto(addr502);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr518);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           if(MouseEvent.MOUSE_MOVE === _loc8_)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§goto(addr518);
                                                                              }
                                                                              addr539:
                                                                              switch(§§pop())
                                                                              {
                                                                                 case 0:
                                                                                    §§push(§?'§.§%!7§);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                          }
                                                                                          addr746:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr282:
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc9_ && _loc2_))
                                                                                          {
                                                                                             addr290:
                                                                                             if(!(_loc9_ && _loc2_))
                                                                                             {
                                                                                                addr639:
                                                                                                §§push(§§pop());
                                                                                                if(_loc10_ || _loc2_)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(!(_loc9_ && this))
                                                                                                      {
                                                                                                         addr315:
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               addr319:
                                                                                                               break;
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr392:
                                                                                                         break;
                                                                                                         addr392:
                                                                                                      }
                                                                                                      loop5:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               if(!(_loc9_ && param1))
                                                                                                               {
                                                                                                                  §§push(§§pop() >= this.§#^§.bottom);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           loop7:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr720:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && this))
                                                                                                                                       {
                                                                                                                                          addr733:
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr738:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr739:
                                                                                                                                                      while(_loc10_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr746);
                                                                                                                                                      }
                                                                                                                                                      addr650:
                                                                                                                                                      continue loop5;
                                                                                                                                                      if(_loc9_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr667:
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        loop18:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc9_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - this.§#^§.x);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < this.§#^§.left);
                                                                                                                                                                                    break loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr806:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           loop19:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop20:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                       if(_loc10_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() - this.§#^§.y);
                                                                                                                                                                                          if(!(_loc9_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr592:
                                                                                                                                                                                             if(!(_loc10_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop20;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop6;
                                                                                                                                                                                          }
                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                          loop22:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr678);
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr739);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr804:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                addr749:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < this.§#^§.top);
                                                                                                                                                                                                   break loop22;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop18;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr762:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                   addr763:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                      addr764:
                                                                                                                                                                                                      while(!_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop13:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop25;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        addr812:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr811:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr800:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop15:
                                                                                                                                                                                                         while(!§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                               addr815:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc2_);
                                                                                                                                                                                                                  addr771:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() >= this.§#^§.right);
                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        if(!(_loc9_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop15;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr801);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop13;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr592);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr815);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr811);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr678:
                                                                                                                                                                     return;
                                                                                                                                                                  }
                                                                                                                                                                  addr676:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr801);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr753);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr814);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr767);
                                                                                                                                                   }
                                                                                                                                                   addr738:
                                                                                                                                                }
                                                                                                                                                §§goto(addr676);
                                                                                                                                             }
                                                                                                                                             §§goto(addr812);
                                                                                                                                          }
                                                                                                                                          §§goto(addr800);
                                                                                                                                       }
                                                                                                                                       §§goto(addr763);
                                                                                                                                    }
                                                                                                                                    §§goto(addr764);
                                                                                                                                 }
                                                                                                                                 §§goto(addr733);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr738);
                                                                                                                     }
                                                                                                                     §§goto(addr762);
                                                                                                                  }
                                                                                                                  §§goto(addr720);
                                                                                                               }
                                                                                                               §§goto(addr771);
                                                                                                            }
                                                                                                            §§goto(addr749);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr326:
                                                                                                      _loc5_ = §§pop();
                                                                                                      if(_loc10_ || _loc2_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr611);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() == §?'§.§%!7§);
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr650);
                                                                                                   }
                                                                                                   §§goto(addr667);
                                                                                                }
                                                                                                addr639:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr325:
                                                                                                §§push(§§pop());
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr639);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr391:
                                                                                       _loc5_ = §§pop();
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 case 1:
                                                                                    addr390:
                                                                                    §§goto(addr391);
                                                                                 case 2:
                                                                                    addr366:
                                                                                    §§push(§?'§.§2r§);
                                                                                    §§push(§?'§.§&>§);
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr804);
                                                                                       }
                                                                                       §§goto(addr639);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr390);
                                                                                    }
                                                                                 case 3:
                                                                                    §§push(§?'§.§%!7§);
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr351:
                                                                                          _loc5_ = §§pop();
                                                                                          if(_loc10_ || this)
                                                                                          {
                                                                                             §§goto(addr319);
                                                                                          }
                                                                                          §§goto(addr815);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr366);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr351);
                                                                                 case 4:
                                                                                    §§goto(addr325);
                                                                                 case 5:
                                                                                    §§push(§?'§.§&>§);
                                                                                    §§push(this.§="§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(§?'§.§2r§);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc10_ || _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr290);
                                                                                                   }
                                                                                                   §§goto(addr639);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr391);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr290);
                                                                                          }
                                                                                          §§goto(addr315);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§?'§.§[!_§);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                §§goto(addr282);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr351);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr290);
                                                                                    }
                                                                                    §§goto(addr738);
                                                                              }
                                                                              §§goto(addr806);
                                                                              §§push(_loc2_);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§goto(addr539);
                                                                                 §§push(6);
                                                                              }
                                                                              §§goto(addr539);
                                                                           }
                                                                           §§push(6);
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              §§goto(addr537);
                                                                           }
                                                                        }
                                                                        §§goto(addr539);
                                                                     }
                                                                     §§goto(addr502);
                                                                  }
                                                               }
                                                            }
                                                            addr143:
                                                            if(!(_loc10_ || param1))
                                                            {
                                                               continue loop41;
                                                            }
                                                            §§goto(addr181);
                                                         }
                                                         §§goto(addr129);
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   this.§="§ = true;
                                                   §§goto(addr143);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                                 else
                                 {
                                    addr89:
                                    if(param1 is MouseEvent)
                                    {
                                       §§goto(addr90);
                                    }
                                    else
                                    {
                                       _loc7_ = param1 as TouchEvent;
                                       if(!(_loc9_ && _loc2_))
                                       {
                                          §§push(Number(_loc7_.stageX));
                                          loop0:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr229:
                                             while(true)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr90);
                              }
                           }
                           §§goto(addr90);
                        }
                        §§push(Boolean(§§pop()));
                        if(!_loc10_)
                        {
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr74);
                  }
               }
               §§goto(addr56);
            }
            §§goto(addr89);
         }
         §§goto(addr90);
      }
      
      private function get §,!^§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §&Q§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_)
         {
            if(param1 in this.§`6§)
            {
               if(!_loc6_)
               {
                  §§goto(addr28);
               }
               else
               {
                  _loc4_ = this.§6!,§.createProgram();
                  addr53:
                  if(!(_loc6_ && param2))
                  {
                     _loc4_.upload(param2,param3);
                     if(_loc5_ || param3)
                     {
                     }
                     §§goto(addr92);
                  }
                  this.§`6§[param1] = _loc4_;
               }
            }
            else if(this.§6!,§ != null)
            {
               §§goto(addr53);
            }
            addr92:
            return;
         }
         addr28:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §8`§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§#+§(param1);
         if(!_loc3_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(§§pop())
            {
               loop2:
               while(true)
               {
                  §§push(delete this.§`6§[param1]);
                  if(!_loc4_)
                  {
                     continue loop0;
                  }
                  §§pop();
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc3_))
                  {
                     break loop0;
                  }
                  addr75:
                  while(true)
                  {
                     _loc2_.dispose();
                     continue loop2;
                  }
               }
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function §#+§(param1:String) : Program3D
      {
         return this.§`6§[param1] as Program3D;
      }
      
      public function § !L§(param1:String) : Boolean
      {
         return param1 in this.§`6§;
      }
      
      public function get §^!i§() : Boolean
      {
         return this.§1Q§;
      }
      
      public function get §5K§() : Juggler
      {
         return this.§-!C§;
      }
      
      public function get §;!h§() : Boolean
      {
         return this.§0n§;
      }
      
      public function set §;!h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§0n§ = param1;
            loop0:
            while(this.§6!,§)
            {
               if(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§!e§.§;!h§ = param1;
                  }
                  addr61:
               }
               while(true)
               {
                  if(_loc3_)
                  {
                     break loop0;
                  }
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§[!Z§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[!Z§ = param1;
         }
         while(this.§6!,§)
         {
            if(!_loc2_)
            {
               if(_loc2_)
               {
                  continue;
               }
               this.§6!,§.enableErrorChecking = param1;
            }
            break;
         }
      }
      
      public function get §6y§() : int
      {
         return this.§0F§;
      }
      
      public function set §6y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§0F§ = param1;
            do
            {
               this.§=!X§();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get §#L§() : Rectangle
      {
         return this.§#^§.clone();
      }
      
      public function set §#L§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§#^§ = param1.clone();
         }
         do
         {
            this.§=!X§();
         }
         while(!_loc2_);
         
      }
      
      public function get §]!I§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_ || _loc3_)
         {
            if(this.§var§ == null)
            {
               if(_loc2_)
               {
                  this.§var§ = new Sprite();
                  addr46:
                  _loc1_ = new ContextMenu();
                  if(_loc2_ || _loc1_)
                  {
                     _loc1_.hideBuiltInItems();
                  }
                  while(true)
                  {
                     while(true)
                     {
                        this.§var§.contextMenu = _loc1_;
                        do
                        {
                           this.§2!&§();
                        }
                        while(_loc3_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(true)
                        {
                           return this.§var§;
                        }
                        addr88:
                     }
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr88);
         }
         §§goto(addr46);
      }
      
      public function get stage() : §#!,§.Stage
      {
         return this.§[;§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §-!8§() : flash.display.Stage
      {
         return this.§,2§;
      }
      
      public function get §']§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@m§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
