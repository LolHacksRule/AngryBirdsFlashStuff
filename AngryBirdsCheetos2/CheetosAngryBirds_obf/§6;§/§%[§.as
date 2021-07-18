package §6;§
{
   import §[!-§.§]-§;
   import §]!a§.Texture;
   import §^a§.DisplayObject;
   import §^a§.Stage;
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
   import starling.events.§1a§;
   import starling.events.§?!E§;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.KeyboardEvent;
   import starling.events.§^!c§;
   
   public class §%[§ extends EventDispatcher
   {
      
      public static const VERSION:String = "1.0";
      
      private static var §4#§:Rectangle;
      
      private static var §^!=§:Boolean = true;
      
      private static var §"!O§:Boolean;
      
      private static var §8U§:§%[§;
      
      private static var §1!g§:Boolean;
      
      private static var §7h§:int;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            VERSION = "1.0";
         }
         do
         {
            §^!=§ = true;
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private var mStage3D:Stage3D;
      
      private var §!H§:§^a§.Stage;
      
      private var §1x§:Class;
      
      private var §-u§:§^a§.DisplayObject;
      
      private var §9a§:§]-§;
      
      private var §1!5§:Boolean;
      
      private var §%+§:Boolean;
      
      private var §!_§:§2^§;
      
      private var §'l§:§1a§;
      
      private var §,!8§:int;
      
      private var §-W§:Boolean;
      
      private var §;y§:Boolean;
      
      private var §<,§:Number;
      
      private var § !V§:Boolean;
      
      private var §8T§:flash.display.Stage;
      
      private var §1!i§:Sprite;
      
      private var §<S§:Context3D;
      
      private var §3!N§:Dictionary;
      
      private var §%"§:int;
      
      private var §?F§:Boolean;
      
      private var §7L§:Number;
      
      private var §4!V§:Number;
      
      private var §-R§:Number;
      
      private var §?f§:Number;
      
      private var §7k§:Number;
      
      private var §0H§:Number;
      
      private var §'!W§:Function;
      
      private var §^!0§:uint;
      
      private var §9P§:String;
      
      private var §6n§:Bitmap;
      
      private var §=!L§:Boolean = false;
      
      private var mStage3DEnabled:Boolean = true;
      
      private var §`!<§:Boolean = false;
      
      public function §%[§(param1:Class, param2:flash.display.Stage, param3:Rectangle = null, param4:Stage3D = null, param5:String = "auto")
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:String = null;
         if(!(_loc10_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               if(param2 != null)
               {
                  do
                  {
                     if(param1 == null)
                     {
                        if(_loc9_)
                        {
                           continue;
                        }
                        §§goto(addr262);
                     }
                     else
                     {
                        if(param3 == null)
                        {
                           if(!(_loc10_ && param2))
                           {
                              param3 = new Rectangle(0,0,param2.stageWidth,param2.stageHeight);
                              addr94:
                              if(param4 == null)
                              {
                                 if(_loc9_)
                                 {
                                    param4 = param2.stage3Ds[0];
                                    addr105:
                                    this.§7L§ = param3.width;
                                    if(_loc9_ || param3)
                                    {
                                       this.§4!V§ = param3.height;
                                       §§goto(addr321);
                                    }
                                    break loop0;
                                 }
                                 §§goto(addr228);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr198);
                        }
                        §§goto(addr94);
                     }
                  }
                  while(!(_loc9_ || param1));
                  
                  throw new ArgumentError("Root class must not be null");
               }
               if(_loc9_ || param1)
               {
                  continue;
               }
               loop23:
               while(true)
               {
                  this.§-W§ = false;
                  loop15:
                  while(true)
                  {
                     if(!(_loc10_ && param2))
                     {
                        while(true)
                        {
                           this.§;y§ = false;
                           loop3:
                           while(!_loc10_)
                           {
                              if(!(_loc10_ && param3))
                              {
                                 if(_loc9_ || param3)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       this.§<,§ = getTimer() / 1000;
                                       while(true)
                                       {
                                          if(_loc10_ && param2)
                                          {
                                             continue loop15;
                                          }
                                          if(_loc9_)
                                          {
                                             if(_loc9_ || param3)
                                             {
                                                this.§3!N§ = new Dictionary();
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc9_)
                                                {
                                                   break loop4;
                                                }
                                                if(_loc9_ || param1)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(false)
                                                      {
                                                         continue loop4;
                                                      }
                                                      var _loc7_:int = 0;
                                                      var _loc8_:* = this.§'<§;
                                                      addr350:
                                                      for each(_loc6_ in _loc8_)
                                                      {
                                                         if(_loc9_ || param2)
                                                         {
                                                            param2.addEventListener(_loc6_,this.§#!f§,false,0,true);
                                                         }
                                                         §§goto(addr350);
                                                      }
                                                      if(!_loc10_)
                                                      {
                                                         param2.addEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'t§,false,0,true);
                                                         param2.addEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'t§,false,0,true);
                                                         this.mStage3D.addEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&!S§,false,1,true);
                                                         this.mStage3D.addEventListener(ErrorEvent.ERROR,this.§^d§,false,1,true);
                                                         addr461:
                                                         addr441:
                                                         if(!_loc10_)
                                                         {
                                                            this.mStage3D.visible = false;
                                                            addr397:
                                                            if(_loc9_ || param2)
                                                            {
                                                               this.§8!L§(true);
                                                               addr389:
                                                               if(!_loc10_)
                                                               {
                                                                  this.§^!0§ = param2.color;
                                                                  addr375:
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        this.§9P§ = param5;
                                                                        if(_loc9_)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr461);
                                                                           }
                                                                           return;
                                                                        }
                                                                        §§goto(addr375);
                                                                     }
                                                                     §§goto(addr397);
                                                                  }
                                                                  §§goto(addr389);
                                                               }
                                                               §§goto(addr461);
                                                            }
                                                            §§goto(addr441);
                                                            addr418:
                                                         }
                                                         addr430:
                                                         §§goto(addr430);
                                                      }
                                                      §§goto(addr418);
                                                   }
                                                   else
                                                   {
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            this.§'l§ = new §1a§(this.§!H§);
                                                            addr262:
                                                            while(true)
                                                            {
                                                               this.§9a§ = new §]-§();
                                                               addr228:
                                                               while(true)
                                                               {
                                                                  this.§,!8§ = 0;
                                                                  break loop3;
                                                               }
                                                               continue loop15;
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(_loc9_ || this);
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     break loop10;
                                                                  }
                                                                  this.§!H§ = new §^a§.Stage(param3.width,param3.height,param2.color);
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.mStage3D = param4;
                                                                           continue loop10;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr274:
                                                                     }
                                                                     this.§8T§ = param2;
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     break loop0;
                                                                  }
                                                                  §4#§ = param3;
                                                                  §§goto(addr274);
                                                               }
                                                               break;
                                                               §§goto(addr262);
                                                            }
                                                            addr262:
                                                            while(true)
                                                            {
                                                               this.§ !]§();
                                                               addr287:
                                                               while(true)
                                                               {
                                                                  this.§1x§ = param1;
                                                                  §§goto(addr279);
                                                               }
                                                            }
                                                            addr279:
                                                            addr292:
                                                            addr236:
                                                         }
                                                         addr304:
                                                         loop14:
                                                         while(true)
                                                         {
                                                            this.§0H§ = param2.stageHeight;
                                                            addr298:
                                                            while(true)
                                                            {
                                                               §[!e§ = true;
                                                               §§goto(addr292);
                                                               continue loop14;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr228);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§?f§ = this.§4!V§;
                                                   break loop0;
                                                }
                                                addr316:
                                             }
                                          }
                                          §§goto(addr298);
                                       }
                                       continue loop15;
                                    }
                                    continue;
                                 }
                                 addr321:
                                 while(true)
                                 {
                                    this.§-R§ = this.§7L§;
                                 }
                                 §§goto(addr316);
                              }
                              §§goto(addr287);
                           }
                           while(true)
                           {
                              if(!(_loc10_ && param2))
                              {
                                 if(!_loc10_)
                                 {
                                    continue loop23;
                                 }
                                 §§goto(addr262);
                              }
                              §§goto(addr255);
                           }
                           continue loop15;
                        }
                        addr198:
                     }
                     §§goto(addr236);
                  }
               }
               §§goto(addr321);
            }
            while(true)
            {
               this.§7k§ = param2.stageWidth;
               §§goto(addr304);
            }
         }
         throw new ArgumentError("Stage must not be null");
      }
      
      public static function get §4$§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§`1§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     addr45:
                     §§push(§`1§.§?F§);
                     if(!(_loc2_ && §%[§))
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
      
      public static function §2U§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§8U§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
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
                              §§push(§8U§);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop().§=!L§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop7:
                                    while(_loc2_ || _loc1_)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             loop9:
                                             while(true)
                                             {
                                                §§pop();
                                                loop10:
                                                while(_loc2_)
                                                {
                                                   §§push(§8U§);
                                                   loop11:
                                                   while(!_loc1_)
                                                   {
                                                      §§push(§§pop().§<S§ == null);
                                                      if(_loc2_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(_loc1_)
                                                         {
                                                            break;
                                                         }
                                                         continue loop11;
                                                         addr50:
                                                         while(true)
                                                         {
                                                            §§push(§8U§);
                                                            if(!_loc2_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(§§pop().§<S§.driverInfo == "Disposed");
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               if(!(_loc2_ || §%[§))
                                                               {
                                                                  continue loop7;
                                                               }
                                                               §§push(!§§pop());
                                                            }
                                                            §§goto(addr50);
                                                         }
                                                         if(!(_loc1_ && _loc1_))
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc1_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               addr99:
                                                            }
                                                            §§goto(addr61);
                                                         }
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                     addr61:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      private static function §9!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §"!O§ = true;
         }
      }
      
      public static function get §^'§() : Rectangle
      {
         return §4#§.clone();
      }
      
      public static function set §^'§(param1:Rectangle) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4#§ = param1.clone();
            do
            {
               §9!R§();
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public static function set §%!=§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §^!=§ = param1;
         }
      }
      
      public static function get §%!=§() : Boolean
      {
         return §^!=§;
      }
      
      public static function get §`1§() : §%[§
      {
         return §8U§;
      }
      
      public static function get §6+§() : §]-§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§8U§);
            if(!_loc1_)
            {
               return !!§§pop() ? §8U§.§6+§ : null;
            }
         }
         §§goto(addr44);
      }
      
      public static function get §;'§() : Boolean
      {
         return Multitouch.inputMode == MultitouchInputMode.TOUCH_POINT;
      }
      
      public static function set §;'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            Multitouch.inputMode = !!param1 ? MultitouchInputMode.TOUCH_POINT : MultitouchInputMode.NONE;
         }
      }
      
      public static function get §[!e§() : Boolean
      {
         return §1!g§;
      }
      
      public static function set §[!e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§8U§ == null)
            {
               do
               {
                  §1!g§ = param1;
               }
               while(_loc3_);
               
               if(!_loc3_)
               {
                  return;
               }
            }
         }
         throw new IllegalOperationError("Setting must be changed before Starling instance is created");
      }
      
      public static function §&!>§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §%[§))
         {
            if(§`1§)
            {
               if(!(_loc4_ && param1))
               {
                  return Texture.§%!8§(§`1§.§<S§,param1,param2,param3);
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
         if(!_loc3_)
         {
            §§push(§8U§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop().§<S§)
               {
                  if(_loc4_)
                  {
                     §§push(§8U§);
                     if(_loc4_ || _loc2_)
                     {
                        §§pop().§<S§.drawToBitmapData(param1);
                        addr42:
                        if(_loc3_)
                        {
                           addr78:
                           _loc2_ = §8U§.§!_§.canvas;
                           addr76:
                           if(!_loc3_)
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
                     else
                     {
                        addr66:
                        §§push(§§pop().§!_§);
                        if(_loc4_ || param1)
                        {
                           if(§§pop().canvas)
                           {
                              §§goto(addr76);
                           }
                           addr105:
                           return;
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr57);
               }
               else
               {
                  §§push(§8U§);
                  if(!(_loc3_ && param1))
                  {
                     §§goto(addr66);
                  }
               }
               §§goto(addr78);
            }
            §§goto(addr42);
         }
         §§goto(addr57);
      }
      
      public function get §-h§() : §^a§.DisplayObject
      {
         return this.§-u§;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^!0§ = param1;
         }
      }
      
      public function get § "§() : Number
      {
         return this.§7L§;
      }
      
      public function get §`5§() : Number
      {
         return this.§4!V§;
      }
      
      public function § !a§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[1] = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        addr69:
                        while(true)
                        {
                           §§pop().§§slot[2] = §§pop();
                           while(true)
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 while(_loc3_)
                                 {
                                    §§pop().§§slot[3] = false;
                                    while(true)
                                    {
                                       §§push(§§newactivation());
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                       addr40:
                                       §§pop().§§slot[4] = §§pop();
                                       if(_loc4_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(!(_loc3_ || this))
                                       {
                                          break loop7;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop3;
                                       }
                                       if(false)
                                       {
                                          continue loop7;
                                       }
                                       try
                                       {
                                          addr179:
                                          §§push(§§newactivation());
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§pop().§§slot[1] = "flash.display3D.Context3DProfile";
                                             if(_loc3_)
                                             {
                                                addr187:
                                                var requestContext3D:Function = this.mStage3D.requestContext3D;
                                             }
                                             §§push(§§newactivation());
                                             addr192:
                                          }
                                          §§pop().§§slot[3] = requestContext3D.length > 1;
                                          addr185:
                                          §§push(§§newactivation());
                                          if(_loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                if(§§pop().§§slot[3])
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§goto(addr185);
                                                      }
                                                      addr174:
                                                      var profile:String = "baselineConstrained";
                                                   }
                                                   addr154:
                                                   requestContext3D(this.§9P§,profile);
                                                   addr176:
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr176);
                                                   }
                                                   return;
                                                   addr148:
                                                   addr193:
                                                   addr152:
                                                   addr151:
                                                   addr150:
                                                }
                                                §§push(§§newactivation());
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc4_ && _loc2_))
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(§§pop().§§slot[2]);
                                                         if(_loc3_)
                                                         {
                                                            §§push(global);
                                                            if(!(_loc4_ && _loc1_))
                                                            {
                                                               §§push(this.§9P§);
                                                               if(_loc3_ || _loc1_)
                                                               {
                                                                  §§pop()(§§pop());
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc4_ && this)
                                                                     {
                                                                        §§goto(addr192);
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr148);
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                                  §§goto(addr176);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr152);
                                                         }
                                                         §§goto(addr151);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr174);
                                       }
                                       catch(e:Error)
                                       {
                                          §&]§("Context3D error: " + e.message);
                                          throw e;
                                       }
                                       §§goto(addr154);
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
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:String = null;
         var _loc2_:Program3D = null;
         if(!_loc5_)
         {
            this.§`!<§ = true;
            loop0:
            while(true)
            {
               this.§8T§.removeEventListener(flash.events.KeyboardEvent.KEY_DOWN,this.§'t§,false);
               while(true)
               {
                  this.§8T§.removeEventListener(flash.events.KeyboardEvent.KEY_UP,this.§'t§,false);
                  while(!(_loc5_ && this))
                  {
                     if(_loc6_)
                     {
                        loop3:
                        while(true)
                        {
                           this.mStage3D.removeEventListener(flash.events.Event.CONTEXT3D_CREATE,this.§&!S§,false);
                           do
                           {
                              this.mStage3D.removeEventListener(ErrorEvent.ERROR,this.§^d§,false);
                           }
                           while(_loc5_ && _loc2_);
                           
                           if(!_loc6_)
                           {
                              break;
                           }
                           while(false)
                           {
                              continue loop3;
                           }
                           var _loc3_:int = 0;
                           var _loc4_:* = this.§'<§;
                           loop6:
                           while(true)
                           {
                              §§push(§§hasnext(_loc4_,_loc3_));
                              if(!(_loc5_ && _loc3_))
                              {
                                 if(§§pop())
                                 {
                                    _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                    if(_loc6_ || _loc3_)
                                    {
                                       this.§8T§.removeEventListener(_loc1_,this.§#!f§,false);
                                    }
                                    continue;
                                 }
                                 if(_loc6_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(!_loc5_)
                                       {
                                          _loc3_ = 0;
                                          if(_loc6_)
                                          {
                                             _loc4_ = this.§3!N§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc4_,_loc3_));
                                                break loop6;
                                             }
                                             addr170:
                                             if(!_loc5_)
                                             {
                                                if(this.§<S§)
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      this.§<S§.dispose();
                                                      addr319:
                                                      while(true)
                                                      {
                                                      }
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         while(true)
                                                         {
                                                            addr269:
                                                            while(true)
                                                            {
                                                               §§push(this.§!_§);
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr284:
                                                                        this.§!_§.dispose();
                                                                     }
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ || _loc3_))
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(this.§6n§));
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop18:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr244:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(this.§6n§.bitmapData));
                                                                                          if(!(_loc5_ && this))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                    addr243:
                                                                                 }
                                                                                 loop15:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§goto(addr244);
                                                                                          continue;
                                                                                       }
                                                                                       if(!(_loc6_ || _loc2_))
                                                                                       {
                                                                                          break loop14;
                                                                                       }
                                                                                       this.§6n§.bitmapData.dispose();
                                                                                    }
                                                                                    loop17:
                                                                                    while(!_loc5_)
                                                                                    {
                                                                                       this.§6n§.bitmapData = null;
                                                                                       if(!(_loc5_ && _loc3_))
                                                                                       {
                                                                                          addr190:
                                                                                          if(_loc6_ || _loc2_)
                                                                                          {
                                                                                             break loop15;
                                                                                          }
                                                                                          addr249:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ || _loc2_)
                                                                                             {
                                                                                                §8U§ = null;
                                                                                                break loop17;
                                                                                             }
                                                                                             continue loop23;
                                                                                             §§goto(addr190);
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                    continue loop13;
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr243);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§'l§);
                                                                              addr299:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().dispose();
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr319);
                                                                     }
                                                                     addr285:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§8U§ == this)
                                                                     {
                                                                        §§goto(addr249);
                                                                     }
                                                                     §§goto(addr230);
                                                                     §§goto(addr285);
                                                                  }
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            continue loop23;
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§'l§);
                                                   if(!(_loc5_ && _loc1_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr269);
                                                   }
                                                   §§goto(addr299);
                                                }
                                             }
                                             §§goto(addr319);
                                             addr169:
                                             addr167:
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr312);
                                    }
                                    §§goto(addr170);
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
                                 if(_loc6_)
                                 {
                                    _loc2_.dispose();
                                 }
                                 continue;
                              }
                              §§goto(addr170);
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §2g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§<S§ = this.mStage3D.context3D;
         }
         while(true)
         {
            this.§3!N§ = new Dictionary();
            loop1:
            while(true)
            {
               if(this.§<S§)
               {
                  if(_loc1_)
                  {
                     this.§<S§.enableErrorChecking = this.§;y§;
                  }
                  loop2:
                  for(; this.§<S§.driverInfo.indexOf("Software") >= 0; if(_loc2_ && _loc1_)
                  {
                     continue;
                  },this.§?F§ = true,§§goto(addr87))
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     addr87:
                     while(true)
                     {
                        break loop2;
                     }
                  }
                  while(true)
                  {
                     do
                     {
                        §9!R§();
                     }
                     while(_loc2_ && _loc2_);
                     
                     return;
                  }
               }
               else
               {
                  this.§?F§ = true;
               }
               while(true)
               {
                  if(_loc1_)
                  {
                     continue loop1;
                  }
                  §§goto(addr87);
               }
            }
         }
      }
      
      private function §3e§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!H§);
            loop0:
            while(§§pop().numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  §§push(this.§-u§);
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
                              this.§-u§ = new this.§1x§();
                              addr111:
                              while(true)
                              {
                                 addr68:
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc1_)
                                    {
                                       throw new Error("Invalid root class: " + this.§1x§);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr97:
                        }
                        while(true)
                        {
                           §§push(this.§-u§);
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           §§push(null);
                           if(!_loc2_)
                           {
                              continue loop3;
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 §§goto(addr68);
                              }
                              else
                              {
                                 loop7:
                                 while(_loc2_ || _loc2_)
                                 {
                                    while(true)
                                    {
                                       addr24:
                                       while(true)
                                       {
                                          §§push(this.§!H§);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§pop().addChild(this.§-u§);
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             break loop0;
                                          }
                                          continue loop7;
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§goto(addr97);
                              }
                           }
                           §§goto(addr24);
                        }
                        continue loop2;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr91);
      }
      
      private function configureBackBuffer() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         try
         {
            this.§<S§.configureBackBuffer(§4#§.width,§4#§.height,this.§,!8§,false);
            if(_loc2_ || _loc3_)
            {
               §"!O§ = false;
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
         if(!(_loc4_ && _loc1_))
         {
            §§push(§2U§());
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(§"!O§);
                     loop2:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 if(!this.§<S§)
                                 {
                                    if(this.§6n§)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             if(!_loc3_)
                                             {
                                                §§goto(addr140);
                                             }
                                             §"!O§ = false;
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue;
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc3_ || _loc1_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr54:
                                                         break loop2;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr100:
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      addr131:
                                                      addr113:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_ || this);
                                                         while(!§§pop())
                                                         {
                                                            break loop4;
                                                         }
                                                         this.configureBackBuffer();
                                                      }
                                                      loop10:
                                                      while(true)
                                                      {
                                                         this.mStage3D.x = §4#§.x;
                                                         addr136:
                                                         while(true)
                                                         {
                                                            this.mStage3D.y = §4#§.y;
                                                            §§goto(addr113);
                                                            continue loop10;
                                                         }
                                                      }
                                                      addr113:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§"!O§);
                                                      if(!_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         addr99:
                                                         return;
                                                      }
                                                      continue loop8;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             addr74:
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr74);
                                    }
                                    break;
                                 }
                              }
                              §§goto(addr131);
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§push(getTimer() / 1000);
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     §§push(_loc1_);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(§§pop() - this.§<,§);
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc2_:* = §§pop();
                     if(!(_loc4_ && this))
                     {
                        this.§<,§ = _loc1_;
                        addr348:
                        this.§!H§.advanceTime(_loc2_);
                        this.§9a§.advanceTime(_loc2_);
                        this.§'l§.advanceTime(_loc2_);
                        addr326:
                        addr354:
                        addr334:
                        if(_loc3_)
                        {
                           addr313:
                           this.§!_§.§+l§(this.§!H§.stageWidth,this.§!H§.stageHeight);
                           addr303:
                           this.§!_§.clear(this.§<S§,this.§^!0§,1);
                           addr294:
                           this.§!_§.§0,§(this.§<S§,this.§%"§);
                           addr309:
                           addr299:
                           addr320:
                           §§push(this.§!H§);
                           if(!_loc4_)
                           {
                              §§pop().render(this.§!_§,1);
                              addr286:
                              if(!_loc4_)
                              {
                                 if(_loc3_)
                                 {
                                    addr259:
                                    §§push(this.§!_§);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          §§pop().§9,§();
                                          addr274:
                                          if(_loc3_)
                                          {
                                             if(this.§'!W§ != null)
                                             {
                                                addr237:
                                                if(_loc3_)
                                                {
                                                   this.§'!W§();
                                                   addr241:
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(_loc3_ || _loc1_)
                                                      {
                                                         this.§'!W§ = null;
                                                         addr220:
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  addr210:
                                                                  this.§!_§.finishRendering(this.§<S§);
                                                                  addr213:
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(this.§!_§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              §§pop().§4!!§();
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 return;
                                                                              }
                                                                              §§goto(addr213);
                                                                           }
                                                                           §§goto(addr294);
                                                                        }
                                                                        §§goto(addr259);
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                                  §§goto(addr237);
                                                                  addr207:
                                                               }
                                                               §§goto(addr326);
                                                            }
                                                            §§goto(addr286);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§goto(addr309);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr299);
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr320);
                                       }
                                       §§goto(addr313);
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr354);
                              }
                              §§goto(addr334);
                           }
                           §§goto(addr348);
                        }
                        addr350:
                        §§goto(addr350);
                     }
                     §§goto(addr313);
                  }
               }
               addr140:
               return;
            }
         }
         §§goto(addr141);
      }
      
      public function set §]F§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!W§ = param1;
         }
      }
      
      private function §5s§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:BitmapData = null;
         if(!(_loc5_ && this))
         {
            this.§1!i§.x = §4#§.x;
            if(!_loc5_)
            {
               this.§1!i§.y = §4#§.y;
            }
         }
         var _loc1_:int = this.§1!i§.numChildren;
         var _loc2_:flash.display.DisplayObject = this.§1!i§.parent;
         if(!(_loc5_ && _loc2_))
         {
            §§push(_loc1_);
            loop0:
            while(true)
            {
               §§push(0);
               addr238:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(!§§pop());
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr249:
                              while(true)
                              {
                                 §§pop();
                                 addr250:
                                 while(true)
                                 {
                                    §§push(_loc2_ == null);
                                 }
                              }
                              addr249:
                           }
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue loop0;
                                 }
                                 loop19:
                                 while(true)
                                 {
                                    this.§8T§.addChild(this.§1!i§);
                                    loop13:
                                    while(true)
                                    {
                                       loop14:
                                       while(true)
                                       {
                                          §§push(this.§!_§);
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             addr133:
                                             §§push(Boolean(§§pop()));
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      while(_loc4_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr222);
                                                         }
                                                      }
                                                      continue loop3;
                                                      addr219:
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(§§pop())
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc4_)
                                                            {
                                                               §§push(this.§!_§);
                                                               if(_loc4_ || _loc2_)
                                                               {
                                                                  §§pop().setCanvasSize(this.§-R§,this.§?f§,§4#§.width / this.§!H§.stageWidth,§4#§.height / this.§!H§.stageHeight);
                                                               }
                                                               addr253:
                                                               _loc3_ = §§pop().canvas;
                                                               if(_loc4_)
                                                               {
                                                                  if(this.§6n§.bitmapData != _loc3_)
                                                                  {
                                                                     addr310:
                                                                     this.§6n§.bitmapData = _loc3_;
                                                                  }
                                                                  addr277:
                                                                  if(this.§8T§.getChildIndex(this.§1!i§) > 0)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           this.§8T§.removeChild(this.§1!i§);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     this.§8T§.addChildAt(this.§1!i§,0);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr277);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     addr294:
                                                                     §§goto(addr294);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr310);
                                                            }
                                                            else
                                                            {
                                                               while(_loc4_)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     this.§8T§.removeChild(this.§1!i§);
                                                                     addr193:
                                                                     while(true)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     addr193:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(_loc2_));
                                                                  addr175:
                                                                  while(true)
                                                                  {
                                                                     break loop15;
                                                                  }
                                                               }
                                                               addr223:
                                                               addr177:
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         if(!(_loc5_ && _loc1_))
                                                         {
                                                            if(false)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§goto(addr253);
                                                            §§push(this.§!_§);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr193);
                                                         }
                                                      }
                                                      return;
                                                      addr74:
                                                   }
                                                   loop16:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || this)
                                                      {
                                                         §§pop();
                                                         continue loop13;
                                                      }
                                                      addr222:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop16;
                                                      }
                                                   }
                                                   §§goto(addr223);
                                                   §§goto(addr175);
                                                }
                                                break;
                                                addr65:
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                if(_loc5_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr219);
                                                         §§push(§§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr249);
                                                      }
                                                   }
                                                   continue loop2;
                                                   addr209:
                                                }
                                                §§goto(addr74);
                                                §§goto(addr250);
                                             }
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop14;
                                                }
                                                §§goto(addr177);
                                                §§goto(addr133);
                                             }
                                             addr133:
                                          }
                                          §§goto(addr253);
                                       }
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr249);
                  }
               }
            }
         }
         §§goto(addr193);
      }
      
      private function §&]§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:TextField = new TextField();
         var _loc3_:TextFormat = new TextFormat("Verdana",12,16777215);
         if(!(_loc4_ && param1))
         {
            _loc3_.align = TextFormatAlign.CENTER;
            while(true)
            {
               _loc2_.defaultTextFormat = _loc3_;
            }
            addr179:
         }
         loop1:
         while(true)
         {
            _loc2_.wordWrap = true;
            while(true)
            {
               _loc2_.width = this.§!H§.stageWidth * 0.75;
               while(_loc5_)
               {
                  _loc2_.autoSize = TextFieldAutoSize.CENTER;
                  while(_loc5_ || _loc3_)
                  {
                     _loc2_.text = param1;
                     loop5:
                     while(!(_loc4_ && _loc2_))
                     {
                        _loc2_.x = (this.§!H§.stageWidth - _loc2_.width) / 2;
                        while(true)
                        {
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           continue loop5;
                           addr68:
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                           _loc2_.backgroundColor = 4456448;
                           do
                           {
                              this.§@Q§.addChild(_loc2_);
                           }
                           while(_loc4_ && param1);
                           
                           addr75:
                           if(!_loc5_)
                           {
                              loop8:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr68);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc2_.background = true;
                                       continue loop8;
                                    }
                                    addr97:
                                 }
                              }
                              continue;
                           }
                           if(_loc5_)
                           {
                              return;
                           }
                           §§goto(addr179);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function § !]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8U§ = this;
         }
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§1!5§ = true;
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
         if(!_loc2_)
         {
            this.§1!5§ = false;
         }
         do
         {
            this.mStage3D.visible = false;
         }
         while(_loc2_ && this);
         
      }
      
      public function §8!L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§%+§ = param1;
         }
      }
      
      private function §[`§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§=!L§ = true;
            loop0:
            while(this.§6n§ == null)
            {
               loop1:
               while(!_loc2_)
               {
                  this.§6n§ = new Bitmap();
                  while(true)
                  {
                     this.§@Q§.addChild(this.§6n§);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr70);
      }
      
      private function §^d§(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§[`§();
            do
            {
               this.mStage3D.dispatchEvent(new flash.events.Event(flash.events.Event.CONTEXT3D_CREATE));
            }
            while(_loc3_ && param1);
            
         }
      }
      
      private function §&!S§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§`!<§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || this)
                  {
                     return;
                  }
               }
               else
               {
                  addr44:
                  var _loc2_:*;
                  §§push((_loc2_ = §§findproperty(§7h§)).§7h§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc3_:* = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     _loc2_.§7h§ = _loc3_;
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§%"§ = §7h§;
                     loop24:
                     while(true)
                     {
                        §§push(this.§!_§);
                        loop25:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§!_§);
                                 addr368:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    addr369:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr366:
                           }
                           loop29:
                           while(true)
                           {
                              §§push(§%[§.§[!e§);
                              loop7:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 if(!(_loc4_ && this))
                                 {
                                    §§push(§§pop());
                                    loop23:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr350:
                                          while(true)
                                          {
                                             §§pop();
                                             addr351:
                                             while(true)
                                             {
                                                §§push(Boolean(this.§<S§));
                                             }
                                          }
                                          addr350:
                                       }
                                       loop6:
                                       while(true)
                                       {
                                          loop3:
                                          for(; !§§pop(); continue loop6)
                                          {
                                             addr314:
                                             this.§ !]§();
                                             this.§2g§();
                                             while(!_loc4_)
                                             {
                                                this.§3e§();
                                                addr298:
                                                if(_loc4_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc4_ && this))
                                                {
                                                   addr307:
                                                   §§push(Boolean(this.§<S§));
                                                   if(_loc5_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            continue loop23;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            loop1:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop2:
                                                               while(_loc5_)
                                                               {
                                                                  §§push(this.§?F§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr350);
                                                                     }
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(!(_loc4_ && this))
                                                                        {
                                                                           this.mStage3DEnabled = false;
                                                                           loop11:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ || this))
                                                                              {
                                                                                 break loop3;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§<S§ = null;
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           if(_loc4_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              this.§[`§();
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 addr196:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!this.§<S§)
                                                                                    {
                                                                                       this.§!_§ = new §3&§();
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(this.§!_§);
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().setCanvasSize(this.§-R§,this.§?f§,§4#§.width / this.§!H§.stageWidth,§4#§.height / this.§!H§.stageHeight);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§!_§);
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc5_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            §§pop().clear(null,this.§^!0§);
                                                                                                            loop18:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ || _loc2_))
                                                                                                                     {
                                                                                                                        return;
                                                                                                                        addr326:
                                                                                                                     }
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§'l§.§^F§ = this.§-W§;
                                                                                                                        while(_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              dispatchEvent(new starling.events.Event(starling.events.Event.CONTEXT3D_CREATE));
                                                                                                                              if(_loc5_ || param1)
                                                                                                                              {
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr200:
                                                                                                                           while(!_loc4_)
                                                                                                                           {
                                                                                                                              this.§!_§ = new §2^§();
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop15;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                                  §§goto(addr317);
                                                                                                               }
                                                                                                               §§goto(addr206);
                                                                                                            }
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   §§goto(addr368);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr298);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr215);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr200);
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.stop();
                                                                           §§goto(addr326);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                               }
                                                               §§goto(addr351);
                                                            }
                                                            continue;
                                                            addr291:
                                                         }
                                                         §§goto(addr256);
                                                      }
                                                      addr282:
                                                   }
                                                   §§goto(addr291);
                                                }
                                                §§goto(addr366);
                                             }
                                             addr317:
                                             §§goto(addr369);
                                          }
                                          this.§&]§("Fatal error: The application lost the device context!");
                                          §§goto(addr336);
                                       }
                                    }
                                 }
                                 §§goto(addr350);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr275);
               }
               §§goto(addr336);
            }
            §§goto(addr282);
         }
         §§goto(addr44);
      }
      
      public function §,,§(param1:flash.events.Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            this.§ !]§();
         }
         §§push(getTimer() / 1000);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc5_ && this))
         {
            §§push(§§pop() - this.§<,§);
            if(_loc4_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_ || this)
         {
            §§push(this.§1!5§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr131:
                        addr104:
                        while(true)
                        {
                           §§push(_loc3_ > 1);
                           if(_loc4_ || param1)
                           {
                              break;
                           }
                           continue loop5;
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                     }
                     addr130:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.render();
                              addr112:
                              while(true)
                              {
                              }
                           }
                        }
                        §§goto(addr131);
                        addr108:
                     }
                     for(; this.§1!i§; §§goto(addr112))
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           this.§5s§();
                        }
                        if(!_loc4_)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           break;
                        }
                        §§goto(addr108);
                     }
                     return;
                     §§goto(addr104);
                  }
                  continue;
               }
               §§goto(addr130);
            }
         }
         §§goto(addr110);
      }
      
      private function §'t§(param1:flash.events.KeyboardEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§ !]§();
            do
            {
               this.§!H§.dispatchEvent(new starling.events.KeyboardEvent(param1.type,param1.charCode,param1.keyCode,param1.keyLocation,param1.ctrlKey,param1.altKey,param1.shiftKey));
            }
            while(_loc2_);
            
         }
      }
      
      private function setCanvasSize(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(§§pop() / this.§7L§);
            if(!(_loc5_ && this))
            {
               addr35:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(param2);
            if(!(_loc5_ && param2))
            {
               §§push(§§pop() / this.§4!V§);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               if(§%!=§)
               {
                  §§push(this.§!H§);
                  loop0:
                  while(true)
                  {
                     §§push(this.§7L§);
                     addr182:
                     while(true)
                     {
                        §§pop().stageWidth = §§pop();
                        addr183:
                        loop2:
                        while(true)
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§push(this.§!H§);
                              continue loop0;
                           }
                           loop14:
                           while(true)
                           {
                              §§push(this.§!H§);
                              addr194:
                              loop13:
                              while(true)
                              {
                                 §§push(this.§4!V§);
                                 addr196:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§pop().stageHeight = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             this.§-R§ = param1;
                                             loop7:
                                             while(!_loc5_)
                                             {
                                                if(_loc5_ && this)
                                                {
                                                   break loop6;
                                                }
                                                this.§?f§ = param2;
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§!H§);
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop0;
                                                      addr94:
                                                   }
                                                   else
                                                   {
                                                      addr167:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§7L§);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc5_)
                                                      {
                                                         addr227:
                                                         §§push(§§pop() * §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                         }
                                                         addr227:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr229:
                                                         while(true)
                                                         {
                                                            §§pop().stageWidth = §§pop();
                                                            continue loop14;
                                                         }
                                                      }
                                                      addr228:
                                                   }
                                                   §§goto(addr227);
                                                }
                                             }
                                             continue loop5;
                                          }
                                          addr202:
                                          while(true)
                                          {
                                             §§goto(addr204);
                                          }
                                       }
                                    }
                                    §§goto(addr229);
                                    continue loop13;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr202);
         }
         §§goto(addr35);
      }
      
      public function §+!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.setCanvasSize(this.§7L§,this.§4!V§);
         }
      }
      
      private function §#!f§(param1:flash.events.Event) : void
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
            §§push(this.§1!5§);
            if(!(_loc10_ && _loc2_))
            {
               §§push(!§§pop());
               if(_loc9_)
               {
                  addr50:
                  if(!§§pop())
                  {
                     if(_loc9_ || _loc2_)
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(this.§%+§);
                           if(_loc9_)
                           {
                              §§push(!§§pop());
                              if(!(_loc10_ && _loc3_))
                              {
                                 addr74:
                                 if(§§pop())
                                 {
                                    if(_loc9_ || _loc3_)
                                    {
                                       return;
                                    }
                                    addr94:
                                    §§push(Number((_loc6_ = param1 as MouseEvent).stageX));
                                    if(!(_loc10_ && this))
                                    {
                                       _loc2_ = §§pop();
                                       if(!_loc10_)
                                       {
                                          addr173:
                                          _loc3_ = _loc6_.stageY;
                                          while(true)
                                          {
                                             _loc4_ = 0;
                                          }
                                          addr174:
                                       }
                                       loop30:
                                       while(true)
                                       {
                                          while(param1.type != MouseEvent.MOUSE_DOWN)
                                          {
                                             if(param1.type == MouseEvent.MOUSE_UP)
                                             {
                                                if(!_loc10_)
                                                {
                                                   this.§ !V§ = false;
                                                }
                                                if(!(_loc10_ && this))
                                                {
                                                   if(_loc10_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc9_ || _loc2_)
                                                   {
                                                      if(false)
                                                      {
                                                         continue;
                                                      }
                                                      addr175:
                                                      addr209:
                                                      var _loc8_:* = param1.type;
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         if(TouchEvent.TOUCH_BEGIN === _loc8_)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§push(0);
                                                               if(_loc10_ && this)
                                                               {
                                                                  addr427:
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr439:
                                                               §§push(3);
                                                               if(_loc10_ && param1)
                                                               {
                                                                  addr465:
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(TouchEvent.TOUCH_MOVE === _loc8_)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(1);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr470:
                                                                     switch(§§pop())
                                                                     {
                                                                        case 0:
                                                                           §§push(§?!E§.§^2§);
                                                                           if(_loc9_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc10_ && this))
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc9_ || _loc2_)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() - §4#§.y);
                                                                                             if(_loc9_ || _loc3_)
                                                                                             {
                                                                                                addr535:
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   addr543:
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            §§goto(addr549);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && this))
                                                                                                         {
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                         addr683:
                                                                                                         addr644:
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            addr574:
                                                                                                            loop28:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() == §?!E§.§^2§);
                                                                                                               if(!(_loc10_ && this))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                     {
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           addr549:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr551:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §4#§.x);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          addr561:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc2_ = §§pop();
                                                                                                                                             addr562:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   break loop13;
                                                                                                                                                }
                                                                                                                                                loop10:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   addr608:
                                                                                                                                                   addr647:
                                                                                                                                                   while(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() >= §4#§.bottom);
                                                                                                                                                      if(!(_loc10_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         loop14:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     continue loop15;
                                                                                                                                                                  }
                                                                                                                                                                  loop12:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              continue loop13;
                                                                                                                                                                           }
                                                                                                                                                                           addr688:
                                                                                                                                                                           addr688:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              addr689:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop12;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr669:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    break loop14;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     addr651:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        addr652:
                                                                                                                                                                        while(_loc9_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop14;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr689);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     break loop1;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr652);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr672:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop();
                                                                                                                                                                  break loop13;
                                                                                                                                                               }
                                                                                                                                                               addr672:
                                                                                                                                                            }
                                                                                                                                                            addr650:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr651);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr627);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr650);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          addr561:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                          }
                                                                                                                                          addr685:
                                                                                                                                       }
                                                                                                                                       §§goto(addr688);
                                                                                                                                    }
                                                                                                                                    §§goto(addr608);
                                                                                                                                 }
                                                                                                                                 §§goto(addr561);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  §§goto(addr660);
                                                                                                               }
                                                                                                               §§goto(addr627);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr647);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr549);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      §§goto(addr690);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() >= §4#§.right);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§goto(addr669);
                                                                                                   }
                                                                                                   §§goto(addr672);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr543);
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§goto(addr561);
                                                                                    }
                                                                                    §§goto(addr535);
                                                                                 }
                                                                                 return;
                                                                                 addr571:
                                                                              }
                                                                           }
                                                                           addr364:
                                                                           _loc5_ = §§pop();
                                                                           break;
                                                                           addr365:
                                                                        case 1:
                                                                           addr371:
                                                                           _loc5_ = §?!E§.§-!"§;
                                                                           addr370:
                                                                           if(!_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr571);
                                                                        case 2:
                                                                           §§push(§?!E§.§'s§);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop());
                                                                           }
                                                                           §§goto(addr364);
                                                                        case 3:
                                                                           §§goto(addr352);
                                                                        case 4:
                                                                           addr320:
                                                                           §§push(§?!E§.§'s§);
                                                                           if(_loc9_)
                                                                           {
                                                                              addr323:
                                                                              §§push(§§pop());
                                                                              if(_loc9_)
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr365);
                                                                                 }
                                                                                 §§goto(addr683);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr364);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr370);
                                                                           }
                                                                           §§goto(addr571);
                                                                        case 5:
                                                                           §§push(this.§ !V§);
                                                                           if(!_loc10_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    §§push(§?!E§.§-!"§);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_ || _loc2_)
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr293:
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc9_ || _loc2_)
                                                                                                   {
                                                                                                      addr301:
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr315);
                                                                                                            }
                                                                                                            §§goto(addr644);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr352:
                                                                                                            _loc5_ = §?!E§.§^2§;
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               addr315:
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr320);
                                                                                                      §§goto(addr571);
                                                                                                   }
                                                                                                   §§goto(addr574);
                                                                                                }
                                                                                                §§goto(addr371);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr352);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr290:
                                                                                       §§push(§§pop());
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr293);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr301);
                                                                                 }
                                                                                 §§goto(addr548);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(§?!E§.§4R§);
                                                                                 if(_loc9_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr290);
                                                                                 }
                                                                              }
                                                                              §§goto(addr574);
                                                                           }
                                                                           §§goto(addr688);
                                                                     }
                                                                     §§goto(addr685);
                                                                     §§push(_loc2_);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr465);
                                                                  }
                                                               }
                                                            }
                                                            else if(TouchEvent.TOUCH_END === _loc8_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  addr424:
                                                                  §§push(2);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr427);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr457:
                                                                     §§goto(addr470);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr439);
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_DOWN === _loc8_)
                                                            {
                                                               if(_loc9_ || _loc2_)
                                                               {
                                                                  §§goto(addr439);
                                                               }
                                                            }
                                                            else if(MouseEvent.MOUSE_UP === _loc8_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr457);
                                                                  }
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
                                                      §§goto(addr424);
                                                      addr175:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr174);
                                                   }
                                                }
                                                addr158:
                                                if(!(_loc10_ && param1))
                                                {
                                                   break loop30;
                                                }
                                                continue loop30;
                                             }
                                             §§goto(addr175);
                                          }
                                          this.§ !V§ = true;
                                          §§goto(addr158);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    addr90:
                                    §§push(param1 is MouseEvent);
                                 }
                                 §§goto(addr94);
                              }
                           }
                           if(§§pop())
                           {
                              §§goto(addr94);
                           }
                           else
                           {
                              §§push(Number((_loc7_ = param1 as TouchEvent).stageX));
                              if(!_loc10_)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc9_ || _loc2_)
                                 {
                                    addr197:
                                    _loc3_ = _loc7_.stageY;
                                    if(_loc10_ && this)
                                    {
                                    }
                                    §§goto(addr209);
                                 }
                                 _loc4_ = _loc7_.touchPointID;
                                 §§goto(addr175);
                              }
                              §§goto(addr197);
                           }
                        }
                        §§goto(addr90);
                     }
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr50);
         }
         §§goto(addr94);
      }
      
      private function get §'<§() : Array
      {
         return [MouseEvent.MOUSE_DOWN,MouseEvent.MOUSE_MOVE,MouseEvent.MOUSE_UP];
      }
      
      public function §9!E§(param1:String, param2:ByteArray, param3:ByteArray) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Program3D = null;
         if(_loc5_ || param2)
         {
            if(param1 in this.§3!N§)
            {
               if(!(_loc6_ && this))
               {
                  throw new Error("Another program with this name is already registered");
               }
            }
         }
         if(this.§<S§ != null)
         {
            (_loc4_ = this.§<S§.createProgram()).upload(param2,param3);
            if(_loc5_)
            {
               this.§3!N§[param1] = _loc4_;
            }
         }
      }
      
      public function §9!X§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Program3D = this.§-!c§(param1);
         if(!_loc4_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  addr61:
                  _loc2_.dispose();
               }
               do
               {
                  delete this.§3!N§[param1];
               }
               while(_loc4_);
               
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function §-!c§(param1:String) : Program3D
      {
         return this.§3!N§[param1] as Program3D;
      }
      
      public function §@a§(param1:String) : Boolean
      {
         return param1 in this.§3!N§;
      }
      
      public function get §9!3§() : Boolean
      {
         return this.§1!5§;
      }
      
      public function get §6+§() : §]-§
      {
         return this.§9a§;
      }
      
      public function get §^F§() : Boolean
      {
         return this.§-W§;
      }
      
      public function set §^F§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§-W§ = param1;
            while(this.§<S§)
            {
               if(!_loc3_)
               {
                  break;
               }
               addr66:
               if(_loc2_ && param1)
               {
                  continue;
               }
               addr62:
               this.§'l§.§^F§ = param1;
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function get enableErrorChecking() : Boolean
      {
         return this.§;y§;
      }
      
      public function set enableErrorChecking(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;y§ = param1;
         }
         while(this.§<S§)
         {
            if(!_loc2_)
            {
               break;
            }
            addr60:
            if(_loc3_ && _loc3_)
            {
               continue;
            }
            this.§<S§.enableErrorChecking = param1;
            §§goto(addr60);
         }
      }
      
      public function get §&G§() : int
      {
         return this.§,!8§;
      }
      
      public function set §&G§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!8§ = param1;
         }
         do
         {
            §9!R§();
         }
         while(!_loc3_);
         
      }
      
      public function get §@Q§() : Sprite
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:ContextMenu = null;
         if(_loc3_)
         {
            if(this.§1!i§ == null)
            {
               if(!_loc2_)
               {
                  addr28:
                  this.§1!i§ = new Sprite();
               }
               _loc1_ = new ContextMenu();
               if(!(_loc2_ && _loc1_))
               {
                  _loc1_.hideBuiltInItems();
                  loop0:
                  while(true)
                  {
                     addr66:
                     while(true)
                     {
                        this.§1!i§.contextMenu = _loc1_;
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  this.§5s§();
                  if(_loc3_ || this)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr71);
               }
            }
            return this.§1!i§;
         }
         §§goto(addr28);
      }
      
      public function get stage() : §^a§.Stage
      {
         return this.§!H§;
      }
      
      public function get stage3D() : Stage3D
      {
         return this.mStage3D;
      }
      
      public function get §+@§() : flash.display.Stage
      {
         return this.§8T§;
      }
      
      public function get §[!Q§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=!L§);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
   }
}
