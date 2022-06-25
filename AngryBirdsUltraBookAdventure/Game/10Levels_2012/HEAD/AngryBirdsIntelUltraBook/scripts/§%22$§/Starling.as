package §"$§
{
   import §'_§.Texture;
   import §1!&§.DisplayObject;
   import §1!&§.Stage;
   import §;v§.Juggler;
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
   import starling.events.§&#§;
   import starling.events.§0M§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.TouchProcessor;
   
   public class Starling extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §5!V§:Starling;
      
      private static var §9!"§:Boolean;
      
      private static var §6!]§:int;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §?_§:§1!&§.Stage;
      
      private var §,=§:Class;
      
      private var §#w§:§1!&§.DisplayObject;
      
      private var §>A§:Juggler;
      
      private var §+!X§:Boolean;
      
      private var §>'§:Boolean;
      
      private var §=D§:RenderSupport;
      
      private var §1!j§:TouchProcessor;
      
      private var §&-§:int;
      
      private var §[!W§:Boolean;
      
      private var §,o§:Boolean;
      
      private var §0z§:Number;
      
      private var §=!P§:Rectangle;
      
      private var §@!6§:Boolean;
      
      private var §@e§:flash.display.Stage;
      
      private var §7&§:Sprite;
      
      private var §&F§:Context3D;
      
      private var §&b§:Dictionary;
      
      private var §4A§:int;
      
      private var §2!F§:Boolean;
      
      private var §7!>§:Number;
      
      private var §0!K§:Number;
      
      private var §8!5§:Number;
      
      private var §`J§:Number;
      
      private var §`3§:Number;
      
      private var §+;§:Number;
      
      private var §-!"§:Function;
      
      private var §"p§:uint;
      
      private var §!!h§:String;
      
      private var §4&§:Bitmap;
      
      private var §?c§:Boolean = false;
      
      private var §@u§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §7N§:Boolean = false;
      
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
                        §6_§ = true;
                        loop6:
                        while(true)
                        {
                           this.§'!3§();
                           loop7:
                           while(true)
                           {
                              this.§,=§ = param1;
                              loop8:
                              while(true)
                              {
                                 if(!_loc10_)
                                 {
                                    continue loop7;
                                 }
                                 if(!_loc9_)
                                 {
                                    this.§=!P§ = param3;
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
                                             this.§?_§ = new §1!&§.Stage(param3.width,param3.height,param2.color);
                                             loop12:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   continue loop9;
                                                }
                                                this.§@e§ = param2;
                                                loop13:
                                                while(true)
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      break loop8;
                                                   }
                                                   this.§1!j§ = new TouchProcessor(this.§?_§);
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
                                             this.§>A§ = new Juggler();
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
                                             this.§&-§ = 0;
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
                                                      this.§+;§ = param2.stageHeight;
                                                      break loop9;
                                                   }
                                                   addr306:
                                                }
                                                §§goto(addr192);
                                                §§goto(addr206);
                                             }
                                             addr192:
                                             addr206:
                                             this.§[!W§ = false;
                                             loop19:
                                             while(true)
                                             {
                                                this.§,o§ = false;
                                                addr162:
                                                loop0:
                                                while(true)
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      this.§0z§ = getTimer() / 1000;
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(_loc10_ || param3)
                                                         {
                                                            this.§&b§ = new Dictionary();
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
                                                   var _loc8_:* = this.§!U§;
                                                   addr348:
                                                   for each(_loc6_ in _loc8_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         param2.addEventListener(_loc6_,this.§=o§,false,0,true);
                                                      }
                                                      §§goto(addr348);
                                                   }
                                                   if(!(_loc9_ && this))
                                                   {
                                                      param2.addEventListener(KeyboardEvent.KEY_DOWN,this.§@!,§,false,0,true);
                                                      param2.addEventListener(KeyboardEvent.KEY_UP,this.§@!,§,false,0,true);
                                                      this.mStage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§>!R§,false,1,true);
                                                      addr478:
                                                      if(!(_loc9_ && param1))
                                                      {
                                                         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§;3§,false,1,true);
                                                         addr420:
                                                         if(_loc10_)
                                                         {
                                                            this.mStage3D.visible = false;
                                                            this.§>w§(true);
                                                            this.§"p§ = param2.color;
                                                            addr383:
                                                            addr406:
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     this.§!!h§ = param5;
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
                                          this.§8!5§ = this.§7!>§;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§`J§ = this.§0!K§;
                                    break loop8;
                                 }
                              }
                              while(true)
                              {
                                 this.§`3§ = param2.stageWidth;
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
                        this.§7!>§ = param3.width;
                        if(!(_loc9_ && this))
                        {
                           this.§0!K§ = param3.height;
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
            §§push(§'!A§);
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
                        §§push(§'!A§.§2!F§);
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
      
      public static function §]c§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§5!V§);
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
                              §§push(§5!V§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§?c§);
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
                                                         §§push(§5!V§);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr73:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§&F§ == null);
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
      
      public static function get §'!A§() : Starling
      {
         return §5!V§;
      }
      
      public static function get §@7§() : Juggler
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§5!V§);
            if(!_loc1_)
            {
               return Boolean(§§pop()) ? §5!V§.§@7§ : null;
            }
         }
         §§goto(addr27);
      }
      
      public static function get §!!k§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §!!k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §6_§() : Boolean
      {
         return §9!"§;
      }
      
      public static function set §6_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§5!V§ != null)
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
               §9!"§ = param1;
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
      
      public static function §7]§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(§'!A§)
            {
               if(_loc4_ || param2)
               {
                  §§goto(addr39);
               }
            }
            return null;
         }
         addr39:
         return Texture.§?h§(§'!A§.§&F§,param1,param2,param3);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:BitmapData = null;
         if(!_loc3_)
         {
            §§push(§5!V§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop().§&F§));
               if(!(_loc3_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr43:
                        §§push(§5!V§);
                        if(_loc4_ || param1)
                        {
                           §§pop().§&F§.drawToBitmapData(param1);
                           if(!_loc4_)
                           {
                              addr97:
                              _loc2_ = §5!V§.§=D§.canvas;
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
                           §§push(§§pop().§=D§);
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
                     §§push(§5!V§);
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
      
      public function get set() : §1!&§.DisplayObject
      {
         return this.§#w§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"p§ = param1;
         }
      }
      
      public function get §;l§() : Number
      {
         return this.§7!>§;
      }
      
      public function get §6z§() : Number
      {
         return this.§0!K§;
      }
      
      public function § Z§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.mStage3D.requestContext3D(this.§!!h§);
         }
         catch(e:Error)
         {
            §+!i§("Context3D error: " + e.message);
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
            this.§7N§ = true;
            loop0:
            while(true)
            {
               this.§@e§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§@!,§,false);
               while(true)
               {
                  this.§@e§.removeEventListener(KeyboardEvent.KEY_UP,this.§@!,§,false);
                  while(!(_loc5_ && _loc1_))
                  {
                     loop3:
                     while(true)
                     {
                        this.mStage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§,false);
                        do
                        {
                           this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§;3§,false);
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
                        var _loc4_:* = this.§!U§;
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
                                    this.§@e§.removeEventListener(_loc1_,this.§=o§,false);
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
                                          _loc4_ = this.§&b§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop6;
                                          }
                                          addr177:
                                       }
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(Boolean(this.§&F§));
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr347:
                                                while(true)
                                                {
                                                   this.§&F§.dispose();
                                                   addr351:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                addr347:
                                             }
                                             while(true)
                                             {
                                                §§push(this.§1!j§);
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
                                                            §§push(this.§1!j§);
                                                            while(true)
                                                            {
                                                               §§pop().dispose();
                                                               loop23:
                                                               while(true)
                                                               {
                                                                  addr288:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§=D§);
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
                                                                                 §§push(this.§=D§);
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
                                                                              if(§5!V§ == this)
                                                                              {
                                                                                 addr287:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop23;
                                                                                    }
                                                                                    §5!V§ = null;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr287:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(this.§4&§));
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
      
      private function §^M§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§&F§ = this.mStage3D.context3D;
            while(true)
            {
               this.§&b§ = new Dictionary();
            }
            addr118:
         }
         loop1:
         while(true)
         {
            if(!this.§&F§)
            {
               this.§2!F§ = true;
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
                        this.§9z§();
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
                           this.§2!F§ = true;
                           §§goto(addr93);
                        }
                        else
                        {
                           while(true)
                           {
                              this.§&F§.enableErrorChecking = this.§,o§;
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
      
      private function §[V§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§?_§);
            loop0:
            while(§§pop().numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.§#w§);
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
                              this.§#w§ = new this.§,=§();
                              addr117:
                              while(true)
                              {
                              }
                           }
                           addr113:
                        }
                        while(true)
                        {
                           §§push(this.§#w§);
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
                                 §§push(this.§?_§);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().addChild(this.§#w§);
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
                                          throw new Error("Invalid root class: " + this.§,=§);
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
      
      private function §9z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§@u§ = true;
         }
         while(true)
         {
            this.mStage3D.x = this.§=!P§.x;
            while(!(_loc1_ && this))
            {
               this.mStage3D.y = this.§=!P§.y;
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
            §§push(§]c§());
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
                        §§push(this.§@u§);
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
                                       §§push(Boolean(this.§&F§));
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§&F§.configureBackBuffer(this.§=!P§.width,this.§=!P§.height,this.§&-§,false);
                                             §§goto(addr65);
                                          }
                                          addr52:
                                       }
                                       while(true)
                                       {
                                          this.§@u§ = false;
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
                        §§push(§§pop() - this.§0z§);
                        if(_loc3_ || this)
                        {
                           addr105:
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(!_loc4_)
                        {
                           this.§0z§ = _loc1_;
                           addr305:
                           this.§?_§.advanceTime(_loc2_);
                           this.§>A§.advanceTime(_loc2_);
                           this.§1!j§.advanceTime(_loc2_);
                           addr262:
                           this.§=D§.§ !O§(this.§?_§.stageWidth,this.§?_§.stageHeight);
                           addr312:
                           addr301:
                           addr308:
                           if(!(_loc4_ && _loc1_))
                           {
                              addr251:
                              this.§=D§.clear(this.§&F§,this.§"p§,1);
                              addr237:
                              addr258:
                              §§push(this.§=D§);
                              if(!_loc4_)
                              {
                                 §§pop().§55§(this.§&F§,this.§4A§);
                                 addr245:
                                 if(_loc3_)
                                 {
                                    §§push(this.§?_§);
                                    if(!_loc4_)
                                    {
                                       §§pop().render(this.§=D§,1);
                                       addr226:
                                       if(_loc3_ || _loc3_)
                                       {
                                          addr213:
                                          this.§=D§.§&M§();
                                          addr215:
                                          if(this.§-!"§ != null)
                                          {
                                             addr195:
                                             if(_loc3_ || _loc3_)
                                             {
                                                this.§-!"§();
                                                addr205:
                                                if(_loc3_)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      this.§-!"§ = null;
                                                      addr182:
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         addr150:
                                                         §§push(this.§=D§);
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§pop().finishRendering(this.§&F§);
                                                            addr161:
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(this.§=D§);
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§pop().§^![§();
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
      
      public function set §#"§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§-!"§ = param1;
         }
      }
      
      private function §3!3§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!_loc4_)
         {
            this.§7&§.x = this.§=!P§.x;
            if(_loc5_ || _loc3_)
            {
               this.§7&§.y = this.§=!P§.y;
            }
         }
         var _loc1_:int = this.§7&§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§7&§.parent;
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
                                                                              this.§@e§.removeChild(this.§7&§);
                                                                              loop28:
                                                                              while(true)
                                                                              {
                                                                                 addr122:
                                                                                 addr266:
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§=D§);
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
                                                                                                                     §§push(this.§=D§);
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
                                                                                                            §§pop().setCanvasSize(this.§8!5§,this.§`J§,this.§=!P§.width / this.§?_§.stageWidth,this.§=!P§.height / this.§?_§.stageHeight);
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
                                                                                                            _loc3_ = this.§=D§.canvas;
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               if(this.§4&§.bitmapData != _loc3_)
                                                                                                               {
                                                                                                                  addr343:
                                                                                                                  this.§4&§.bitmapData = _loc3_;
                                                                                                               }
                                                                                                               addr304:
                                                                                                               if(this.§@e§.getChildIndex(this.§7&§) > 0)
                                                                                                               {
                                                                                                                  addr322:
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     this.§@e§.removeChild(this.§7&§);
                                                                                                                     addr335:
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        this.§@e§.addChildAt(this.§7&§,0);
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
                                                                                                      §§push(this.§=D§);
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
                                                                  this.§@e§.addChild(this.§7&§);
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
      
      private function §+!i§(param1:String) : void
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
                  _loc2_.width = this.§?_§.stageWidth * 0.75;
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
                           _loc2_.x = (this.§?_§.stageWidth - _loc2_.width) / 2;
                           while(!_loc4_)
                           {
                              _loc2_.y = (this.§?_§.stageHeight - _loc2_.height) / 2;
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
                                       this.§4!5§.addChild(_loc2_);
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
      
      public function §'!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §5!V§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+!X§ = true;
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
            this.§+!X§ = false;
            do
            {
               this.mStage3D.visible = false;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §>w§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>'§ = param1;
         }
      }
      
      private function §9?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§?c§ = true;
            loop0:
            while(this.§4&§ == null)
            {
               loop1:
               do
               {
                  this.§4&§ = new Bitmap();
                  while(_loc1_)
                  {
                     this.§4!5§.addChild(this.§4&§);
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
      
      private function §;3§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9?§();
         }
         do
         {
            this.mStage3D.dispatchEvent(new flash.events.Event(Event.CONTEXT3D_CREATE));
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function §>!R§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(this.§7N§);
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
                     §§push(this.§=D§);
                     addr163:
                     loop24:
                     for(; _loc4_ || param1; §§push(this.§=D§),if(_loc5_ && _loc3_)
                     {
                        continue;
                     },if(_loc4_)
                     {
                        §§pop().clear(null,this.§"p§);
                        §§goto(addr145);
                     },§§goto(addr430))
                     {
                        §§pop().setCanvasSize(this.§8!5§,this.§`J§,this.§=!P§.width / this.§?_§.stageWidth,this.§=!P§.height / this.§?_§.stageHeight);
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
                                 §§push(Boolean(this.§&F§));
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
                                             this.§+!i§("Fatal error: The application lost the device context!");
                                             break loop25;
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             this.§'!3§();
                                             loop12:
                                             while(true)
                                             {
                                                this.§^M§();
                                                loop13:
                                                while(true)
                                                {
                                                   this.§[V§();
                                                   loop14:
                                                   for(; _loc4_ || _loc2_; if(!(_loc4_ || this))
                                                   {
                                                      continue;
                                                   },loop27:
                                                   while(true)
                                                   {
                                                      this.§1!j§.§]<§ = this.§[!W§;
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
                                                      §§push(Boolean(this.§&F§));
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
                                                                              §§push(this.§2!F§);
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
                                                                                 this.§&F§ = null;
                                                                                 addr264:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§9?§();
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
                                                                                 §§push(this.§=D§);
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
                                                                                 §§push(Starling.§6_§);
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
                              §§push(this.§=D§);
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
                  §§push((_loc2_ = §§findproperty(§6!]§)).§6!]§);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(!(_loc5_ && param1))
                  {
                     _loc2_.§6!]§ = _loc3_;
                  }
                  if(!_loc5_)
                  {
                     this.§4A§ = §6!]§;
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
            this.§'!3§();
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
            §§push(§§pop() - this.§0z§);
            if(!(_loc5_ && _loc2_))
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§+!X§);
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
                                 §§push(Boolean(this.§7&§));
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
                                             this.§3!3§();
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
      
      private function §@!,§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'!3§();
         }
         do
         {
            this.§?_§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
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
            §§push(§§pop() / this.§7!>§);
            if(_loc7_)
            {
               addr25:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(param2);
            if(_loc7_)
            {
               §§push(§§pop() / this.§0!K§);
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
                  §§push(this.§?_§);
                  loop0:
                  while(true)
                  {
                     if(_loc7_ || param2)
                     {
                        §§push(this.§7!>§);
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
                                    §§push(this.§?_§);
                                    loop14:
                                    while(_loc7_ || param3)
                                    {
                                       §§push(this.§0!K§);
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
                                                                  this.§8!5§ = param1;
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     this.§`J§ = param2;
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(!(_loc7_ || param1))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§?_§);
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop12;
                                                                        addr56:
                                                                        §§pop().dispatchEvent(new §&#§(Event.RESIZE,param1,param2));
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
                                                                           §§push(this.§?_§);
                                                                           addr215:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§0!K§);
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
                                                                  §§push(this.§?_§);
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
                                       §§push(this.§7!>§);
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
      
      public function §'a§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.setCanvasSize(this.§7!>§,this.§0!K§);
         }
      }
      
      private function §=o§(param1:flash.events.Event) : void
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
            §§push(this.§+!X§);
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
                              §§push(this.§>'§);
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
                                                                  this.§@!6§ = false;
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
                                                                                    §§push(§0M§.§+!$§);
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
                                                                                                                  §§push(§§pop() >= this.§=!P§.bottom);
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
                                                                                                                                                                                 §§push(§§pop() - this.§=!P§.x);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() < this.§=!P§.left);
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
                                                                                                                                                                                          §§push(§§pop() - this.§=!P§.y);
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
                                                                                                                                                                                                   §§push(§§pop() < this.§=!P§.top);
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
                                                                                                                                                                                                                     §§push(§§pop() >= this.§=!P§.right);
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
                                                                                                   §§push(§§pop() == §0M§.§+!$§);
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
                                                                                    §§push(§0M§.§-!Y§);
                                                                                    §§push(§0M§.§!!C§);
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
                                                                                    §§push(§0M§.§+!$§);
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
                                                                                    §§push(§0M§.§!!C§);
                                                                                    §§push(this.§@!6§);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(§0M§.§-!Y§);
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
                                                                                          §§push(§0M§.§'p§);
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
                                                   this.§@!6§ = true;
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
      
      private function get §!U§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §8V§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_)
         {
            if(param1 in this.§&b§)
            {
               if(!_loc6_)
               {
                  §§goto(addr28);
               }
               else
               {
                  _loc4_ = this.§&F§.createProgram();
                  addr53:
                  if(!(_loc6_ && param2))
                  {
                     _loc4_.upload(param2,param3);
                     if(_loc5_ || param3)
                     {
                     }
                     §§goto(addr92);
                  }
                  this.§&b§[param1] = _loc4_;
               }
            }
            else if(this.§&F§ != null)
            {
               §§goto(addr53);
            }
            addr92:
            return;
         }
         addr28:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §`D§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Program3D = this.§3t§(param1);
         if(!_loc3_)
         {
            §§push(Boolean(_loc2_));
            loop0:
            while(§§pop())
            {
               loop2:
               while(true)
               {
                  §§push(delete this.§&b§[param1]);
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
      
      public function §3t§(param1:String) : Program3D
      {
         return this.§&b§[param1] as Program3D;
      }
      
      public function §@!Q§(param1:String) : Boolean
      {
         return param1 in this.§&b§;
      }
      
      public function get §5!R§() : Boolean
      {
         return this.§+!X§;
      }
      
      public function get §@7§() : Juggler
      {
         return this.§>A§;
      }
      
      public function get §]<§() : Boolean
      {
         return this.§[!W§;
      }
      
      public function set §]<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!W§ = param1;
            loop0:
            while(this.§&F§)
            {
               if(_loc3_ || this)
               {
                  while(true)
                  {
                     this.§1!j§.§]<§ = param1;
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
         return this.§,o§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,o§ = param1;
         }
         while(this.§&F§)
         {
            if(!_loc2_)
            {
               if(_loc2_)
               {
                  continue;
               }
               this.§&F§.enableErrorChecking = param1;
            }
            break;
         }
      }
      
      public function get §=6§() : int
      {
         return this.§&-§;
      }
      
      public function set §=6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§&-§ = param1;
            do
            {
               this.§9z§();
            }
            while(_loc3_ && this);
            
         }
      }
      
      public function get §<H§() : Rectangle
      {
         return this.§=!P§.clone();
      }
      
      public function set §<H§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§=!P§ = param1.clone();
         }
         do
         {
            this.§9z§();
         }
         while(!_loc2_);
         
      }
      
      public function get §4!5§() : Sprite
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:ContextMenu = null;
         if(_loc2_ || _loc3_)
         {
            if(this.§7&§ == null)
            {
               if(_loc2_)
               {
                  this.§7&§ = new Sprite();
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
                        this.§7&§.contextMenu = _loc1_;
                        do
                        {
                           this.§3!3§();
                        }
                        while(_loc3_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(true)
                        {
                           return this.§7&§;
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
      
      public function get stage() : §1!&§.Stage
      {
         return this.§?_§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §0y§() : flash.display.Stage
      {
         return this.§@e§;
      }
      
      public function get §6?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§?c§);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
