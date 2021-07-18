package §"^§
{
   import §,M§.§3!2§;
   import §2Y§.DisplayObject;
   import §2Y§.Stage;
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
   import starling.events.§5k§;
   import starling.events.§8U§;
   import starling.events.§9i§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   
   public class §+!'§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §[U§:§+!'§;
      
      private static var §@q§:Boolean;
      
      private static var §]!4§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            VERSION = "1.0";
         }
      }
      
      private var mStage3D:Stage3D;
      
      private var §18§:§2Y§.Stage;
      
      private var §'7§:Class;
      
      private var §,=§:§2Y§.DisplayObject;
      
      private var §@U§:§3!2§;
      
      private var §+!A§:Boolean;
      
      private var §%!`§:Boolean;
      
      private var §@!Z§:§'X§;
      
      private var §]!P§:§8U§;
      
      private var §[§:int;
      
      private var §5>§:Boolean;
      
      private var §<V§:Boolean;
      
      private var §;X§:Number;
      
      private var §2!"§:Rectangle;
      
      private var §<!8§:Boolean;
      
      private var §0!A§:flash.display.Stage;
      
      private var §&!W§:Sprite;
      
      private var §`!D§:Context3D;
      
      private var §?#§:Dictionary;
      
      private var §!M§:int;
      
      private var §'x§:Boolean;
      
      private var §[!L§:Number;
      
      private var §68§:Number;
      
      private var §+;§:Number;
      
      private var §5!F§:Number;
      
      private var §!!a§:Number;
      
      private var §2%§:Number;
      
      private var §,!D§:Function;
      
      private var §`!G§:uint;
      
      private var §^!d§:String;
      
      private var §&!J§:Bitmap;
      
      private var §"&§:Boolean = false;
      
      private var §54§:Boolean;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §8N§:Boolean = false;
      
      public function §+!'§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:String = null;
         if(!(_loc9_ && this))
         {
            super();
            if(_loc10_ || this)
            {
               if(param2 == null)
               {
                  if(_loc10_ || param1)
                  {
                     throw new ArgumentError("Stage must not be null");
                  }
                  while(false)
                  {
                     loop8:
                     while(true)
                     {
                        this.§;X§ = getTimer() / 1000;
                        loop9:
                        while(!(_loc9_ && param2))
                        {
                           if(!_loc9_)
                           {
                              if(!(_loc9_ && param1))
                              {
                                 this.§?#§ = new Dictionary();
                                 if(!_loc9_)
                                 {
                                    if(_loc10_ || param1)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(_loc10_)
                                          {
                                             break loop8;
                                          }
                                          loop10:
                                          while(true)
                                          {
                                             if(!(_loc9_ && param2))
                                             {
                                                if(_loc10_ || param1)
                                                {
                                                   addr260:
                                                   while(true)
                                                   {
                                                      this.§18§ = new §2Y§.Stage(param3.width,param3.height,param2.color);
                                                      addr234:
                                                      while(true)
                                                      {
                                                         if(_loc10_ || param1)
                                                         {
                                                            this.§0!A§ = param2;
                                                            while(true)
                                                            {
                                                               this.§]!P§ = new §8U§(this.§18§);
                                                               addr200:
                                                               while(true)
                                                               {
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     this.§@U§ = new §3!2§();
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop10;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§[§ = 0;
                                                                           addr182:
                                                                           addr184:
                                                                           while(_loc9_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§+;§ = this.§[!L§;
                                                                                 addr307:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§5!F§ = this.§68§;
                                                                                    addr301:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§!!a§ = param2.stageWidth;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.§5>§ = false;
                                                                           break loop9;
                                                                        }
                                                                        §§goto(addr207);
                                                                     }
                                                                     addr207:
                                                                     addr190:
                                                                  }
                                                                  addr295:
                                                                  while(true)
                                                                  {
                                                                     this.§2%§ = param2.stageHeight;
                                                                     while(true)
                                                                     {
                                                                        §@N§ = true;
                                                                        addr281:
                                                                        while(_loc10_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§>`§();
                                                                              addr276:
                                                                              while(true)
                                                                              {
                                                                                 this.§'7§ = param1;
                                                                                 addr270:
                                                                                 while(!_loc10_)
                                                                                 {
                                                                                    §§goto(addr307);
                                                                                 }
                                                                                 this.§2!"§ = param3;
                                                                                 continue loop10;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr212:
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                   }
                                                   addr260:
                                                }
                                                §§goto(addr301);
                                             }
                                             §§goto(addr270);
                                          }
                                       }
                                       §§goto(addr190);
                                    }
                                    while(true)
                                    {
                                       if(!_loc9_)
                                       {
                                          if(!(_loc9_ && param3))
                                          {
                                             break;
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr200);
                                    }
                                    continue loop8;
                                    addr161:
                                 }
                                 continue;
                              }
                              §§goto(addr234);
                           }
                           §§goto(addr212);
                        }
                        while(true)
                        {
                           if(!_loc9_)
                           {
                              this.§<V§ = false;
                              §§goto(addr161);
                           }
                           §§goto(addr182);
                           §§goto(addr184);
                        }
                     }
                  }
                  for each(_loc6_ in this.§@f§)
                  {
                     if(_loc10_)
                     {
                        param2.addEventListener(_loc6_,this.§%!+§,false,0,true);
                     }
                  }
                  if(!(_loc9_ && param3))
                  {
                     param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'!7§,false,0,true);
                     loop21:
                     while(true)
                     {
                        param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'!7§,false,0,true);
                        addr442:
                        while(true)
                        {
                           this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!c§,false,1,true);
                           continue loop21;
                        }
                     }
                  }
                  while(true)
                  {
                     this.§]K§(true);
                     §§goto(addr385);
                  }
                  §§goto(addr374);
               }
               else if(param1 == null)
               {
                  if(!_loc9_)
                  {
                     throw new ArgumentError("Root class must not be null");
                  }
                  §§goto(addr295);
               }
               else
               {
                  if(param3 == null)
                  {
                     if(!(_loc9_ && param3))
                     {
                        param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                        addr90:
                        if(param4 == null)
                        {
                           if(!_loc9_)
                           {
                              param4 = param2.stage3Ds[0];
                           }
                           §§goto(addr260);
                        }
                        this.§[!L§ = param3.width;
                        if(!(_loc9_ && param2))
                        {
                           this.§68§ = param3.height;
                           §§goto(addr312);
                        }
                        §§goto(addr276);
                     }
                     §§goto(addr283);
                  }
                  §§goto(addr90);
               }
               §§goto(addr276);
            }
            §§goto(addr260);
         }
         §§goto(addr192);
      }
      
      public static function get §"!#§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§2d§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     addr51:
                     §§push(§2d§.§'x§);
                     if(_loc2_)
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
         §§goto(addr51);
      }
      
      public static function §`4§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §+!'§))
         {
            §§push(§[U§);
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
                              §§push(§[U§);
                              loop5:
                              while(_loc1_)
                              {
                                 §§push(§§pop().§"&§);
                                 if(!(_loc2_ && §+!'§))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(_loc1_ || _loc2_)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§[U§);
                                                loop10:
                                                for(; _loc1_; while(true)
                                                {
                                                   §§push(§[U§);
                                                   if(!_loc1_)
                                                   {
                                                      continue loop10;
                                                   }
                                                   §§push(§§pop().§`!D§.driverInfo == "Disposed");
                                                   if(!(_loc2_ && _loc1_))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc1_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(!§§pop());
                                                   }
                                                   addr44:
                                                   if(_loc2_ && §+!'§)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr51);
                                                })
                                                {
                                                   §§push(§§pop().§`!D§ == null);
                                                   if(_loc1_ || §+!'§)
                                                   {
                                                      §§push(!§§pop());
                                                      if(!_loc2_)
                                                      {
                                                         addr82:
                                                         if(_loc2_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(§§pop());
                                                         if(_loc2_ && §+!'§)
                                                         {
                                                            continue loop7;
                                                         }
                                                         if(!_loc1_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            §§goto(addr51);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc1_)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop9;
                                                         §§goto(addr44);
                                                      }
                                                      continue loop4;
                                                   }
                                                   §§goto(addr82);
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr51:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public static function get §2d§() : §+!'§
      {
         return §[U§;
      }
      
      public static function get §9!;§() : §3!2§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§[U§);
            if(_loc1_ || _loc2_)
            {
               return !!§§pop() ? §[U§.§9!;§ : null;
            }
         }
         §§goto(addr48);
      }
      
      public static function get §85§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §85§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §@N§() : Boolean
      {
         return §@q§;
      }
      
      public static function set §@N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§[U§ == null)
            {
               loop0:
               while(true)
               {
                  §@q§ = param1;
                  if(_loc2_ || _loc3_)
                  {
                     break;
                  }
                  addr69:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(_loc2_ || _loc3_)
               {
                  return;
               }
            }
            throw new IllegalOperationError("Setting must be changed before Starling instance is created");
         }
         §§goto(addr69);
      }
      
      public static function §!a§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || §+!'§)
         {
            if(§2d§)
            {
               if(_loc5_)
               {
                  return Texture.§!?§(§2d§.§`!D§,param1,param2,param3);
                  addr38:
               }
            }
            return null;
         }
         §§goto(addr38);
      }
      
      public static function drawToBitmapData(param1:BitmapData) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(_loc3_)
         {
            §§push(§[U§);
            if(!(_loc4_ && param1))
            {
               if(§§pop().§`!D§)
               {
                  if(_loc3_)
                  {
                     §§push(§[U§);
                     if(_loc3_)
                     {
                        addr36:
                        §§pop().§`!D§.drawToBitmapData(param1);
                        if(!_loc3_)
                        {
                           addr67:
                           _loc2_ = §[U§.§@!Z§.canvas;
                           addr65:
                           if(_loc3_ || _loc3_)
                           {
                              param1.copyPixels(_loc2_,_loc2_.rect,new Point(0,0),null,null,true);
                           }
                        }
                        else
                        {
                           addr51:
                        }
                        §§goto(addr99);
                     }
                     else
                     {
                        addr55:
                        §§push(§§pop().§@!Z§);
                        if(_loc3_ || _loc2_)
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr65);
                           }
                           addr99:
                           return;
                        }
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr51);
               }
               else
               {
                  §§push(§[U§);
                  if(!_loc4_)
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr36);
         }
         §§goto(addr51);
      }
      
      public function get §&i§() : §2Y§.DisplayObject
      {
         return this.§,=§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§`!G§ = param1;
         }
      }
      
      public function get §[!D§() : Number
      {
         return this.§[!L§;
      }
      
      public function get §1l§() : Number
      {
         return this.§68§;
      }
      
      public function §+T§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         try
         {
            this.mStage3D.requestContext3D(this.§^!d§);
         }
         catch(e:Error)
         {
            §@!B§("Context3D error: " + e.message);
            throw e;
         }
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(_loc5_ || this)
         {
            this.§8N§ = true;
            loop0:
            while(true)
            {
               this.§0!A§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'!7§,false);
               while(true)
               {
                  this.§0!A§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'!7§,false);
                  addr66:
                  if(_loc5_ || _loc3_)
                  {
                     this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§0%§,false);
                     if(!_loc6_)
                     {
                        continue loop0;
                     }
                     loop4:
                     while(true)
                     {
                        if(_loc5_ || this)
                        {
                           §§goto(addr66);
                        }
                        else
                        {
                           while(true)
                           {
                              addr50:
                              addr98:
                              while(true)
                              {
                                 this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§3!c§,false);
                                 continue loop4;
                              }
                              var _loc3_:int = 0;
                              var _loc4_:* = this.§@f§;
                              loop5:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc4_,_loc3_));
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                       if(!_loc6_)
                                       {
                                          this.§0!A§.removeEventListener(_loc1_,this.§%!+§,false);
                                       }
                                       continue;
                                    }
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(_loc5_ || this)
                                       {
                                          if(!_loc6_)
                                          {
                                             _loc3_ = 0;
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                _loc4_ = this.§?#§;
                                                while(true)
                                                {
                                                   §§push(§§hasnext(_loc4_,_loc3_));
                                                   break loop5;
                                                }
                                                addr184:
                                                if(_loc5_ || _loc1_)
                                                {
                                                   if(this.§`!D§)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§`!D§.dispose();
                                                         addr323:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      addr320:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§]!P§);
                                                      if(_loc5_)
                                                      {
                                                         addr298:
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(this.§]!P§);
                                                                     while(true)
                                                                     {
                                                                        §§pop().dispose();
                                                                        addr316:
                                                                        while(true)
                                                                        {
                                                                           break loop13;
                                                                        }
                                                                     }
                                                                     addr315:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr320);
                                                                  }
                                                               }
                                                               §§goto(addr323);
                                                               §§goto(addr298);
                                                            }
                                                            addr299:
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(this.§@!Z§);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr279:
                                                               if(§§pop())
                                                               {
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(this.§@!Z§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().dispose();
                                                                           addr285:
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr299);
                                                                           continue loop15;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           break loop11;
                                                                           §§goto(addr285);
                                                                        }
                                                                        addr284:
                                                                        addr292:
                                                                     }
                                                                     §§goto(addr316);
                                                                     §§goto(addr279);
                                                                  }
                                                                  addr280:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§[U§ == this)
                                                                  {
                                                                     while(!(_loc6_ && this))
                                                                     {
                                                                        §[U§ = null;
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr280);
                                                                     addr258:
                                                                  }
                                                                  loop16:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(this.§&!J§));
                                                                     if(_loc5_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              addr251:
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    addr253:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(this.§&!J§.bitmapData));
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break loop20;
                                                                                       }
                                                                                       continue loop21;
                                                                                    }
                                                                                    addr253:
                                                                                 }
                                                                                 §§goto(addr285);
                                                                                 continue loop21;
                                                                              }
                                                                           }
                                                                           addr250:
                                                                        }
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 this.§&!J§.bitmapData.dispose();
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       this.§&!J§.bitmapData = null;
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc6_ && _loc2_)
                                                                                       {
                                                                                          continue loop18;
                                                                                       }
                                                                                       if(_loc5_ || _loc1_)
                                                                                       {
                                                                                          break loop17;
                                                                                       }
                                                                                       §§goto(addr258);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr251);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr285);
                                                                              }
                                                                           }
                                                                           break;
                                                                           §§goto(addr253);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                      }
                                                      §§goto(addr315);
                                                   }
                                                }
                                                §§goto(addr253);
                                                addr183:
                                                addr181:
                                             }
                                             §§goto(addr184);
                                          }
                                          §§goto(addr292);
                                       }
                                       §§goto(addr184);
                                    }
                                    §§goto(addr183);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                    if(_loc5_)
                                    {
                                       _loc2_.dispose();
                                    }
                                    continue;
                                 }
                                 §§goto(addr184);
                              }
                              continue loop4;
                           }
                           addr83:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      private function §89§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§`!D§ = this.mStage3D.context3D;
            while(true)
            {
               this.§?#§ = new Dictionary();
               loop1:
               while(true)
               {
                  if(!this.§`!D§)
                  {
                     this.§'x§ = true;
                     break;
                  }
                  if(!_loc1_)
                  {
                     continue;
                  }
                  addr100:
                  loop2:
                  while(true)
                  {
                     if(this.§`!D§.driverInfo.indexOf("Software") < 0)
                     {
                        while(true)
                        {
                           addr24:
                           while(true)
                           {
                              this.§?!P§();
                              if(_loc2_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           addr29:
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     else
                     {
                        addr37:
                     }
                     if(_loc2_)
                     {
                        this.§'x§ = true;
                     }
                     continue;
                     return;
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§`!D§.enableErrorChecking = this.§<V§;
               §§goto(addr100);
            }
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
      
      private function §8!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§18§);
            loop0:
            for(; §§pop().numChildren <= 0; while(true)
            {
               §§push(this.§18§);
               if(!(_loc1_ || _loc1_))
               {
                  break;
               }
               §§goto(addr33);
            })
            {
               loop1:
               while(true)
               {
                  §§push(this.§,=§);
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
                              this.§,=§ = new this.§'7§();
                              addr110:
                              while(true)
                              {
                              }
                           }
                           addr96:
                        }
                        while(true)
                        {
                           §§push(this.§,=§);
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           §§push(null);
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop3;
                           }
                           if(§§pop() != §§pop())
                           {
                              continue loop0;
                           }
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 throw new Error("Invalid root class: " + this.§'7§);
                              }
                              break loop0;
                           }
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr96);
                              }
                              break;
                              addr33:
                              §§pop().addChild(this.§,=§);
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 return;
                              }
                              addr117:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                           §§goto(addr110);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr117);
      }
      
      private function §?!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§54§ = true;
         }
         while(true)
         {
            this.mStage3D.x = this.§2!"§.x;
            while(_loc2_)
            {
               this.mStage3D.y = this.§2!"§.y;
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function render() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            §§push(§`4§());
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
            }
         }
         §§goto(addr81);
      }
      
      public function set §83§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!D§ = param1;
         }
      }
      
      private function §8!>§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            this.§&!W§.x = this.§2!"§.x;
            if(!(_loc5_ && _loc2_))
            {
               this.§&!W§.y = this.§2!"§.y;
            }
         }
         var _loc1_:int = this.§&!W§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§&!W§.parent;
         if(_loc4_ || _loc2_)
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               addr244:
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
                              addr248:
                              while(true)
                              {
                                 §§pop();
                                 addr249:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                 }
                              }
                              addr248:
                           }
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    this.§0!A§.addChild(this.§&!W§);
                                    loop20:
                                    while(true)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(this.§@!Z§);
                                          if(!_loc5_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   while(_loc4_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr228);
                                                      }
                                                   }
                                                   continue loop4;
                                                   addr225:
                                                }
                                                if(§§pop())
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         addr169:
                                                         §§pop();
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               if(_loc5_ && _loc3_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               §§push(this.§@!Z§);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(Boolean(§§pop().canvas));
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     addr77:
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc3_))
                                                                                    {
                                                                                       if(!(_loc5_ && _loc1_))
                                                                                       {
                                                                                          §§push(this.§@!Z§);
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             addr115:
                                                                                             §§pop().setCanvasSize(this.§+;§,this.§5!F§,this.§2!"§.width / this.§18§.stageWidth,this.§2!"§.height / this.§18§.stageHeight);
                                                                                             addr134:
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(this.§@!Z§);
                                                                                             }
                                                                                             continue loop12;
                                                                                             break loop12;
                                                                                          }
                                                                                          break loop12;
                                                                                       }
                                                                                       §§goto(addr249);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(_loc2_));
                                                                                          break loop14;
                                                                                       }
                                                                                       addr229:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§0!A§.removeChild(this.§&!W§);
                                                                                    addr206:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr134);
                                                                           }
                                                                           break;
                                                                           §§goto(addr77);
                                                                        }
                                                                        addr319:
                                                                        return;
                                                                        addr84:
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               §§goto(addr115);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr192:
                                                               if(!(_loc4_ || this))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr201);
                                                                  §§goto(addr192);
                                                               }
                                                            }
                                                            §§goto(addr248);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr228:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                         }
                                                         addr228:
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                   continue loop7;
                                                   addr163:
                                                }
                                                §§goto(addr84);
                                                §§goto(addr199);
                                             }
                                             §§goto(addr163);
                                          }
                                          break;
                                       }
                                       _loc3_ = §§pop().canvas;
                                       if(!(_loc5_ && this))
                                       {
                                          if(this.§&!J§.bitmapData != _loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                this.§&!J§.bitmapData = _loc3_;
                                             }
                                             addr318:
                                          }
                                          addr274:
                                          if(this.§0!A§.getChildIndex(this.§&!W§) > 0)
                                          {
                                             if(!(_loc5_ && this))
                                             {
                                                if(!_loc5_)
                                                {
                                                   this.§0!A§.removeChild(this.§&!W§);
                                                   this.§0!A§.addChildAt(this.§&!W§,0);
                                                   addr296:
                                                   if(!_loc5_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                   addr296:
                                                   §§goto(addr296);
                                                }
                                                §§goto(addr318);
                                             }
                                             §§goto(addr296);
                                          }
                                          §§goto(addr319);
                                       }
                                       §§goto(addr296);
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
         §§goto(addr249);
      }
      
      private function §@!B§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!_loc4_)
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
               while(true)
               {
                  _loc2_.width = this.§18§.stageWidth * 0.75;
                  loop3:
                  while(true)
                  {
                     _loc2_.autoSize = TextFieldAutoSize.CENTER;
                     addr130:
                     while(true)
                     {
                        _loc2_.text = param1;
                        loop5:
                        while(true)
                        {
                           _loc2_.x = (this.§18§.stageWidth - _loc2_.width) / 2;
                           addr117:
                           while(!_loc4_)
                           {
                              _loc2_.y = (this.§18§.stageHeight - _loc2_.height) / 2;
                              while(_loc5_)
                              {
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop1;
                        }
                     }
                  }
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  _loc2_.background = true;
                  loop8:
                  for(; !_loc4_; if(!(_loc5_ || param1))
                  {
                     continue;
                  },if(_loc5_)
                  {
                     return;
                  },§§goto(addr117))
                  {
                     _loc2_.backgroundColor = 4456448;
                     while(_loc5_)
                     {
                        if(_loc5_)
                        {
                           this.§<!#§.addChild(_loc2_);
                           if(!_loc4_)
                           {
                              continue loop8;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr89);
               }
            }
         }
      }
      
      public function §>`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §[U§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!A§ = true;
            do
            {
               this.mStage3D.visible = this.mStage3DEnabled;
            }
            while(_loc1_);
            
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+!A§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function §]K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§%!`§ = param1;
         }
      }
      
      private function §]H§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§"&§ = true;
            loop0:
            while(this.§&!J§ == null)
            {
               while(true)
               {
                  this.§&!J§ = new Bitmap();
                  do
                  {
                     this.§<!#§.addChild(this.§&!J§);
                  }
                  while(_loc2_);
                  
                  if(!_loc2_)
                  {
                     if(_loc1_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function §0%§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]H§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(!_loc2_);
            
         }
      }
      
      private function §3!c§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(this.§8N§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     return;
                  }
                  loop30:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§+!'§.§@N§);
                        loop3:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       addr345:
                                       while(true)
                                       {
                                          §§push(Boolean(this.§`!D§));
                                          addr325:
                                          while(_loc4_ || param1)
                                          {
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          this.§>`§();
                                          loop11:
                                          while(true)
                                          {
                                             this.§89§();
                                             loop12:
                                             for(; !_loc5_; while(true)
                                             {
                                                if(_loc5_ && this)
                                                {
                                                   continue loop12;
                                                }
                                                if(_loc5_ && _loc2_)
                                                {
                                                   continue loop30;
                                                }
                                                §§push(this.§'x§);
                                                if(_loc4_ || param1)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr237);
                                             })
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   this.§8!'§();
                                                   while(_loc4_ || _loc2_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Boolean(this.§`!D§));
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               while(_loc4_ || this)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop4;
                                                               addr259:
                                                            }
                                                            while(true)
                                                            {
                                                               addr237:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           this.mStage3DEnabled = false;
                                                                           loop19:
                                                                           for(; _loc4_; while(!(_loc5_ && param1))
                                                                           {
                                                                              addr155:
                                                                              if(_loc4_ || param1)
                                                                              {
                                                                                 §§goto(addr121);
                                                                                 §§push(this.§@!Z§);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§@!Z§);
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§goto(addr367);
                                                                                    }
                                                                                    §§goto(addr155);
                                                                                 }
                                                                                 addr374:
                                                                              }
                                                                              §§goto(addr369);
                                                                           })
                                                                           {
                                                                              this.§`!D§ = null;
                                                                              while(true)
                                                                              {
                                                                                 this.§]H§();
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       continue loop18;
                                                                                    }
                                                                                    if(!(_loc4_ || _loc2_))
                                                                                    {
                                                                                       addr334:
                                                                                       this.§@!B§("Fatal error: The application lost the device context!");
                                                                                       this.stop();
                                                                                       break loop19;
                                                                                       addr337:
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(this.§`!D§)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          this.§@!Z§ = new §5I§();
                                                                                          continue loop19;
                                                                                       }
                                                                                       addr163:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§@!Z§);
                                                                                          break loop21;
                                                                                       }
                                                                                       addr367:
                                                                                    }
                                                                                 }
                                                                                 addr369:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().dispose();
                                                                                    continue loop30;
                                                                                 }
                                                                              }
                                                                           }
                                                                           return;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                     continue loop30;
                                                                  }
                                                                  §§goto(addr163);
                                                               }
                                                               addr235:
                                                            }
                                                            addr226:
                                                            if(_loc5_ && _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr235);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr325);
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   continue loop11;
                                                }
                                                §§goto(addr345);
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    §§goto(addr334);
                                 }
                              }
                           }
                        }
                        continue loop30;
                     }
                  }
               }
               else
               {
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§]!4§)).§]!4§);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc4_ || this)
                  {
                     _loc2_.§]!4§ = _loc3_;
                  }
                  if(_loc4_)
                  {
                     this.§!M§ = §]!4§;
                     §§goto(addr374);
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr268);
         }
         §§goto(addr80);
      }
      
      public function §@8§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            this.§>`§();
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
            §§push(§§pop() - this.§;X§);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(this.§+!A§);
            if(!(_loc5_ && this))
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§pop();
                        addr126:
                        while(true)
                        {
                           §§push(_loc3_ > 1);
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop4;
                        }
                     }
                     addr125:
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(this.§&!W§)
                        {
                           §§goto(addr74);
                        }
                        addr66:
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        while(true)
                        {
                           this.render();
                        }
                        addr96:
                     }
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           this.§8!>§();
                        }
                        if(_loc4_)
                        {
                           §§goto(addr66);
                        }
                     }
                     continue;
                     return;
                  }
               }
            }
            §§goto(addr125);
         }
         §§goto(addr96);
      }
      
      private function §'!7§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§>`§();
            do
            {
               this.§18§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(!_loc2_);
            
         }
      }
      
      public function setCanvasSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() / this.§[!L§);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(param2);
         if(!_loc6_)
         {
            §§push(§§pop() / this.§68§);
            if(!_loc6_)
            {
               addr40:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(_loc7_)
            {
               if(param3)
               {
                  §§push(this.§18§);
                  loop0:
                  while(true)
                  {
                     §§push(this.§[!L§);
                     loop1:
                     while(true)
                     {
                        §§pop().stageWidth = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(this.§18§);
                           loop3:
                           for(; !_loc6_; §§push(this.§18§),if(!_loc7_)
                           {
                              continue;
                           },if(_loc7_)
                           {
                              §§goto(addr56);
                           },§§goto(addr163))
                           {
                              if(_loc7_)
                              {
                                 §§push(this.§68§);
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc7_)
                                             {
                                                addr127:
                                                if(_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                if(_loc7_)
                                                {
                                                   addr132:
                                                   §§push(_loc4_);
                                                   if(_loc7_ || param3)
                                                   {
                                                      addr140:
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§pop().stageHeight = §§pop();
                                                         loop4:
                                                         while(_loc7_ || param1)
                                                         {
                                                            loop5:
                                                            while(true)
                                                            {
                                                               this.§+;§ = param1;
                                                               loop6:
                                                               while(_loc7_)
                                                               {
                                                                  this.§5!F§ = param2;
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     addr171:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§18§);
                                                                        addr183:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§[!L§);
                                                                        }
                                                                     }
                                                                     addr56:
                                                                     §§pop().dispatchEvent(new §5k§(flash.events.Event.RESIZE,param1,param2));
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break loop5;
                                                                           }
                                                                           loop8:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§18§);
                                                                              addr163:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§68§);
                                                                                 addr165:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       break loop8;
                                                                                    }
                                                                                    break loop7;
                                                                                 }
                                                                              }
                                                                              addr189:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().stageWidth = §§pop();
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           §§pop().stageHeight = §§pop();
                                                                           break loop6;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     addr188:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr189);
                                                                     }
                                                                  }
                                                               }
                                                               addr168:
                                                               while(true)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            return;
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr186:
                                                         while(true)
                                                         {
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr165);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr186);
                                       }
                                       §§goto(addr132);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr183);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr171);
            }
            §§goto(addr168);
         }
         §§goto(addr40);
      }
      
      public function §^!&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.setCanvasSize(this.§[!L§,this.§68§);
         }
      }
      
      private function §%!+§(param1:flash.events.Event) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:MouseEvent = null;
         var _loc7_:TouchEvent = null;
         if(_loc10_ || _loc3_)
         {
            §§push(this.§+!A§);
            if(_loc10_ || _loc3_)
            {
               §§push(!§§pop());
               if(!_loc9_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        §§pop();
                        if(_loc10_)
                        {
                           §§push(this.§%!`§);
                           if(!_loc9_)
                           {
                              addr67:
                              §§push(!§§pop());
                              if(_loc10_)
                              {
                                 addr70:
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§goto(addr73);
                                    }
                                 }
                                 addr79:
                                 if(param1 is MouseEvent)
                                 {
                                    addr80:
                                    §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                    if(!_loc9_)
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          addr144:
                                          _loc3_ = Number(_loc6_.stageY);
                                          loop30:
                                          while(true)
                                          {
                                             _loc4_ = 0;
                                             loop31:
                                             while(true)
                                             {
                                                addr127:
                                                while(param1.type != MouseEvent.MOUSE_DOWN)
                                                {
                                                   if(param1.type == MouseEvent.MOUSE_UP)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         continue loop31;
                                                      }
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         if(_loc10_)
                                                         {
                                                            this.§<!8§ = false;
                                                            continue loop31;
                                                         }
                                                         continue loop30;
                                                      }
                                                   }
                                                   var _loc8_:* = param1.type;
                                                   if(!_loc9_)
                                                   {
                                                      if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            §§push(0);
                                                            if(!_loc10_)
                                                            {
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr420:
                                                            §§push(4);
                                                            if(_loc10_)
                                                            {
                                                               addr423:
                                                            }
                                                            else
                                                            {
                                                               addr431:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                         {
                                                            if(!(_loc9_ && _loc2_))
                                                            {
                                                               §§push(1);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  addr436:
                                                                  loop33:
                                                                  switch(§§pop())
                                                                  {
                                                                     case 0:
                                                                        §§push(§9i§.§%J§);
                                                                        if(!(_loc9_ && _loc2_))
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr665:
                                                                                 §§push(_loc2_);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < this.§2!"§.left);
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             loop3:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   loop5:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() >= this.§2!"§.right);
                                                                                                      addr485:
                                                                                                      if(!(_loc10_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr493:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         for(; _loc10_; this.§]!P§.§&I§(_loc4_,_loc5_,_loc2_,_loc3_),if(_loc10_ || this)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               return;
                                                                                                               addr462:
                                                                                                            }
                                                                                                            break loop33;
                                                                                                         })
                                                                                                         {
                                                                                                            if(!(_loc9_ && _loc3_))
                                                                                                            {
                                                                                                               addr510:
                                                                                                               if(!(_loc9_ && _loc2_))
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr654:
                                                                                                                  loop10:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     loop11:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() < this.§2!"§.top);
                                                                                                                        if(!(_loc9_ && _loc2_))
                                                                                                                        {
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           loop24:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop12:
                                                                                                                                    while(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          loop14:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() >= this.§2!"§.bottom);
                                                                                                                                             if(!(_loc9_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                loop15:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr589:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      if(!(_loc9_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         break loop15;
                                                                                                                                                      }
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(!(_loc10_ || this))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop23:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc10_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      addr614:
                                                                                                                                                      §§pop();
                                                                                                                                                      loop22:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            continue loop4;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() == §9i§.§%J§);
                                                                                                                                                            if(_loc10_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               break loop22;
                                                                                                                                                            }
                                                                                                                                                            continue loop23;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr614);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      continue loop10;
                                                                                                                                                   }
                                                                                                                                                   addr605:
                                                                                                                                                   addr653:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr573);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      if(!(_loc9_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - this.§2!"§.x);
                                                                                                                                                         continue loop11;
                                                                                                                                                      }
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   continue loop0;
                                                                                                                                                   §§goto(addr561);
                                                                                                                                                }
                                                                                                                                                continue loop5;
                                                                                                                                                addr588:
                                                                                                                                             }
                                                                                                                                             §§goto(addr605);
                                                                                                                                          }
                                                                                                                                          addr652:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                continue loop24;
                                                                                                                                             }
                                                                                                                                             §§goto(addr653);
                                                                                                                                          }
                                                                                                                                          §§goto(addr510);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr652);
                                                                                                                                    }
                                                                                                                                    addr640:
                                                                                                                                    addr651:
                                                                                                                                 }
                                                                                                                                 §§goto(addr588);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr640);
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr643);
                                                                                                            }
                                                                                                            §§goto(addr615);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc10_ || this)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§goto(addr467);
                                                                                                                  }
                                                                                                                  §§goto(addr493);
                                                                                                               }
                                                                                                               addr558:
                                                                                                            }
                                                                                                            addr573:
                                                                                                            return;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr535);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr651);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           addr308:
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr281:
                                                                              §§goto(addr665);
                                                                           }
                                                                           §§goto(addr654);
                                                                        }
                                                                        §§goto(addr308);
                                                                     case 1:
                                                                        addr344:
                                                                        _loc5_ = §9i§.§]W§;
                                                                        §§goto(addr665);
                                                                        addr343:
                                                                        addr345:
                                                                     case 2:
                                                                        addr320:
                                                                        §§push(§9i§.§9a§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop());
                                                                        }
                                                                        _loc5_ = §§pop();
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           §§goto(addr665);
                                                                        }
                                                                        break;
                                                                     case 3:
                                                                        §§goto(addr308);
                                                                     case 4:
                                                                        addr286:
                                                                        §§push(§9i§.§%J§);
                                                                        §§push(§9i§.§9a§);
                                                                        if(!_loc9_)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr291:
                                                                              §§push(§§pop());
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr665);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr308);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr343);
                                                                           }
                                                                           §§goto(addr665);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr308);
                                                                        }
                                                                     case 5:
                                                                        §§push(this.§<!8§);
                                                                        if(!(_loc9_ && this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc10_ || param1)
                                                                              {
                                                                                 §§push(§9i§.§]W§);
                                                                                 if(_loc10_ || param1)
                                                                                 {
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr261:
                                                                                          §§push(§§pop());
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             addr269:
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr281);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                §§goto(addr665);
                                                                                             }
                                                                                             §§goto(addr462);
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr237:
                                                                                          if(_loc10_ || _loc2_)
                                                                                          {
                                                                                             if(!(_loc9_ && _loc3_))
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc9_ && param1))
                                                                                                   {
                                                                                                      §§goto(addr261);
                                                                                                   }
                                                                                                   §§goto(addr561);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr320);
                                                                                             }
                                                                                             §§goto(addr665);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr286);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr654);
                                                                                    }
                                                                                    §§goto(addr291);
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              §§goto(addr558);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§9i§.§'+§);
                                                                              if(!(_loc9_ && _loc2_))
                                                                              {
                                                                                 §§goto(addr237);
                                                                              }
                                                                           }
                                                                           §§goto(addr269);
                                                                        }
                                                                        §§goto(addr589);
                                                                     default:
                                                                        §§goto(addr665);
                                                                  }
                                                                  continue loop29;
                                                               }
                                                               §§goto(addr423);
                                                            }
                                                         }
                                                         else if(TouchEvent.TOUCH_END === _loc8_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§push(2);
                                                               if(_loc10_ || _loc3_)
                                                               {
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr405:
                                                               §§push(3);
                                                               if(_loc9_ && param1)
                                                               {
                                                               }
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr405);
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_UP === _loc8_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               §§goto(addr420);
                                                            }
                                                         }
                                                         else if(MouseEvent.MOUSE_MOVE !== _loc8_)
                                                         {
                                                            §§goto(addr436);
                                                            §§push(6);
                                                         }
                                                         §§goto(addr436);
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr431);
                                                         }
                                                      }
                                                      §§goto(addr436);
                                                   }
                                                   §§goto(addr420);
                                                }
                                             }
                                          }
                                       }
                                       this.§<!8§ = true;
                                       §§goto(addr136);
                                    }
                                    §§goto(addr144);
                                 }
                                 else
                                 {
                                    §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc9_)
                                       {
                                          addr168:
                                          _loc3_ = Number(_loc7_.stageY);
                                          if(_loc9_)
                                          {
                                          }
                                          §§goto(addr175);
                                       }
                                       _loc4_ = _loc7_.touchPointID;
                                       §§goto(addr175);
                                    }
                                    §§goto(addr168);
                                 }
                              }
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr70);
               }
               §§goto(addr67);
            }
            §§goto(addr70);
         }
         addr73:
      }
      
      private function get §@f§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §;!a§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(!(_loc6_ && param1))
         {
            if(param1 in this.§?#§)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr48);
               }
               else
               {
                  addr63:
                  (_loc4_ = this.§`!D§.createProgram()).upload(param2,param3);
                  if(_loc5_ || this)
                  {
                     this.§?#§[param1] = _loc4_;
                  }
               }
            }
            else if(this.§`!D§ != null)
            {
               §§goto(addr63);
            }
            return;
         }
         addr48:
         throw new Error("Another program with this name is already registered");
      }
      
      public function §!!W§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§>!T§(param1);
         if(_loc3_ || _loc2_)
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  _loc2_.dispose();
                  addr73:
                  while(true)
                  {
                     delete this.§?#§[param1];
                     if(!_loc4_)
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr39);
               }
            }
            addr39:
            return;
         }
         §§goto(addr73);
      }
      
      public function §>!T§(param1:String) : Program3D
      {
         return this.§?#§[param1] as Program3D;
      }
      
      public function §9!A§(param1:String) : Boolean
      {
         return param1 in this.§?#§;
      }
      
      public function get §@!c§() : Boolean
      {
         return this.§+!A§;
      }
      
      public function get §9!;§() : §3!2§
      {
         return this.§@U§;
      }
      
      public function get simulateMultitouch() : Boolean
      {
         return this.§5>§;
      }
      
      public function set simulateMultitouch(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§5>§ = param1;
         }
         while(this.§`!D§)
         {
            if(!_loc3_)
            {
               if(_loc3_)
               {
                  continue;
               }
               this.§]!P§.simulateMultitouch = param1;
            }
            break;
         }
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§<V§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§<V§ = param1;
         }
         while(this.§`!D§)
         {
            if(_loc2_)
            {
               if(!_loc2_)
               {
                  continue;
               }
               this.§`!D§.enableErrorChecking = param1;
            }
            break;
         }
      }
      
      public function get §<!W§() : int
      {
         return this.§[§;
      }
      
      public function set §<!W§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§[§ = param1;
            do
            {
               this.§?!P§();
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function get §9!_§() : Rectangle
      {
         return this.§2!"§.clone();
      }
      
      public function set §9!_§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2!"§ = param1.clone();
         }
         do
         {
            this.§?!P§();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function get §<!#§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§&!W§ == null)
            {
               if(_loc3_ || _loc1_)
               {
                  addr48:
                  this.§&!W§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!(_loc2_ && this))
               {
                  _loc1_.hideBuiltInItems();
                  loop0:
                  while(true)
                  {
                     addr71:
                     while(true)
                     {
                        this.§&!W§.contextMenu = _loc1_;
                        addr86:
                        while(!_loc2_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§8!>§();
                  if(_loc3_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr86);
               }
            }
            return this.§&!W§;
         }
         §§goto(addr48);
      }
      
      public function get stage() : §2Y§.Stage
      {
         return this.§18§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §%4§() : flash.display.Stage
      {
         return this.§0!A§;
      }
      
      public function get §<!]§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§"&§);
         if(_loc1_ || _loc1_)
         {
            return !§§pop();
         }
      }
   }
}
